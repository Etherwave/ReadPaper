from django.shortcuts import render
from django.http import HttpResponse
import os
from PIL import Image
import random
import json
from django.http import JsonResponse
from django.shortcuts import redirect
from urllib import parse
from paper.functions.ProjectPaperDefine import *
from paper.functions.funtion import base32decode, base32encode
from paper import settings


# Create your views here.

def Main(request):
    Projects = get_all_Project()
    for i in range(len(Projects)):
        if len(Projects[i].Abstract)>300:
            Projects[i].Abstract= Projects[i].Abstract[:300]+"......"
    context = {"Projects":Projects}
    return render(request, "Main.html", context=context)

def Project(request, Project_Name_encode=""):
    if exist_Project(Project_Name_encode)==False:
        redirect('/')
    project = get_Project(Project_Name_encode)
    papers = get_Project_sub_all_Simple_Paper(Project_Name_encode)
    md = markdown.Markdown(
        extensions=[
            # 包含 缩写、表格等常用扩展
            'markdown.extensions.extra',
            # 语法高亮扩展
            'markdown.extensions.codehilite',
            # 目录
            'markdown.extensions.toc',
        ],
    )
    project.Abstract = md.convert(project.Abstract)
    context = {"project": project, "papers": papers, "toc": md.toc}
    return render(request, "Project.html", context)

def Paper(request, Project_Name_encode, Paper_Name_encode):
    if exist_Paper(Project_Name_encode, Paper_Name_encode) == False:
        redirect('/')
    paper = get_Paper(Project_Name_encode, Paper_Name_encode)
    md = markdown.Markdown(
        extensions=[
            # 包含 缩写、表格等常用扩展
            'markdown.extensions.extra',
            # 语法高亮扩展
            'markdown.extensions.codehilite',
            # 目录
            'markdown.extensions.toc',
        ],
    )
    paper.Abstract = md.convert(paper.Abstract)
    context = {"paper": paper, "toc": md.toc}
    return render(request, "Paper.html", context)

def EditeProject(request, Project_Name_encode=""):
    Project_Name = base32decode(Project_Name_encode)
    # 获取用户访问该页面之前的位置。
    try:
        referer = str(request.META['HTTP_REFERER'])
    except:
        referer = ''
    last_url_splited = referer.split("/")
    check_project = last_url_splited[-3]
    if check_project=="Project":
        old_Project_Name_encode = parse.unquote(last_url_splited[-2])
        old_Project_Name = base32decode(parse.unquote(old_Project_Name_encode))
    else:
        old_Project_Name_encode = ""
        old_Project_Name = ""
    # 如果是以POST方法提交过来的那么认为是要创建文章或者修改文章，处理请求，
    # 否则认为是发出的创建新文章或者修改文章的请求，渲染对应的页面就好了。
    if request.method == 'POST':
        Project_Name = request.POST['Project_Name']
        Project_Name_encode = base32encode(Project_Name)
        Abstract = request.POST['Abstract']
        if check_project == "EditeProject":
            old_Project_Name_encode = parse.unquote(last_url_splited[-2])
            old_Project_Name = base32decode(old_Project_Name_encode)
        else:
            old_Project_Name_encode = ""
            old_Project_Name = ""
        try:
            delete_submit = request.POST['delete_submit']
        except:
            delete_submit = ''
        context = {}
        # 如果是点击的删除文章，那么删除文章，并返回editer.html
        if delete_submit == '删除这个项目':
            delete_Project(old_Project_Name_encode)
            # return render(request, "editer/editer.html", context)
            return redirect('/')
        # 如果没有输入标题或类型，那么报错，并把上传的东西返回回去，
        # 此时并没有返回write_method 会导致删除按钮不出现
        if len(Project_Name) == 0:
            add_context = {'message': '请输入项目名称！',
                           'Project_Name': Project_Name,
                           'Abstract': Abstract}
            context.update(add_context)
            return render(request, "ProjectEditer/ProjectEditer.html", context)
        # 创建新项目，或者修改老项目
        # 如果是创建新项目，那么只需要创建新项目，
        # 如果是修改老项目，那么先删除老项目，再创建新的项目，
        # 判断是创建新项目还是修改老项目，之前靠request.session判断老出问题，现在使用referer
        if len(old_Project_Name_encode) != 0:
            # 如果都不等于零，说明referer正确，用户是从某个阅读页面过来的，那么认为是在修改老文章
            update_Project(old_Project_Name_encode, Project_Name_encode, base32encode(Abstract))
        else:
            create_a_Project(Project_Name_encode, base32encode(Abstract))
        new_Project_Url = "/Project/{0}/".format(base32encode(Project_Name))
        add_context = {'new_Project_Url': new_Project_Url, 'new_Project_Name': Project_Name}
        context.update(add_context)
        return render(request, "ProjectEditer/ProjectEditer.html", context)
    context = {}
    # 我们使用write_method 这个key来区分创建新项目和编辑老项目
    write_method_context = {'write_method': 'edite_new_project'}
    # 如果不是post方法，并且提交了项目名称，那么一般是从阅读那里过来要修改文章。
    # 但是我们需要判断这个人是不是通过点击过来的，如果他在阅读另一篇，而自己手动输入url到这里，
    # 那么我们的逻辑中会在他提交修改的文章时，删除它之前读的那篇文章，而不是他修改的那篇文章
    # 所以我们加一个判断，看看他是不是从正常位置过来的
    if exist_Project(Project_Name_encode) == True and Project_Name == old_Project_Name:
        write_method_context['write_method'] = 'edit_old_project'
        add_context = {'Project_Name': Project_Name,
                       'Abstract': get_Project_Abstract(Project_Name_encode)}
        context.update(add_context)
    context.update(write_method_context)
    return render(request, "ProjectEditer/ProjectEditer.html", context)

