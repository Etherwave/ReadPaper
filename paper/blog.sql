-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: paper
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `paper`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `paper` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `paper`;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper` (
  `Project_Name` char(255) NOT NULL,
  `Paper_Name` char(255) NOT NULL,
  `Abstract` text,
  PRIMARY KEY (`Paper_Name`),
  KEY `Project_Name` (`Project_Name`),
  CONSTRAINT `paper_ibfk_1` FOREIGN KEY (`Project_Name`) REFERENCES `project` (`Project_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES ('42IJZZ5UULT25F7GWOKQ====','5C62N2F6Q3ULPL7FX2CORJ4E4WEJFZ42QTTJLMHFVWTONKFB4WPIXZMPRLT25F7GWOK6PO545C73A===','46N25ZMJRXUL3JXIX2DORN5P4W7IJ2FHQTSYREXJS6XOTIUY46NIJZ5ASTT2TNXGVCQ6LHUL4S4LX2FGQHSYRBXEXC5CUKXHXWI6PO444WN35ZVIUHSZ5CZKFLSZFDBKFLTJLMHFVWTONKFB4WPIWKRK4S4KJZ5RXPX3ZDXHXWI6PO444WN35ZVIUHSZ5C7FV246NGET46IIN2FHUPX3ZDHHTO2ORJ4C42AKPZN4XLX3ZDHEXWDOLD4C42K3BZNOXHT3VM7IQO66LCU34S6Y5354RTTLDAXIU6R6NFVZ42ZZLZNQSHX3ZDXIQCGONFNQ4WW2NZVIUHSZ5C7HQG26NNF342AKP2NLTDX3ZDHJQCNOPFFI42AKPZN4XLX3ZDHFV246TB4P4WSKP354RTTITAHEXOS6PFFI5GAJJZVPSTUL5A7FXG767PEO42OKZZUWQ7UYBCPHSSUONFNQ4WW2NZVIUHSZ5C7FV646RL5F5GL252NCTDUL7G7IUGGOPIEU46U3MDIKBUFOTF5O5GRJRZ42QTT25AHFRWK6ND4P5C73B354TLSLRAHEXCVOTBMN5GAIDZFYVXS37A7GWS7OLB525C62N2F6Q3X3ZDHFSCI6LJE24S4KVZNOULTIRN7HQK46TAEB5C2KP354RTTYJNXFSCHORPNG5C7IN2F7STSZXHXFRCYORL5F5GCY32MAQHSLRLPFX6B67PEO5CTIDZVRQLSZBCHHSCDOLLUJ42HJF2FBRTUL3JXIW6X6POV7566IZZV3UHULNM7FSCCOLLVC42ELPZ4CXHUZZAHGWGBO7PEOBUFA2CXFW6ZOPH5F42O2DZF3W3X3ZGQNBLX3ZEPPXSE6LLVC42ELPZ4CXHTJLMHEXC5O7PMO566IZZVPR7SLRKXHQK46PGUE466JNZMPW7SLROXPXWE67PEM5GOIB2FUU7UYPD7EXC5O7PMS566YT354RDX33CJA566J3354SHX3ZDHPXSJO7PEM4KAKN354RTX33DXPXSE67PE3BUFO7PES566IT2MFRXUYBAPEXCW6LP4D42F2LZU4RHTZVBHIXWTORPUG42K3BZFYXLX33DPPXSGONL4P5C7IN2F5U3TZVBHHXSLOLD5X4S4LV355RPX3ZDHIXW66TB4N5GDY7ZFYXLX33F7PXWF67PEI566YWIHPXSO67PER566IZ354SLX3ZDHCQCTO7PEM566Y3354RHX3ZGYNBLX3ZE7PXSE6TBMN5GAIDZFYVXS37A7FRCYOLEEE4WXKFZUIW7TYFOPHTKCORNFZ46KKRZMPRLSZBBHFV2RONCFX46BLTZFZRPUZPNHHTKCORNFZ46KKRZFYXLX33A7PXWE67PMK566IR355REQO7PE5566JD354RTX3ZEXPXSGOFAFG566IZ355RYQO7PEN566JD354TPX33CXPXSO67PER566IZ354SLX3ZDHCQCTO7PEM566Y5354TPX33CJA566JZ355RLX3ZDHPXWESB354TXX3ZEBA5CQ2RZ5EXLUYLDPJQCA6JOFN4W7YH354RHX3ZDQNBIGQVZ52U3TJ3H7GTWQ6JO5W566JUDIK566JD354RHTK7D7IX2DORPNG42EYB2FDQXUL7EHHTKCORNFH46E2TZUAXPUYPDPJQ6H6JOEN4W7JP2FWQXUL7B7IQ6VOROVL42EYB2EDXXTITP7FR6L6PGUE42OIBZNEU7UL3PPJQ6G6TB4P566JWDIK566JF354RHTK7D7EXCVOLLVC42ELPZ4CXHSY7KXIQO66PFFR4S4IB2F6Q3UL3JXJQCA6RNFH566JWDIK566JH354RHTK7D7GTWQ6RN5P4W7IJZ42QTULLN7HQK46LEUM465YRZ4CXHUYHPPFX6C6TIN342MK72MFRXUYBAPEXCW6LP4D566I4DIKBUFA2CXHTOXOLCMN566IZ2F5U3UL5BXIW6X6LPUE5CTYJZMISLUZPLXJUKMOPGUE46XJPZVTSXTIBO7EXWJ6LD5P4WEINZFYXLT3FPXHUGXOPLUX42ZZLZMSRTSZBL7FR6I6LPEP46XJPZVTSXSLRJHFUST6PMN3566I5Z5SX3T2DLXHV2L6NM4V4S4LX2FGQHTJRL7FRCU6PFFI42K3BZNNU3TJNOPGWOK6NMMC5CT2H354TPSZBL7FR6I6LPEP46XJPZVTSXSLRO7IU2A6NGFP4WEKTZ4UVDSLRAHEXKN6NHNB4S53N354RTSL3P7FX2L6NMMC5CT2HZ42QTUL7B7HVCF6JOEN42LK3ZMQSHTZ3AHGTSAOJPEY5CT2HZ42QTTJNOPFSCI6RP435CQYZ354RYGQUDIK566JH354R3X3ZEPDQCAOPMV646Q25Z5OS7TLHFPDQCAOPMV646Q25Z5OS7TLHFPEXC56RJUB5C7ZBZ4UVDT3VP7GQCT6RJ4E4WEJFY4AQHUZ3HXHXK76NAFH5CTYJZMISLRYBAPGSW2ONFNQ5CTYJZMISLT23CPGSWYOLLNG5CTYJZMISLTIVAHGTSX6NHNF42HY72F7WDT3HO7HXOP6PGUE42K3B2MHR7SYLM7HWO567PEM42YYFZMHXLTJZAHEXSMOPLMWBUFOPFNF566I5ZNOQPSYZBPGROWO7PE24WEINZU6TXS25GXHSWGONM4V566IZZMJWLS3TM7JTWRONM4V566IZZ55SHT3XHHGWWA6PLUX42ZZL354RTSYVKHGQCA6RJ4E4WEJFZ5OS7TLHFPPXS567PEV566L3Z5NRHX3ZDQNBLT3FPXHUGXOPLUX42ZZLZN4SXSYLJPEXCS6NIF446NIJZUVWDS23JXGS246NM4V5CT2HZMGWPUZPLXJUKMO7PEM4S4IB2EIVTUYBAXHSSUOJOUO5CT2HZMGWPT3XE7GT2CONOEF42M3BY4AQHUL5OPHSWGONOEF42SZVY4AQHSZBBHFQWB6PNFA4S4YX2MXWTTZVBHFQWZ6PM5342MI5Z5BV3TZVBHJS6XOTIUY566I5Z4UWHSLVDXFXSK6LBNFBUFOJOFF42QLZZ42QTTJLMHFVWTONFVZ42ZZL354RTUKPI7FQ2Z6TF5O5GRJRZUXW3TITAHEXKT6PFE746NIJ2FOUHT25F7JQ6H6JPE25GNI7Z45QDUZPLXJUKMORJ4E42UKDZ42QTS2FHXFUST6LEMI42GIPZUVWDS2FHXJSW767PEM4W6JLZMPSHTIZB7GSWYOPCEG46BLR354RTSLXDXIQCGONF5A42ZZLZN2STS27OPFUST6RJ4E42UKD2F5U3UL5BQNBLULPL7FX2CORJ4E4WEJF2MXV3U2FGHPXSHOLEEM42L3N354RTS25HXJTGC6JOFN46NIJ2FOXDS2JGXJS6XOTIUY4W7IBZN6QDSLRDPFQW36NHEJ424ILZUZWDTZVBHHXOJ6NHUE4WJIZZFYUXTKBPHHTKCONHEA4S6JR2FHUPX3ZDHFXKKOPFFI46ZL5Z5BV3T25F7GWOK6LPUI5GNL52F6X3SYRMHHSCDONA5T42KYRZU6TTX3ZDHFTOQONLNE5CX2LZ5OS4GQVZVTSXSZZKHFV2POTGMF4S4K3ZN2STTZJKHGTSE6TGMQ566I4DIK566JH354R3X3ZEXDQCAOLEFP4WHZDZN4R7T25F7GWOK6HAEA4WIK7ZMPSHS3ZD7HV2L6NM4V4WH27ZF3UXSYRBXEXC5OJPFA465Z7ZMQV7SY7EPFXSH6PLUX42ZZLZMSRTTY5MHEXOR6LEFP4WHZDZN4R7T25F7GWOK6JOFE46Y3X354R3SLZIHHXOP6LEFP4WHZDZN4R7T25F7GWOK6LHFI4W6IBZNHRPTJPNXJU2LOLBMI46KJ7ZUISDSYRHPFU6F6RN5PBUFOLPUE566IZZMGRXSLXJPIW6X6LPUE5GL3JZ42QTUIVAXHXKTOLAF4566IRZMQRDS3TNXEXO56JOFE42O2D2FXV7S35BHGRGAORCUC46OIDZ42QTTIREHGTSWOTB4P566ITZFYXLSZBL7FR6I6TB4P42O2LZFYRXTJNLPFV646PFE742EJBZ42QTULPL7FX2CORP435CQYZZF4TDSYZFXPXSGOJO4O5CAIZZUJX3SYRMHGTSAOJPEY5CT2H354R3SLZIHHXOPQ2CXFSCX6LD4R4W6I7Z5OS7TLHFPHV2AOLDMV42MJHZUHQLX3ZDHEXWDONHEJ42L3NZN6S7SYPOXGTWS6PGUE5CT2HZ42QTULJKHJQ6H6NL4U5C7IHZNXV3X3ZDHHR2YOJO5D4WIK7ZMPSHS3ZD7HV2L6NM4V42YYFZMHXLTZVBHIU6R6PGUE5C2KR2MHR7UL5A7FUW667PEM4W5JJZ4UVDTK7FHIX2B6LJE2566I5Z43V3SYTDPPXSGOPDVQ4S52HZMQV7SY7EINBLS3ZD7HV2L6NM4V4WGILZULVTTKRIPGROP6TAEA46A2XZ5OS7TLHFPDQCA6PJUB4W7YZZUQTTT3JIXHV2L6NM4V4OAID2MBS7SLZIHHV2L6NM4V4OAID2E2QHT35JHHV2L6NM4V46WYT354RYGQVZVIUHTIXH7JQCAOPANL46XJPZVTSXX3ZCHPXSZ67PMJ566Y3355SXX33DHPXWA67PMU566YL355QQQO7PFB566Y5355R3X33BPPXWA67PMM566YT355R3X33B7PXSGO7PFT566KD354RHTJZAHGS6U6PFFR566K3355QXX33FHPXWJO7PMP566ZB355R7X33DHPXWE67PMTEDT23CPEXKHO7PER566JT354SXX3ZEZA4W43JZUPSDSYPOXPXSGONGFP4WHZPZMIWDTYTKPHSCDOJOFN4WX3TZM3XLSL3E7HRGU6RNFI5C7ZX2FBRTUYBAHHQGV6LJEE46IIN2F7Q7T2RCYNBLTZVBHFSCX6LD4R5CAIZZN6S7SYRMHHTKCO7PEO4WYINZM3XLSL3E7FQ2C6TA5I46ZJFZNNSDTZZC7FQGNOJOEA4S4KVZ5TXPT3XH7PXSGOLL5Z4WN3VZF5SPUYBAHHQGV6NF5W566IZZFYXLSL3P7FQ2C6TA5I46ZJFZNNSDUIHPPFUSP6LBMF4WEIN2EHVLTZJMPIX6IOLCVI566IZZMFRDT3XGPFTO5OJPMT4WFKBZVYVHX3ZDHFX2L6LCFQ4S4IBZFYVIGQV2F6QPU2XGHHTKCOLCE54WTYXZVYVHS3VJXPXSHOPBFW4WII52MASDTK3JPFV646LBNW5GMY3ZVYVHX3ZDHIROS6NOFJ4W5KNZFYRPUZTDPHTKCOTAE746HIP2FWWPS2JH7GQWRO7PEM46Z3XZ53T7UL7EPEXS6OLJEE4S5I5Z4DVXSYVG7FVWTOLONT5CQ2DZ4CXHX3ZDHJTKH6PHMA424KTZN2U3TZVBHEXCG6NFVN4S4IX2MZRXX3ZDHHWO56PO474WYIMDIK42OIBZ53RDUL5PXFRCYORB5K5C5KXZ42QTUIHPPJQ6H6NHEA4S6Y5Z4KW3TIBAPPXSHOTAEA46A2X2F7Q7T2RC7HTKCORA555GDY7ZFYR3T3XBHFSCEOJPEY4WGJN2MXV3U2FGHHTKCOPG5O42QIPZMHXXTJLMHHVWE6JO5X566IZZN6V3UKPAXHWKJOLLMQ46FLNZUAQHSLRDXIU6R6PLMJ4S53P354RTT3FEXFVWIORA555GDY7ZU4QDSL3DXHRK3A2CXGQCA6JOEO42OIBZF4TDUKPI7HVWE6JO5X566LX354S3X3ZPPPXSHONKFB42FZ72MAQDTYDK7HV2L6NM4V4W32LZF5TTTLLAPHVCF6LG564WTIFZM3X3X3ZEJA42EYBZ5EXLX3ZDQNBLTKRIPGROP6TAEA46A2XZ5OS7TLHFPHTKCOJPEY46BLTZUYV7TI7D7IX6YOPLUA4WGZLY4AQHSL3P7HSSUOPANV422LXY4AQHUL7EHIUGGONFMI46HIP2NLTDRYBAPFRCO6LJ4L42O2DZF3W3UZTEHFRC3OLMER46WYT354RTT3ZOXHQK46NGFP4WHYFZUVWDULBA7GSW2OLG5Q5GNL5Y4AQHTJJNXGSWN6TAE74W5KNZUFULRYBAPFXG3ORIMM42AKODIK5C7IHZNXV3X3ZDQNBLUYDF7EXSQOPLUX42ZZL354RDX3ZJ7PXWC67PMO566YL355STX33CPPXWBSB354UHX33DHPXWD67PMP566ZF355RHX33FHPXWEO7PMN566IZ354U7X3ZIPPXSE6NHEA42L2TZ4UWHT35DXFTO66PGUE566KR355R7X33DHPXWGO7PMB566Y5355QQQO7PFKEDTJLGPGR2EOJOUO566JD354THX3ZF7PXSLCBZNZWTTI7EHFQ65O7PEM42MK7ZVAXHTI3LXIX27OLMEU42LIP2F7TPSYZFXIV25OJOFN4KAJZZ4JVHT2XHXFUSU6NC5J566IZ2MAQLUIBBPHSSPQ2CXFVWMOFAE546NIJ2EHVLTYJNXIX6N6LDEW42ZZLZMITHSY7EPFWGK6RAEM42O2L354R3SYLNXFT65ONHFM46ZL5Z5FT3TJRL7FRCU6PFFI4WSI3ZMIW3RYBAPEXKSOTBMN4OAIDZ5KQHSY7GHEXCE6JOFK4WP3VZU4VTUL7EHHV2L6LBMD5GDY3ZNERXUL7EHEXWOO7PEM4S52L2F6X3SYRMHGW6MONMNQ5C7IHZNXV3UKPI7HTKCOPG5O46NIJ354XPX3ZF7PXS667PEO5GAZODIK4S6KBZ5OS7TLHFPFXKKOPFFI4WOKRZ53QTSZBCHEXSMOLDEW4S4K3354RTTIVCXIQ6VOPBFW46KYZZFYVXTZJH7HRGU6JPMT5C7ZXZMMS3UL7B7HVCF6JOEO465YJZMQRDSLZGHFRSLOJOFN42IJZZ5UULSLZGHFRSLORP4H46UIXZN3XLT2XC7EXKDOPLMJ4S53PZMFWPT3HO7PXSHOPFE746E2TZFYVLSL3E7EXCHOLPUF42IJZZ5UULTZVBHHQK4Q2CXHVWE6JO5X566IZZ4UT7TYTKPEXWJ6PGUE5GAIFZN2STUIHPPFRKN6JOEO46N25ZVAQ7SYPPPGSWYOPLMJ4S53P354RTTZJH7HRGU6JPMT46NIJ2MARHTIXKPIX6D6PKEL4S4I5ZFYRXTJNLPGSS46RP434WH272FBRTUKPI7HTKCORP4H46UIXZ5NRHSLXN7PXSHOTAMX4S6KBZ5OS7TLHFPFW6S6JPM4422YDZ5IRPSZXPXFU2BOLG56566JEIHGRGAA2CXHUS5O7PEOBUFOHAEA5GAZPZF4UDT25F7GWOK6PGUE4S6JRZ4CXHTJRL7GSCOOPNFC4WH27ZF3UXS3TNXIUGGONCNH5CQYZ354RTT25F7GWOK6NFMI46HIP2NLTDX3ZDHIQO66LJE74WSIJZ4QQ3S2JDPGTWBOTF5O5GRJR354RTS25OPGTCJ6LLU646HLBZ5NRHX3ZDHHXS5OPAVZ42MK7ZF4TDSYZFXIX6D6PKEL5C7IH2MVX7X3ZDHGTCJ6TGNX4WC2LZNRQDUYHKANBLTJZAHEXSMORJ5D566I4DIK46TIDZN7RTTJBHHHWSROPLUX42ZZL354RDX3ZNHPXWA67PMC566ZKIHPXSZ67PMF566YD355SLX33A7PXWEO7PEM566LJ354WPX3ZCPGTSAONF5J46KLD354U7X33DHPXWH67PMW566YL355SIQOLHFI566JD354THX3ZGHPXSLCBZNZWTTI7EHFQ65O7PEM4WN2BZMFW3SL3P7HSSUOPGUE46TIDZN7RTUKDKHGVCQ6JO574S5INZF2XLT3DO7HTKCORLVQ4W7YNZMKT7UIHPPIQCGOLPUX4WII3354RTSYLNXFT65ONHFMBUFONAE542B3HZNQWHTJRL7FTSUONEE4462KF2F7Q7T2RC7EXCW6LMEG5C7ZDZU4T7TZVBHGSCOOPNFC5C7YPZ5IRPS23GHGSS7OLHFI46TIDZN7RTUKDKHEXCW67PEM5GMLXZVNULT25F7GWOK6TB4N4WSI32F7TPSYLJPPXS567PEY566L3354RTSLXDXIQCGOTGFS42W2FZUQTTT3JIXIX6D6PKEL46NIJZN6VLTY5L7PXSHOLBNW42YYF2FHUPTZVBHIX6D6PKELBUFONGFP4WCYRZVRQLS35F7EXCAOLCE54WTYX2FHUPX3ZDHHQS3OLEEO4WOKR2MCXPSZ7H7EXCW6NEE4462KF2F6QPSL3M7IU6R6NCEW42MK7Z5HXPSYVKHFRCYORPUD4W325Z42QTSYZOXFT6P6NEE4462KF2FPUXSYZOXFT6P6NHEA4S63H2FHUPX3ZDHFTSUOPJUB4W7YZ2FBVDUK5MHFXWK6NG56465Y7ZUQTTS27O7HTKCORN5P4W7IJ354RTSL3HANBLSLROXEXCF6NLFB42IJZZ5UULTZVBHEX2O6NDNO566IZZF3UXUYDP7FQWG6TGNX4WC2LZNRQDUYHKHGTSAOJPEY5CT2HZFYVXX3ZDXHU2A6LP4M42IJZZ5UULT25F7GWOK6LN5F4S6ZZZVVQHT2RC7FTO7OLJUC4WN35354SMQONCMA46SLV354RYGQVZ5GQHS37DHGSCOOPNFC46XJPZVTSXSLZGHHQK46NGFP4WH27ZF3UXUYDP7FQWG6RP4C4WNZ5ZUQTTT3JIXPXSGOJP455CXYDZUQTTT3JIXGTSE6NFMI566IZZ54XLTYFOPGTCX6RP4H4WSJVZF6TXULLFXEXKHOLCE54WTYX2FHUPX3ZDQNBLUJVAPHX2SOPLUX42ZZL354RDX3ZIPPXWHO7PMUEDX3ZM7PXWM67PMT566ZJ355QXX33DPPXSGO7PFB566LH354RHTJZAHGS6U6PFFR566K3355QHX33A7PXWJO7PMPEDX3ZJHPXWH67PMS566YT355Q7X33DZA4S5I5354SHX3ZGPPXSM67PESEDS3TNHGR6IOLB52566IZZMFW3TYDNPGQSP6NHNF5CD2V2E2QLUJVAPIU6C6TI4742L3NZNPXPTITPXGTSAOPH5N5C327ZN6QTTZVBHIX6D6PKEL566I52E2QLUJVAPEXSNOLHFIBUFOLBNW5CTYL2NDT7UL7B7HVCF6JOFN566IZZNQQ3SLRAHHU6G6RA554WSJ7ZF4UDUYBEXEX6Q6NANP46NIJZ5HWDSLROXFUSLONP4A462KBZ42QTTYTKPIWSUOPFMZ4WOKRZMFW3T3XD7IX6D6PGUE5C327ZFYRLX3ZDHFUSLONP4A462KB2FCVPSYLNXFV2B6RP4Q4WFKRZ42QTUJVAXITKA6NBE746P2LZMQR3SY7L7EXOS6NDEH4WX3ZZNOQPSLXLANBLTZVBHIX6IOLCVI42LLTZMQSHX3ZO7PXSM67PF5566I5ZNES3TL7AHHWSQOPGUE422ZHZN2U3SLRDXJQGL6PFMZ42L3N2MXWTTIREHFR6G6NL4U566IZZFYR3ULLMHIX6D6RL5F5C327Z52X7TZVBHITKBORGUB46NIJZUVWDUYPD7GRCIONLND42XZJ354R3S3BMPGTCX6RL5U566IZZNES3TL7AHHWSQONLUL46KZTZ42QTTLLE7FXKTORNUK5GVZR354RTSYRGPFSC4A2CXFXSK6RGUC5CNIDZMJRXTJ3JPHTKCORA554WFJX2FWRLS3ZOXPXSGORNUK4WSJVZ42QTUJVAXITKA6PO4P5C7YPZU7SDTJ3IPIW6X6POV742L3N354RTUK7JPIW6X6POV746NIJZNES3TL7AHHWSQONNMT4W5KNZNQWHULNCXJVOMO7PEM5CQ2RZ4OWDSYPOXEXCAOPJ4N4S72DZUBV7TK3I7FR6G6TJUI566I52F7THTKBN7PXSGORGUC5CNIDZNQWHSY7LYNBLTITPXFRCYOTI4746E2TZFYR3S3PIXHVG2OTF5U46NIJZU4QDTZ7LPIW6X6LPUE566I5ZVRQLUKPI7IW6X6LPUE5GL252NCTDTJPNXPXSGONL4P4WH2V2E2QLUJVAPGTCX6JOEA4S4KVZ4LVTT2XC7HTKCOPFFI4S5I5ZU6QTUYBIHIW6X6POV746NIJ2F7Q7T2RC7PXSGORC5F4W43FYUATTUJVAXITKA6RP4H46UIXYUATXSLTC7JS62OTAE25C7YPZF7UEGQVZUBV7T3JIHGTWS6JOVE42G2FZF7UHTIDL7PXSGOLEEI4S6ZZZVRQLUKPI7PXSGOLONW4S4I3ZUWVXSLZGHFRSLORN5P4W7IJ354R3UJVAPHX2SOPLUX42ZZLZNXUXSL3HHGWWA6PKEL4WN35ZNGQLSZXPXPXSKCBZUJQDT2JOXPXSHA2CXITKA6PPVE46XJPZVTSXTZVBHEXSMOPAVZ42MK7ZU4RHUITL7FUW66PGUE4WC2RZNRQDSLZGHFRSLORA554WFJXY4AQHUIHPPFUSP6LONW5CQYZZUQTTT3JIXDQCA6NGET4S5I5Z4UVDUK5IPHV2L6NHF24WXJ5Z4OWDT23CPPXSGOPPF246BLTZUYV7UK5IPHV2L6TB4P4WSKPY4AQHTJRE7JTG36LBNF4WYYB2MDVDTJZAHEXSMORJ5D566I4DIKBUFO7PEU4OAIB2F5U3UL5BXIW6X6LPUE5CTYJZMISLUZPLXJUKMOPIEU46U3NZ4OWDTYVNQNBLTZXLXFRGG67PEM5C62N2F6Q3ULPL7FX2CORJ4E4WEJF2MXV3U2FGHHTKCOPIEU46U3NZNXWLT3XD7FR6LOLPUX4S5IN2FOXDS2JGXHTKCONCEQ42PJZ354RTSL3BXGTCX6LG5A4S4LV2MXV3U2FGHGTSWOROVL46NIJZNERXTJ3AXGQCT67PEM46QJJZ5JW3SLXDPHQS3OLLMY4WOKR2FOXDS2JGXEXCG6RNVT566I5ZFYRPUZ3IXEXC56RJUBBUFOJO4O42UKDZM6RPT2BFHHVG3OLEUM46XJPZVTSXT2BFHHVG3OJOFE4S4KVZUWXHUZ3IXHV2AORP5Q4S4IBZFYRPUL3JXIX2DORN5P4W7IJ2FHQTSYREXJS6XOTIUY46NIJZ5ASTT2TNXHR2YOPCVW566I4DIK566JJ354R3X3ZEPDQCAONKFB4WPIXZ5ASTT2TNXGS246THNCBUFO7PER566ITY4AQDS3XOXHVOF6NKFB4WPIXZUXW3X3ZDHEXC5OJOUG5GMY3ZF5R3TLDAXIU6R6RP4H46UIXZ42QTS2JDPGTWBOLOVG566IZZ43V3TKBB7FQ666NFNQ46NIJZ52U3TJ3H7GTWQ6JO5W42K3B2MHR7S35CHFWCI67PEM5CAIZZM4VDS25HXJTGC6RP4H46UIX2MATLS3ROHGTCX6RLVY4WSJVZU5UHSLXNXFSCGONF5W465KNZU5T4GQVZ42QTX3ZO7PXSI67PEQ566L3354RTUL7GPFWCY6TAFA42EJBZF2Q3TZBBXIV25ONKFB4WPIXZFYR3S25HXJTGC6NA4F4WDLLZ42QTS3PLXIW6O67PEOBUFO7PES566ITY4AQDTZXLXFRGG6LL5Z5C62N2F6Q3ULPL7FX2CORJ4E4WEJF2MXV3U2FGHHTKCOPIEU46U3NZNETLS3DAHJTGIOJOUO4WN3VZNOTLULPL7HXK76TF5O5GRJRZ42QTT2BFHHVG3O7PEM4S4LX2FGQHSZXIHFQW3ONKFB4WPIXZU4RHT2DLXFV2NOLD4C42K3B354RTTLDAXIU6R6PG5Y4WX3TZ5OQDSY3FPPXSGOJPMG5C7ZTZ5HRUGQVZVIUHSZ5C7EXCG6RA5542FIVZNOULTIRN7HTKCONFNQ5GDY7Y4AQHS25IXGRC36PAVZ4S6Y3Z55V3SLXJPFR6FORP4Q5C7JHZUXW3UZPNHDQCA6TAMT5C327ZF7UHTIDL7HVWE6JOEN46Q25ZNOTLSZXIHHWSQOLPMT4WAZV2M2R7TJZOXFR6MOTB4P46OIXZN6QXX3ZDHFQW36NHEJ42PIDZNEU7TZVBHFWGAOTGMQ42AKP354RYGQV354STX3ZDXPXSJOHAEA46XJPZVTSXT2BFHHVG3ONFVZ5GO2EDIK566JD354RHRYBAHHR2YOTGFW42XLL2F5U3UL5BXIW6X6LPUE5CTYJZMISLUZPLXJUKMOPGUE42YYF2FHUPTJNOPGWOK6JO4N4S52LZMQV7SY7EPFXSH6PLUX42ZZLZFYXLSLRO7PXSHOLJE242MK7ZMPVLUIHPPJSKEOLL5Z42PZBZFYQDTYTOPFV2NOPMN34WPIXZ42QTUZPLXJUKMONMMC5CT2H354RTSLRDPFQW36NHEJ5GAJVZ4UVAGQVZUAU7X3ZDHIQCGOJOEU42L2BZVTSXUYDP7FQWG6PLUX42ZZL2EHVLS3RJXHTKCOPPF25GM3P354R3SLRAHEXKN6PLUX42ZZLZMPS3S35F7HTKCORJ5D5CM33Z4EW3T3FPXHUGXO7PEM4S6YN2EAS7TJPNXIX6D6TFN7566IZZMTRXS3VFHJQCP6LOVG5C7YPZUFULX3ZDHGS6QONM4V5GAIFZN2STS25HXJTGC6JOFN46NIJZN2STTZJKHPXSHA2CXPXSJO7PEJ4OAIBZM4VDUZPLXJUKMOLCEG42PJBZUXW3SLROXEXKDOPLUA4WGJN2MXV3U2FGHHTKCOLJEN42OYFZ5IRPS3VJXPXSGOLPUA4W7IBZN6RDS3BEPIQCB6RGMR4WHYFZUVWDUZVD7GS63OTF5U4WHZRZMMS3TZVBHHRG46NAFH4S52LZMPRLS2NAXEXWK6LLU646HLBZMKVDTIBAPIU6COLCES566IZZM4VDT3VP7HV2Q6PEEG46WYSDIK4WFJ72EDXXX3ZDHEXOHORAEM5GMY3ZF5R3SLVBXHUCKOPKNW4S4I5ZNOT3UZTBPHTO4ONDVF5C7ZDZ42QTT2RC7FXKTO7PEOBUFA2CXPXSK6HAEA5C62N2F6Q3ULPL7FX2CORJ4E4WEJF2MXV3U2FGHHUCKOPKNW4WYZLZU4TMGQV2MSRDS27OPHTOXOLCMN5C62N2F6Q3ULPL7FX2CORJ4E4WEJF2MXV3U2FGHHUCKOPKNW4S4K3ZNNTDSZZKHHTKCOJOEN5C3LH354RTTJZKXGTWS6RL5F5GL252NCTDTZVBHHUCKOPKNW42LLTZMQSHS2JJ7IQ62OLD5P4S52LZF5SPTY5MHFTSUONKFB4WPIXZUUXHUL7G7FSKGOPLUX42ZZLZUUXHUL7G7EXCSOJOFK42LLT2M5UIGQUDIK566JL354R3X3ZEPDQCAONKFB4WPIXZUUXHUL7GYNBLX3ZEPPXSE6HAEA4WSJVZ5HRXT3VJXGTWP6NHNB4S53NZFYRPTZVBHIXWTORPUG5C327ZN6QTUKPBHFRCJOTF5O5GRJRZ5ASTT2TNXPXSHOPG5O4WEY3Z5ASTT2TNXEXCW6RAED5CMZDZ42QTT3VJXGTWP6NHNB4S53N2F6QPS3BEPPXSGOJO4K4WII5Z42QTT2BFHHVG3OJOFN4WYINZF4TLSLRDPGS2W6LCVA4WC2LZUWWDTZVBHHXKTONHM7BUFONHNB4S53N354RTTITKPFWGK6TF5O5GRJRZ42QTT2BFHHVG3ONKFB4WPIX354RTSL3P7FQW3OJOEO4WXJ52MZQXUL7EHJQCA6NA4F4WDLLZU3WTTI5JPIX6I67PEO4S7IXZNGQLTJZCPFUSNOJOFK5GCY32MAQHSLRLPFX6B67PEM5GCY32MAQHUL3JXIX2DONHEJ4WSJVZ5HRXT3DO7FT2F6PLMJ42BYLZMGWXX3ZDQNBLX3ZEXPXSE6HAEA5GAJBZVNUXS3ZAHFWGK6LL5Z4S5I5ZFYRXT2DLXFV2NORPNG5C7IN2FXV7S35BHIU6COLCES5GL252NCTDTZVBHHUCKOPKNW566I5Z4UWHSLVDXEXCG6PINO4WXJV2F5U3UL5BXIW6X6LPUE5CTYJZMISLUZPLXJUKMONG5U42HKL2F7SHS25HXJTGC6NA4F4WDLL354RTUK7JPJS6XOTIUY42MK7ZF3RLSZBDXHUCKOPKNWBUFOPGUE5GDY3Z4CXHTJNOPFSCI67PEO4S5YVZMQR3TZVBHHUCKOPKNW4S4K3ZN2STT3XPHFSCEORAED5CMZDZNOT3UZTBPIX6D6PKEL4S4K3ZNNTDSZZKHHTKCOJOEN46Q25ZNOTLSZXIHHWSQOLONW4WYINZMFW3UJ5DPFQWS6LCFQ42UKDZM6RPSLRLPPXSHOJPUL4WTIFZNOULTIRN7HTKCONFNQ5GDY7Y4AQHUZZAHGWGBOJPMN46625ZF3UXSY7CQNBLUL7EHIX2J6NF5W5GL3JY4AQHUYDE7IW6X6JP5B42A27Z5NRHSZXIHHWSQO7PEOBUFA2CXPXSK67PEO566JFY4AQDT25F7GWOK6NFFZ5C7ZWDIK566JD354RHRYBAHIV27ORLVB4233PZMQRDT25F7GWOK67PEO42EYB2FQSPTLPN7FSCEOPLUX42ZZLZNQWHTJRL7FWCDOLDMV4S4IBZ5OS7TLHFPHXOCOLEEI566IZZF5X7SYLNXFSCCORB5K42EYBZMFW7TJZCINBLTZVBHEXSMOLCV74WCYLZMIQ3SY7EPGRSS67PEM42N3JZMKUDU2XGHGSWEOLHFQ5CT2HZMGWPUZPLXJUKMO7PEO4233PZMQRDT25F7GWOK6LD5P4S52LZU3WTS2LPPFTSYORJ5D4WDLH354W3X3ZMXPXSYCB2MXV3U2FGHPXSHA2CXEX2F6LJUC4WH272MHQ7TZJKHFWCDOTAMX4S6KBZ5OS7TLHFPEXCHOPJUB4W7YZZUQTTT3JIXHV2L6NM4V465ZHZMQRDTZVBHGW636LEEI46XJPZVTSXTJ3JPIU6R6LBVT566LN354WLX3ZMBA5GL252NCTDX3ZDHGS6RA2CXFR6X6JO5F5CT2HZMGWPT2NAPFX6GONEE4462KFZ5OS7TLHFPHTKCOLL5Z4WEJ3ZNHRPUKPI7HTKCOJPU55C2ZNZUAU7X3ZDHFR6EOLD5P4S52L2MBX7SYLDPJQGL6JPFA46XJPZVTSXSLZGHFRSLONF5W5GL3J2F7Q4GQV2MVX7X3ZDHFV246NGET5GM3PZMFUXS3DAHJQOUONHEA4S6JR2FHUPTZVBHJS6XOTIUY566I5ZVXW7SZBCHHV2L6NM4V4W32LZF5TTTLLAPHVCF6LG564WTIFZM3X3X3ZFJA42EYBZ5EXLX3ZDQNBLX3ZEXPXSE6HAEA46XJPZVTSXT2BFHHVG3OPGUE4W5JJZ4UVDUKPEXFXKTOLOUU4S5Y5Z5GXPT3VP7JTWPOLLU642L3NZ42QTS3VFHHSSUORPNM4WIJDZM4VDT3VP7FV2PONF5W4W5JJZ4UVDSLRCXPXSHOPDVQBUFONHEJ46NIJZ5ASTT2TNXFTSUOLOUU46KKR2FHSLS3VJXEXCFOLJE242MK72MSRDS27OPHU256POV75GOZ5ZNOT3TJPNXFXKKOPFFI566IZ2F7THS27OPEXKHOTHMZ42AIDZ4OV7S2FA7GV6KORPUD4WXJ5Z4UVDX3ZDQNBLS27OPEXKHOLCVI42AIDZ4OV7S2FA7PXSGOLCEZ5GOIB2FGQHUZFCHFV646LHFI465L7ZNOT3TJPNXFXKKOPFFI5C7ZX2FBRTT2BFHHVG3O7PEM5CAIZZUPSDU2XGHHV2L6NM4V46NIJZMTRXS3VFHJQCP6LOVG4WEJSDIK42MK7ZUVWTSLRKXJS6XOTIUY46NIJZMFWPUZJLXPXSGONHFK42O2LZMPV7SLXJPJQCNORP4H4WYINZ5OS7TLHFPEXKHOJOV24W32LZUZXLUIHPPGRKAONHFP465ZHZMQRDTJ3JPIU6R6LBVT5C7ZTZFYVLUZPLQNBLU2FGHPXSHA2CQNBI======');
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `Project_Name` char(255) NOT NULL,
  `Abstract` text,
  PRIMARY KEY (`Project_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('42IJZZ5UULT25F7GWOKQ====','46QJJZ5JW3UK5IPFRCJA2CQNBLSLRO7IU2A6JO534WFKCDIKBUFONHEJ4WC3HZMFQPTJLMHGRWXOPGUE42OIBZUWWDT2BFHHVG3ONFUH46GK5Z53XTUL7MANBLUKPI7FQ2ZVMUSQ46NIJZMQV7SY7EPFXSH6NFVZ42ZZKDIKBUFOLL5Z4W6ZHZMJRXT2BFHHVG3ORP434WYZL354RTS3PLXIW6O6LEUM46HLBZ4KW3TZVBHIV2UORLV24WJIZZMIQ3TJ5EANBLTIZEPGRCMA2CQNBLTIFKHGR6IOLB5246NIJZ5ASTT2TNXHTOXONIEH4WJIZ2FGQHUKPI7FQ2Z6PGUE5GL252NCTAGQUDIK42QLTZUNV3TIFKHHTKCOPEEG5CT2H2F7TPUKDDHGS2D6PDFO4653Z2F7WDTZVBHHTOXOPGUEBUFOLBNT4S5I5ZU4VTUK7PXHVCF6NNVV46NZNZ42QTTJBHHHWSROPLUX42ZZKDIKBUFOPLUX42ZZL354TLTJRPXHUS5OLE5K4S5JXZ53QTSLXNRP4WCYHZ5UUDULLN7EXWOOPFFI566IRZFYRXULLN7EXWOOPFFI566IT354T4GQUDIK42IJZZ5UULT2TOXJS62ONGFP4S5YBZFZRDX3ZDHEX2F6LJUCEDUKPI7FQ2Z6NFVZ42QYRZ54S3T2BAPPXSGOPOVG42OZ7354RQGQV2FPQTSLZMHFRKP6RA55566IZ2F7SDT25F7HVSTOPLMJBUFA2CXIU6R6LBVT46NIJZMFWPUZJLXHUCKOPKNW5GL252NCTAGQUDIK5C2KDZ4MV3X3ZGXIU6R6LBVT42LIPZ4MV3SLRLPHTKCOPKN246M32DIKBUFA2CQNBLTIVFPGUCD6JONG4S4I3ZN6S7ULNBPIX6DTELBQGAYOJOFK4WWZP354RDSLRDPFRSC6NC5M4WHYF2EAQPTJNB7HRSXO7PEJ4OAIEIHGQKUOLD5P4S52LZ43WTTI5JPEXW76PFFI465ZTZNOTLTZVBHGVCQ6NHN742O2LZU6QTUYBIHFSKGOPPEW4WDJTZN3XLUK5LXDQCBCB2FPW7SYRIHJTGSOPO4Z4WXJVZVIUHTJ3P7EXCW6NC5M4WH3OW254S4K3Z42QTTITAHGTSE6NDEH4WGZPY4AQIQONAVI4WH272EDXXSLZGXFR6I6PDVQ4WIIR2MAQLTZVBHGTCX6JO5F4S4I3ZMQRTTZVBHGS246LPEP42PIJ2MAUDTIFKHHTKCOND4Q42QYRY4AQIGQUDIK4WYINZUCVDTZVBHHUCKOPKNW5CXKDZMISLSL3HHEXC5OJOEA4S4KUUCEI3TJNB7EXO3OND4Q4S5KJY4AQIGQUDIK4WX3TZUCVDTZVBHGS2D6NIND4S637Z4UVDTKBB7FQ6DOLEN54WII3Z52U3S25GXPXSNEMQKTKQQFS33VOJHGC3LFFZYGIZQNBIGQV2F7T7SLVJHGVWSOLN5F4S6ZZZNQQ3UKFK7HXWNONLF642XY7ZFYVLS3PJPEXWOONF5FGXX3ZBPDQCBA2CQNBIGQUDIKBUFONC475CXK5Z42QTT2BFHHVG3ORP434WYZKDIKBUFORLVB46XJPZUZXLUIHPPGRKAONHFP46NIJZVXW7SZBCHPXSEONKFB46ZYV2MAXPUL5EPPXSGOLHFI465L6L7HU256POV74WW2NZFZUDX3ZDHFUSNOPG5O42QIPZ5NRHX3ZCINBIGQVZF4TDSYZFXEXCHONHF24WM2RZNNU3SLTIHHTKCONFNU4WIIQDIKBUFONN5R4WC2LZMIQ3TJ5EHPXSNONEE4462KFZ5JXLUZPNHFRCDONHUQ566IZ2MXV3U2FGHGVCQ6LHUL566IZZMQV7SY7EPFXSH6NN5X4WIIRZ5NRHRYBAQNBIGQVZ4OWDS25HXEXCLOPFMM4S4K2VSSKDTZVBHGS2YOPCNZ42AKOL7HXKTONHM7BUFA2CXIX6MONHEJ4WC3NZF3S3TIHM7GWOK6LEEX566J6DIK4W72X2MAT4GQUDIKBUFORL5F42HZBZVBRDS3BBXFT65OJOUO4S4ITZFYVLTKBB7FQ6DORIVL42QIP2FOWDSLROXEXCAOJOFK42K3JZF5SPRYBAQNBIYS5Z47UXUK7BXEXCHOPEEG5CT2GDIKBUFFMUSQ46NIJZUQTTT3JIXHV2L6NM4V4S4K3Z42QTTZXOHFQWZ6PKEL4W5KNZMSRTTZ7JPIV6DONN5R4W5KNY4AQIGQUDIK42KK7ZUMQHUK5OXHQK46LEUM465ZH2FOXLTZVBHGTWS6NOUQ46NIJ2FUVDUYPD7FSKGOJPN746KKRY4AQIGQUMXPXSGONCNZ4WEKJZUAU7TIBHPHXO2ORA554WFJWDIKBUFORLVI5CXLUL7FRCDONHUQ46XJPZVTSXS3TNXGQSH6RL4G4WELBZMFW3S3DAHJTGIONAFH4OAIEDIKBUFORA554WSJ7ZUPR7UL7MHFSKGORLVI5CXLVZ43XDSYLM7GRKAONHFP4OAIEDIKBUFOPO4T5CXLVZN6S7SYPOXHXOJ6RLV246NIJZMQRDTZBBXGQCT6HAECBUFA2CXIU6R6TB4K46NIJZMHQ3T2DLXGQCT6JO5F4W7JPZMHXLTZXOHFQWZ6PO4T5CXLVY4AQIGQUMZO42FIBZU4V7SYNGPEXWOONCUA4W32ODIKBUFOPOVY4W6KB2MVX7S3VJXPXSEONGFP4WIKNZM4VDUZTEHFRC3ORDED4WN3JZMGQXX3ZCPDQCBA2CQNBLUKPBXIU6E6RPUF4WFKTZNXUXSYLN7PXSEOLG56F7UKDKHPXSE6LEUM4WSJN2FHQLX3ZCHGUCD6PLN6F7UK7NHGTCHO7PEJ46NIJ2FUVDUYPD7DQCBA2CQNBLSY7JPFVWIOPGUE465ZHZU6QTSZFDHGS2D6NHFM46NIJZMIQ3TK5NPDQCBA2CQNBLUK7LPGWOK67PEM5GKJTZMIVPS23F7FSKGONIFX4W6I7Z42QTSYPBXHUGXONAFH566IRZF5X7TZJKHGRKAONHFP5CXY3ZVRQ7X3ZCPDQCBA2CQNBIGQUDIK4S637Z4UVDT25AHGWSA6PGUE5CX232FIQDX3ZDHFRWZ6LB4G46Q25ZF5X7TZJKHGS2D6PDFO4S4K3ZNYXDTZJKHGRCLOLLU24S4YTZ42QTUK7DINBIGQV2FQQPTJ7JPHXOJ6NHU44WJIZ2MZRDUL7MHFXKKOTAE25C7YPZN4SXTZJKHPXSGOJOUL4WXJ5354RTT3XH7IV2Q67PEM42K3BZNNS7TIRFXFRCDONHUQ42O2LZUUV7TIZAJP5CXYDZUYR3X3ZDHFRWZ6LJUC4S6ZLZF3UXSY7CXFTSUOJPMV4WSIJZUUW3UZXBXGSWYONDNOF7ULLBHGXKIOJO5F42KK7ZUMQHTJZCPIV6A6NDNO46NIJZ53SPUK5OQNBIGQVZM3X3TIRFXIUGUONIF44W5JJZM4VDTJNB7GTSWOPGUE5GAIFZN5SPSL3DPHXWXORP435CQYZZ5UULS3ZFPPXSGOLCVA4S4IVZVAQ7U2FGHFSKGOLPEV46KKR354RTSL5C7FU2BCBYUATTRIBJXCQCTOLJUC4WN34MPGRGAOPJF24KAJ3354RTRIBHHIUGUDFZUAXPT3XE7CQCTOFAFG4KAJ3Y4AQIGQUDIKBUFA2CXFR6BORAED42LIPZ4MV3S3VFHFTSUONIMI42LIPZFYVXUKFK7EXCAORB5U4W6JLZ4UVDX3ZCHEX2F6LJUC566IZYUATQQFWMS54S4K3Z42QTSLRAHJUG46PIEU46U3MLROFYXOFAE5566IZYUATQQEMYLHM5SWY3DBEBNTCXPIUGUONGEOFYXC5YUATXX3ZDHCQCOCAS3VNRVWC4TONHT23CK3GNO6ND4Q4S7JWLROF3RIBHPPXSE67PEM4W43NZF3UXSLRAHIQ62OPGUE42QLZZN4R7SYRF7FQ65CBZM4VDTI7EHGUGEONHFL4WYL5354RTSL5C7FU2BO7PE2BUFDCLSE42ZZLZVAXTTIXCJA4S5LVZNXUXTJTOXIQO66LEUM42OLVZMZVDS23JXEXGQOPGUE42L2LZNYXDT2JOXEX2F6HAECBUFA2CSFNVSXE2XEXK5OLN5F42M3V2EDXXT2BFHHVG3OJOEO422J5ZNPT7SYVG7DQCBCAMRQGIYOLONUGPTJZCBRGDTJPJINBIGQUMROK3BLPZ43S3TLRKJA4WTIFZF5SXTJFMHFQ2M6JOEA422YDZ42QTUK5OXGS2D67PEMJZQXI5LSMUQDKNJV566IYMJSHEYTGMHPXSGDEMBRHDRYBAQNBIGQUMZOJUQFIZLHNVQXE27DQCBCBZ4UT7TLJOZTFYYO7PE24WOKRZF2XLS3PJPGTG5ORA5542L3NZF3UPTIREHEXC5OJOV246Y3XY4AQIQOLBNL42OIQDIKGI467PEMGIYDCN7PXSGORL524WSKWDIKBUFOPKUD5CW2NZMRRLX3ZGXGVWSOLO525CXK5ZN2STSL3P7HSSUONAVI5CD2VZNXWHTZVBHIV6O6RL5U42O2LZMNSXTYXLHFV2GONCEQ4OAIEIHFTSUOJO534S6ZLZUDQXSYNNPEXCF67PEM42BKR2MDXXSLRDPFXKKOJOEO4WIIZZNNU3SLRAHIWW36LN5F4S6ZZY4AQIQOLJUC42PJZZUAQDTZNEPFVWMOLHFI42FIJ2FCVXX3ZDHFWCDOJPN746KKRZUKQTUKFLPGUOAONNML4W32LZMFW7S27OPGR6IOJOVE46NIJZMGQXS25OPIX6N6RIMM4S5KJZMPRHTKHAHGT6S67PEM4W43NZNQQ3SLRJPGQOU6NCUE5CRK3Y4AQIGQUDIKGIZTGMY=');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-17 18:08:51