def EditePaper(request, Project_Name_encode="", Paper_Name_encode=""):
    # 创建(ProjectN)，修改(ProjectPaper)，删除(ProjectPaper)
    Project_Name = base32decode(Project_Name_encode)
    Paper_Name = base32decode(Paper_Name_encode)
    # 如果是以POST方法提交过来的那么认为是要创建文章或者修改文章，处理请求，
    # 否则认为是发出的创建新文章或者修改文章的请求，渲染对应的页面就好了。
    if request.method == 'POST':
        Paper_Name = request.POST['Paper_Name']
        Paper_Name_encode = base32encode(Paper_Name)
        Project_Name = request.POST['Project_Name']
        Project_Name_encode = base32encode(Project_Name)
        Abstract = request.POST['Abstract']
        # 如果是删除老论文，那么提交过来的数据不算数，需要获取原来的位置
        # 获取用户访问该页面之前的位置。
        try:
            referer = str(request.META['HTTP_REFERER'])
        except:
            referer = ''
        last_url_splited = referer.split("/")
        check_project = last_url_splited[-4]
        if check_project == "EditePaper":
            old_Project_Name_encode = parse.unquote(last_url_splited[-3])
            old_Project_Name = base32decode(old_Project_Name_encode)
            old_Paper_Name_encode = parse.unquote(last_url_splited[-2])
            old_Paper_Name = base32decode(old_Paper_Name_encode)
        else:
            old_Project_Name_encode = ""
            old_Project_Name = ""
            old_Paper_Name_encode = ""
            old_Paper_Name = ""
        try:
            delete_submit = request.POST['delete_submit']
        except:
            delete_submit = ''
        context = {"Project_Name": Project_Name}
        # 如果是点击的删除文章，那么删除文章，并返回editer.html
        if delete_submit == '删除这篇论文':
            delete_Paper(old_Project_Name_encode, old_Paper_Name_encode)
            # return render(request, "editer/editer.html", context)
            return redirect('/Project/{0}/'.format(old_Project_Name_encode))
        # 如果没有输入标题或类型，那么报错，并把上传的东西返回回去，
        # 此时并没有返回write_method 会导致删除按钮不出现
        if len(Paper_Name) == 0:
            add_context = {'message': '请输入论文名称！',
                           'Project_Name': Project_Name,
                           'Paper_Name': Paper_Name,
                           'Abstract': Abstract}
            context.update(add_context)
            return render(request, "PaperEditer/PaperEditer.html", context)
        # 创建新项目，或者修改老项目
        # 如果是创建新项目，那么只需要创建新项目，
        # 如果是修改老项目，那么先删除老项目，再创建新的项目，
        # 判断是创建新项目还是修改老项目，之前靠request.session判断老出问题，现在使用referer
        if len(old_Paper_Name_encode) != 0:
            # 如果都不等于零，说明referer正确，用户是从某个阅读页面过来的，那么认为是在修改老文章
            update_Paper(Project_Name_encode, old_Paper_Name_encode,
                         Paper_Name_encode, base32encode(Abstract))
        else:
            create_a_Paper(Project_Name_encode, Paper_Name_encode, base32encode(Abstract))
        new_Paper_Url = "/Paper/{0}/{1}/".format(Project_Name_encode, Paper_Name_encode)
        add_context = {'new_Paper_Url': new_Paper_Url, 'new_Paper_Name': Paper_Name}
        context.update(add_context)
        return render(request, "PaperEditer/PaperEditer.html", context)
    context = {}
    # 我们使用write_method 这个key来区分创建新项目和编辑老项目
    write_method_context = {'write_method': 'edite_new_Paper'}
    # 如果不是post方法，并且提交了项目名称，那么一般是从阅读那里过来要修改文章。
    # 但是我们需要判断这个人是不是通过点击过来的，如果他在阅读另一篇，而自己手动输入url到这里，
    # 那么我们的逻辑中会在他提交修改的文章时，删除它之前读的那篇文章，而不是他修改的那篇文章
    # 所以我们加一个判断，看看他是不是从正常位置过来的
    # 如果有Project_Name和Paper_Name说明是修改老论文，否则是创建新论文
    if exist_Paper(Project_Name_encode, Paper_Name_encode) == True:
        write_method_context['write_method'] = 'edit_old_paper'
        add_context = {
            'Project_Name': Project_Name,
            'Paper_Name': Paper_Name,
            'Abstract': get_Paper_Abstract(Project_Name_encode, Paper_Name_encode)}
        context.update(add_context)
    else:
        #创建新论文，我们需要知道是为哪个项目创建的
        try:
            referer = str(request.META['HTTP_REFERER'])
        except:
            referer = ''
        last_url_splited = referer.split("/")
        check_project = last_url_splited[-3]
        if check_project == "Project":
            try:
                old_Project_Name_encode = parse.unquote(last_url_splited[-2])
            except:
                old_Project_Name_encode = ""
            old_Project_Name = base32decode(old_Project_Name_encode)
        else:
            old_Project_Name_encode = ""
            old_Project_Name = ""
        add_context = {"Project_Name": old_Project_Name}
        context.update(add_context)
    context.update(write_method_context)
    return render(request, "PaperEditer/PaperEditer.html", context)

# 写博客上传图片
def Paper_Img_Upload(request):
    if request.method == "POST":
        data = request.FILES['editormd-image-file']
        img = Image.open(data)
        # width = img.width
        # height = img.height
        # rate = 1.0  # 压缩率
        #
        # # 根据图像大小设置压缩率
        # if width >= 2000 or height >= 2000:
        #     rate = 0.3
        # elif width >= 1000 or height >= 1000:
        #     rate = 0.5
        # elif width >= 500 or height >= 500:
        #     rate = 0.9
        #
        # width = int(width * rate)  # 新的宽
        # height = int(height * rate)  # 新的高
        #
        # img.thumbnail((width, height), Image.ANTIALIAS)  # 生成缩略图

        name = settings.BASE_DIR + '/static/uploads/' + data.name
        while os.path.exists(name):
            file, ext = os.path.splitext(data.name)
            file = file + str(random.randint(1, 1000))
            data.name = file + ext
            name = settings.BASE_DIR + '/static/uploads/' + data.name
        try:
            img.save(name)
            url = '/static'+name.split('static')[-1]
            # result = {'success': 1, 'message': '成功', 'url': url}
            # return HttpResponse(json.dumps(result, ensure_ascii=False), content_type="application/json,charset=utf-8")
            return JsonResponse({'success': 1, 'message': '成功', 'url': url})
        except Exception as e:
            return JsonResponse({'success': 0, 'message': '上传失败'})

    return render(request, "main.html")

def page_not_found(request, exception=''):
    return render(request, "404.html")