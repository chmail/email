SQLite format 3   @     "                                                               " -�r   s |*s                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 �4%%�+tableFileMetaInfoFileMetaInfoCREATE TABLE FileMetaInfo(recordid INTEGER PRIMARY KEY AUTOINCREMENT ,name TEXT,title TEXT,date INTEGER,size BIGINT,zipped INTEGER,exinfo TEXT)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)�++�9tableFileContentInfoFileContentInfoCREATE TABLE FileContentInfo(recordid INTEGER PRIMARY KEY AUTOINCREMENT ,content BLOB)   �    ������                                                                                                                                                                                                                                                            �i �V[
	{
		"cate": "facebook",
		"reg":
		[
			["\\S+@facebookmail\\.com", "avatar_internet_facebook"]
		]
	},
	{
		"cate": "google",
		"reg":[
			["\\S+@accounts\\.google\\.com", "avatar_internet_google"],
			["\\S*notification@google\\.com", "avatar_internet_google"],
			["\\S+@plus\\.google\\.com", "avatar_internet_google+"]
		]
	},
	{
		"cate": "linkedin",
		"reg":[
			["\\S*member@linkedin\\.com", "avatar_internet_linkedin"],
			["\\S*press@linkedin\\.com", "avatar_internet_linkedin"],
			["\\S*noreply@linkedin\\.com", "avatar_internet_linkedin"],
			["\\S+@\\S+\\.linkedin\\.com", "avatar_internet_linkedin"]
		]
	},
	{
		"cate": "apple",
		"reg":[
			["\\S+@\\S+\\.apple\\.com", "avatar_internet_apple"]
		]
	},
	{
		"cate": "icloud",
		"reg":[
			["\\S+@\\S+\\.icloud\\.com", "avatar_internet_apple"]
		]
	},
	{
		"cate": "itunes",
		"reg":[
			["\\S+@\\S+\\.itunes\\.com", "avatar_internet_apple"]
		]
	},
	{
		"cate": "microsoft",
		"reg":[
			["\\S+@\\S+\\.microsoft\\.com", "avatar_internet_microsoft"]
		]
	},
	{
		"cate": "dangdang",
		"reg":[
			["\\S+@noreply\\.dangdang\\.com", "avatar_dianshang_dangdang"]
		]
	},
	{
		"cate": "alipay",
		"reg":[
			["\\S+@\\S+\\.alipay\\.com", "avatar_dianshang_zhifubao"]
		]
	},
	{
		"cate": "zhihu",
		"reg":[
			["\\S*account@mail2\\.zhihu\\.com", "avatar_internet_zhihu"],
			["\\S*antispam@zhihu\\.com", "avatar_internet_zhihu"],
			["\\S+@\\S+\\.zhihu\\.com", "avatar_internet_zhihu"]
		]
	},
	{
		"cate": "baidu",
		"reg":[
			["\\S*noreply@baidu\\.com", "avatar_internet_baidu"],
			["\\S*passport@baidu\\.com", "avatar_internet_baidu"]
		]
	},
	{
		"cate": "weibo",
		"reg":[
			["\\S+@\\S+\\.weibo\\.com", "avatar_internet_sina"]
		]
	},
	{
		"cate": "ctrip",
		"reg":[
			["\\S*\\.ctrip\\.com", "avatar_dianshang_xiecheng"],
			["\\S*@ctrip\\.com", "avatar_dianshang_xiecheng"]
		]
	},
	{
		"cate": "qq",
		"reg":[
			["10000@qq\\.com", "avatar_internet_tencent"],
			["admin@qq\\.com", "avatar_internet_tencent"]
		]
	},
	{
		"cate": "weixin",
		"reg":[
			["weixinteam@qq.com", "avatar_internet_weixin"]
		]
	},	
	{
		"cate": "tencent",
		"reg":[
			["\\S+@tencent\\.com", "avatar_internet_tencent"]
		]
	},
	{
		"cate": "netease",
		"reg":[
			["\\S+@\\S+\\.netease\\.com", "avatar_internet_wangyi"]
		]
	},
	{
		"cate": "jd",
		"reg":[
			["\\S+@jd\\.com", "avatar_dianshang_jingdong"],
			["\\S+@\\S+\\.jd\\.com", "avatar_dianshang_jingdong"]
		]
	},
	{
		"cate": "alibaba",
		"reg":[
			["\\S+@\\S+\\.alibaba\\.com", "avatar_dianshang_alibaba"]
		]
	},
	{
		"cate": "taobao",
		"reg":[
			["\\S+@taobao\\.com", "avatar_dianshang_taobao"],
			["\\.taobao\\.com", "avatar_dianshang_taobao"]
		]
	},
	{
		"cate": "bocomcc",
		"reg":[
			["\\S*pccc@bocomcc\\.com", "avatar_bank_jiaotong"]
		]
	},
	{
		"cate": "cmb",
		"reg":[
			["\\S+@\\S+\\.cmbchina\\.com", "avatar_bank_zhaoshang"]
		]
	},
	{
		"cate": "ccb",
		"reg":[
			["\\S+@\\S+\\.ccb\\.com", "avata_bank_jianshe"]
		]
	},
	{
		"cate": "amazon",
		"reg":[
			["\\S+@amazon\\.(com|cn)", "download"]
		]
	},
	{
		"cate": "udacity",
		"reg":[
			["\\S+@email\\.udacity\\.com", "download"]
		]
	},
	{
		"cate": "coursera",
		"reg":[
			["\\S*noreply@coursera\\.org", "download"]
		]
	},
	{
		"cate": "edx",
		"reg":[
			["\\S*news@edx\\.org", "download"]
		]
	},
	{
		"cate": "dell",
		"reg":[
			["\\S+@dell\\.com", "download"]
		]
	},
	{
		"cate": "uber",
		"reg":[
			["\\S+@uber\\.com", "download"]
		]
	},
	{
		"cate": "github",
		"reg":[
			["\\S*noreply@github\\.com", "download"]
		]
	},
	{
		"cate": "stackoverflow",
		"reg":[
			["\\S+@stackoverflow\\                     � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             %FileMetaInf%FileMetaInfo+FileContentInfo    ����iP3����rZ>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      1yomail_server.jsonZ
��� %url_iOS.jsonZ
��8 url.jsonZ
��� )mxpattern.jsonZ
��	�" 5membership.test.jsonZ
�� +membership.jsonZ
��:$
 ;mainserver_address.jsonZ
��p	 +login_help.jsonZ
�� #hotkey.jsonZ
��� 'font_mac.jsonZ
��f font.jsonZ
�� � -errorList_en.xmlZ
��� -errorList_cn.xmlZ
��#� -email_regex.jsonZ
��O� CSV.xmlZ
��H -brand_regex.jsonZ
���                                                                                                                                                                                                                                                                              �i �V[
	{
		"cate": "facebook",
		"reg":
		[
			["\\S+@facebookmail\\.com", "avatar_internet_facebook"]
		]
	},
	{
		"cate": "google",
		"reg":[
			["\\S+@accounts\\.google\\.com", "avatar_internet_google"],
			["\\S*notification@google\\.com", "avatar_internet_google"],
			["\\S+@plus\\.google\\.com", "avatar_internet_google+"]
		]
	},
	{
		"cate": "linkedin",
		"reg":[
			["\\S*member@linkedin\\.com", "avatar_internet_linkedin"],
			["\\S*press@linkedin\\.com", "avatar_internet_linkedin"],
			["\\S*noreply@linkedin\\.com", "avatar_internet_linkedin"],
			["\\S+@\\S+\\.linkedin\\.com", "avatar_internet_linkedin"]
		]
	},
	{
		"cate": "apple",
		"reg":[
			["\\S+@\\S+\\.apple\\.com", "avatar_internet_apple"]
		]
	},
	{
		"cate": "icloud",
		"reg":[
			["\\S+@\\S+\\.icloud\\.com", "avatar_internet_apple"]
		]
	},
	{
		"cate": "itunes",
		"reg":[
			["\\S+@\\S+\\.itunes\\.com", "avatar_internet_apple"]
		]
	},
	{
		"cate": "microsoft",
		"reg":[
			["\\S+@\\S+\\.microsoft\\.com", "avatar_internet_microsoft"]
		]
	},
	{
		"cate": "dangdang",
		"reg":[
			["\\S+@noreply\\.dangdang\\.com", "avatar_dianshang_dangdang"]
		]
	},
	{
		"cate": "alipay",
		"reg":[
			["\\S+@\\S+\\.alipay\\.com", "avatar_dianshang_zhifubao"]
		]
	},
	{
		"cate": "zhihu",
		"reg":[
			["\\S*account@mail2\\.zhihu\\.com", "avatar_internet_zhihu"],
			["\\S*antispam@zhihu\\.com", "avatar_internet_zhihu"],
			["\\S+@\\S+\\.zhihu\\.com", "avatar_internet_zhihu"]
		]
	},
	{
		"cate": "baidu",
		"reg":[
			["\\S*noreply@baidu\\.com", "avatar_internet_baidu"],
			["\\S*passport@baidu\\.com", "avatar_internet_baidu"]
		]
	},
	{
		"cate": "weibo",
		"reg":[
			["\\S+@\\S+\\.weibo\\.com", "avatar_internet_sina"]
		]
	},
	{
		"cate": "ctrip",
		"reg":[
			["\\S*\\.ctrip\\.com", "avatar_dianshang_xiecheng"],
			["\\S*@ctrip\\.com", "avatar_dianshang_xiecheng"]
		]
	},
	{
		"cate": "qq",
		"reg":[
			["10000@qq\\.com", "avatar_internet_tencent"],
			["admin@qq\\.com", "avatar_internet_tencent"]
		]
	},
	{
		"cate": "weixin",
		"reg":[
			["weixinteam@qq.com", "avatar_internet_weixin"]
		]
	},	
	{
		"cate": "tencent",
		"reg":[
			["\\S+@tencent\\.com", "avatar_internet_tencent"]
		]
	},
	{
		"cate": "netease",
		"reg":[
			["\\S+@\\S+\\.netease\\.com", "avatar_internet_wangyi"]
		]
	},
	{
		"cate": "jd",
		"reg":[
			["\\S+@jd\\.com", "avatar_dianshang_jingdong"],
			["\\S+@\\S+\\.jd\\.com", "avatar_dianshang_jingdong"]
		]
	},
	{
		"cate": "alibaba",
		"reg":[
			["\\S+@\\S+\\.alibaba\\.com", "avatar_dianshang_alibaba"]
		]
	},
	{
		"cate": "taobao",
		"reg":[
			["\\S+@taobao\\.com", "avatar_dianshang_taobao"],
			["\\.taobao\\.com", "avatar_dianshang_taobao"]
		]
	},
	{
		"cate": "bocomcc",
		"reg":[
			["\\S*pccc@bocomcc\\.com", "avatar_bank_jiaotong"]
		]
	},
	{
		"cate": "cmb",
		"reg":[
			["\\S+@\\S+\\.cmbchina\\.com", "avatar_bank_zhaoshang"]
		]
	},
	{
		"cate": "ccb",
		"reg":[
			["\\S+@\\S+\\.ccb\\.com", "avata_bank_jianshe"]
		]
	},
	{
		"cate": "amazon",
		"reg":[
			["\\S+@amazon\\.(com|cn)", "download"]
		]
	},
	{
		"cate": "udacity",
		"reg":[
			["\\S+@email\\.udacity\\.com", "download"]
		]
	},
	{
		"cate": "coursera",
		"reg":[
			["\\S*noreply@coursera\\.org", "download"]
		]
	},
	{
		"cate": "edx",
		"reg":[
			["\\S*news@edx\\.org", "download"]
		]
	},
	{
		"cate": "dell",
		"reg":[
			["\\S+@dell\\.com", "download"]
		]
	},
	{
		"cate": "uber",
		"reg":[
			["\\S+@uber\\.com", "download"]
		]
	},
	{
		"cate": "github",
		"reg":[
			["\\S*noreply@github\\.com", "download"]
		]
	},
	{
		"cate": "stackoverflow",
		"reg":[
			["\\S+@stackoverflow\\.com", "download"]
		]
	}
]   � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                    ��d ��J[
	{
		"cate":"Category Social",
		"reg":[
			["\\S+@\\S*linkedin\\.com","linkedin"],
			["\\S+@plus\\.google\\.com","google"],
			["\\S*community\\S*@communifire\\.com","communifire"],
			["\\S+@user\\.mail\\.jiaoyou\\.58\\.com","jiaoyou"],
			["\\S*(no(-|_)?reply|messages)?\\S*@\\S*weibo\\.com","weibo"]
		]
	},
	{
		"cate":"Category Finance",
		"reg":[
			["\\S*(confirm|orders|service)\\S*@\\S*amazon\\.(com|cn)","amazon"],
			["\\S*no(-|_)?reply\\S*@\\S*vancl\\.(   �L �﻿<?xml version="1.0" encoding="utf-8"?>
<strings>		
		<!-- qq -->
		<string id="姓名" value="FN"/>		
		<string id="名字" value="FN"/>		
		<string id="First Name" value="N"/>		
		<string id="电子邮件" value="EMAIL"/>
		<string id="E-mail Address" value="EMAIL"/>
		<string id="手机" value="TEL"/>		
		<string id="Home Phone" value="TEL"/>
		<string id="固定电话" value="TEL"/>
		<string id="别名" value="NICKNAME"/>
		<string id="生日" value="BDAY;VALUE=text"/>
		<string id="备用邮箱" value="EMAIL"/>
		<string id="家庭地址" value="ADR;TYPE=HOME"/>
		<string id="公司名称" value="ORG"/>
		<string id="备注" value="NOTE"/>
		<string id="性别" value="GENDER"/>	


		<!-- foxmail -->
		<string id="昵称" value="NICKNAME"/>			
		<string id="性别" value="GENDER"/>
		<string id="公司" value="ORG"/>		
		<string id="职位" value="TITLE"/>	
		<string id="附注" value="NOTE"/>
		<string id="公司名称" value="ORG"/>				

		<string id="Name" value="FN"/>				
		<string id="Nick Name" value="NICKNAME"/>			
		<string id="Mobile Phone" value="TEL"/>		
		<string id="Office Company" value="ORG"/>		
		<string id="Office Position" value="TITLE"/>
		<string id="Birthday" value="BDAY;VALUE=text"/>
		<string id="Sex" value="GENDER"/>
		<string id="Memo" value="NOTE"/>
		

		<!-- 163 -->
		<string id="邮件地址" value="EMAIL"/>				
		<string id="电子邮箱" value="EMAIL"/>				
		<string id="电子邮件地址" value="EMAIL"/>	
		<string id="移动电话" value="TEL"/>			
		<string id="手机号码" value="TEL"/>		
		<string id="住宅地址" value="ADR;TYPE=HOME"/>			

		<string id="Company" value="ORG"/>		
		<string id="Notes" value="NOTE"/>		
		<string id="Home Street" value="ADR;TYPE=HOME"/>		
		<string id="Email" value="EMAIL"/>		
		<string id="E-mail 1 - Value" value="EMAIL"/>				
		<string id="Mobile" value="TEL"/>		
		<string id="Home Address" value="ADR;TYPE=HOME"/>		
		<string id="Title" value="TITLE"/>
		<string id="Comments" value="NOTE"/>


		<!-- outlook -->
		<string id="单位" value="ORG"/>	
		<string id="职务" value="TITLE"/>		
		<string id="住宅电话" value="TEL"/>			
		<string id="工作电话" value="TEL"/>			
		<string id="工作地址" value="ADR;TYPE=HOME"/>	


		<!-- aliyun -->
		<string id="E-mail" value="EMAIL"/>			
		<string id="Cellphone" value="TEL"/>		
		<string id="Work Phone" value="TEL"/>					
		<string id="Work Address" value="ADR;TYPE=HOME"/>	
		<string id="Note" value="NOTE"/>	
		<string id="Company Name" value="ORG"/>		


		<!-- other -->
		<string id="邮箱" value="EMAIL"/>		
		<string id="邮件" value="EMAIL"/>		
		<string id="电话" value="TEL"/>			
		<string id="电话号码" value="TEL"/>			

		<string id="Email Address" value="EMAIL"/>	
		<string id="email Address" value="EMAIL"/>	
		<string id="Email" value="EMAIL"/>	
		<string id="email" value="EMAIL"/>	
		<string id="Phone" value="TEL"/>					
		<string id="phone" value="TEL"/>					
		<string id="Mobile" value="TEL"/>					
		<string id="Phone Number" value="TEL"/>					

</strings>   com|cn)","vancl"],
			["\\S*service\\S*@\\S*360buy\\.(cn|com)","360buy"],
			["\\S*service\\S*@\\S*ccb\\.com","ccb"],
			["\\S+@message\\.cmbchina\\.com","cmbchina"],
			["\\S*pccc\\S*@\\S*bocomcc\\.com","bocomcc"],
			["\\S*tenpay\\S*@tencent\\.com","tencent"],
			["\\S*sales\\S*@godaddy\\.com","godaddy"],
			["\\S*info\\S*@news.gaopeng\\.com","gaopeng"],
			["\\S*dell_automated_email\\S*@dell\\.com","dell"],
			["\\S*orders\\S*@eventdove\\.com","eventdove"],
			["\\S*(service|taobao)\\S*@(smtp|mc)\\.mail\\.taobao\\.com","taobao"],
			["\\S+@orders\\.apple\\.com","apple"],
			["\\S*do_not_reply\\S*@itunes\\.com","itunes"],
			["\\S*(alipay|service)\\S*@(mail\\.)?alipay\\.com","alipay"],
			["\\S*billing\\S*@linode\\.com","linode"],
			["\\S*service\\S*@4000979797\\.com","4000979797"],
			["\\S*(no(-|_)?reply|elong)\\S*@(news\\S*\\.)?elong\\.com","elong"],
			["\\S*magazine\\S*@shenzhenair\\.com","shenzhenair"],
			["\\S*webmaster\\S*@icbc\\.com\\.cn","icbc"],
			["\\S*cebbank\\S*@(cardcenter\\.)?cebbank\\.com","cebbank"],		
			["\\S*receipts\\S*@uber\\.com","uber"]
		]
	},
	{
		"cate":"Category Travel",
		"reg":[
			["\\S*(info|rsv|service)\\S*@ctrip\\.com","ctrip"],
			["\\S+@united\\.com","united"],
			["\\S+@(email\\.)?travelzoo\\.com","travelzoo"],
			["\\S*master\\S*@easternmiles\\.com","easternmiles"],
			["\\S+@\\S*csair\\.com","csair"],
			["\\S+@\\S*airchina\\.com\\.cn","airchina"],
			["\\S+@\\S*springairlines\\.com","springairlines"],
			["\\S+@\\S*shandongair\\S*\\.com","shandongair"],
			["\\S+@airbnb\\.com","airbnb"]
		]
	},
	{
		"cate":"Category Promotions",
		"reg":[
			["\\S*(e(-|_)?)?(weekly|news)\\S*@amazon\\.(com|cn)","amazon"],
			["\\S*newsletter\\S*@jd\\.com","jd"],
			["\\S*(service|vancl)\\S*@\\S*vancl\\.com","vancl"],
			["\\S*newsletter\\S*@\\S*360buy\\.(cn|com)","360buy"],
			["\\S+@ad\\.cmbchina\\.com","cmbchina"],
			["\\S*dell_home\\S*@(chn|message)\\.(email\\.)?dell\\.com(\\.cn)?","dell"],
			["\\S*info\\S*@meituan\\.com","meituan"],
			["\\S*edm\\S*@yhdmail\\.yihaodian\\.com","yihaodian"],
			["\\S*(news|admin)\\S*@(\\S*mail\\.)?taobao\\.com","taobao"],
			["\\S+@dm\\.taobao\\.com","taobao"],
			["\\S+@insideapple\\.apple\\.com","apple"],
			["\\S+@new\\.itunes\\.com","itunes"],
			["\\S*(newsletter|recommend)\\S*@\\S*ctrip\\.com","ctrip"],
			["\\S*elong\\S*@(mail\\S*\\.)?elong\\.com","elong"],
			["\\S+@gouwu\\.youdao\\.com","youdao"],
			["\\S+@gouwu\\.88rui\\.com","88rui"],
			["\\S+@(message|promotion|information)\\.pingan\\.com","pingan"],
			["\\S+@ruby-china\\.org","ruby-china"],
			["\\S+@shengfen88\\.com","shengfen88"],
			["\\S+@ex\\.360\\.cn","360"],
			["\\S+@insenz\\.com","insenz"],
			["\\S+@feedly\\.com","feedly"],
			["\\S*(events|info|techradar)\\S*@thoughtworks\\.com","thoughtworks"],
			["\\S+@\\S*etao\\.com","etao"],
			["\\S+@\\S*neitui\\.me","neitui"],
			["\\S+@\\S*suiwai\\.com","suiwai"],
			["\\S+@flamesky\\.net","flamesky"],
			["\\S+@\\S*lashou\\.com","lashou"],
			["\\S+@nutstore\\.net","nutstore"],
			["\\S+@news\\.gameforge\\.com","gameforge"],
			["\\S+@cs\\.ejoy\\.com","ejoy"],
			["\\S+@cdm\\.zunyoo\\.com","zunyoo"],
			["\\S+@a\\.vipend\\.com","vipend"],
			["\\S+@91cbt\\.net","91cbt"],
			["\\S+@newsgram\\.hp\\.com","hp"],
			["\\S+@cnaaa\\.com","cnaaa"],
			["\\S+@mail\\.taskcn\\.net","taskcn"],
			["\\S*bookinfo\\S*@\\S*china-pub\\.com","china-pub"],
			["\\S*sender\\S*@csdn\\.net","csdn"],
			["\\S*newsletter\\S*@anjuke\\.(com|net)","anjuke"],
			["\\S*(marketing|operations)\\S*@gopivotal\\.com","gopivotal"],
			["\\S*newsletter\\S*@nexon-mail\\.com","nexon"],
			["\\S*newsletter\\S*@(news\\.)?drakensangonline\\.com","drakensangonline"],
			["\\S*info\\S*@caincontact\\.com","caincontact"],
			["\\S*info\\S*@na-ca-mail\\.com","na-ca-mail"],
			["\\S*news\\S*@tongdun\\.net","tongdun"],
			["\\S*(reply|replies)\\S*@oracle(-mail)?\\.com","oracle"],
			["\\S*(marketing|promo)\\S*@(newsletter\\S*\\.)?zhihu\\.com","zhihu"],
			["\\S*news\\S*@(mail\\.)?qingcloud\\.co   	m","qingcloud"],
			["\\S*newsletters\\S*@huawei\\.com","huawei"],
			["\\S*(cloudbees|cpappas)\\S*@cloudbees\\.com","cloudbees"],
			["\\S*support\\S*@uber\\.com","uber"],
			["\\S+@communication\\.microsoft\\.com","microsoft"],
			["\\S+@service\\.alibaba\\.com","alibaba"],
			["\\S*(yoka|no(-|_)?reply)\\S*@(newsletter\\.)?yoka\\.(com|cn)","yoka"],
			["\\S+@fks163\\.net","fks163"],
			["\\S+@jji47\\.cn","jji47"],
			["\\S+@51fund\\.cn","51fund"],
			["\\S*support\\S*@ccfund\\.com\\.cn","ccfund"],
			["\\S*support\\S*@epfservice\\.com\\.cn","epfservice"],
			["\\S*service\\S*@swsmu\\.com","swsmu"],
			["\\S*service\\S*@(fund\\.)?huaan\\.com\\.cn","huaan"],
			["\\S*service\\S*@ubssdic\\.com\\.cn","ubssdic"],
			["\\S*service\\S*@goldenfinance\\.com\\.cn","goldenfinance"],
			["\\S+@efunds\\.com\\.cn","efunds"],
			["\\S+@fsfund\\.com","fsfund"],
			["\\S*mbbedm\\S*@mbaobao\\.com","mbaobao"],
			["\\S*service\\S*@southernfund\\.com","southernfund"],
			["\\S*service\\S*@qhkyfund\\.com","qhkyfund"],
			["\\S+@(newsletter\\.)?greentree\\.cn","greentree"],
			["\\S*service\\S*@fscinda\\.com","fscinda"],
			["\\S*sap\\S*@mailsap\\.com","mailsap"],
			["\\S*cmf\\S*@cmfchina\\.com","cmfchina"],
			["\\S+@cgbchina\\.com\\.cn","cgbchina"],
			["\\S+@globalsources\\.com","globalsources"],
			["\\S+@fullgoal\\.com\\.cn","fullgoal"],
			["\\S*news\\S*@(edm\\.)?tuniu\\.com","tuniu"],
			["\\S+@(newsletter\\.)?okaybuy\\.com","okaybuy"],
			["\\S+@jjmmw\\.com","jjmmw"],
			["\\S*newsletter\\S*@newegg\\.com\\.cn","newegg"],
			["\\S*gome\\S*@(wptg\\.)?gome\\.com\\.cn","gome"],
			["\\S*snapfish\\S*@(info\\.)?snapfish\\.com","snapfish"],
			["\\S+@(newsletter\\.)?.zhongliangwomai\\.com",".zhongliangwomai"],
			["\\S*service\\S*@semailer(\\.vicp)?\\.com\\.cn","semailer"],
			["\\S*edm\\S*@edm\\.yhd\\.com","yhd"],
			["\\S*kadang\\S*@edm\\.kadang\\.com","kadang"],
			["\\S*service\\S*@(edm\\.)?(email\\.)?58\\.com\\.cn","58"],
			["\\S*service\\S*@(newsletter\\S*\\.)?chinabyte\\.com\\.cn","chinabyte"],
			["\\S+@\\S*gameflier\\.com","gameflier"],
			["\\S*(asos)?\\S*@(fassion\\.)?asos\\.cn","asos"]
		]
	},
	{
		"cate":"Category Notify",
		"reg":[			
			["\\S*(no(-|_)?reply|platform|support|googleio|mailer-daemon)\\S*@((?!plus)\\S)*google(code|mail)?\\.com","google"], 
			["\\S+@docs\\.google\\.com","google"],
			["\\S*(no(-|_)?reply|notification|security|update)\\S*@\\S*facebookmail\\.com","facebook"],
			["\\S*(no(-|_)?reply|notification|newsletter|support)\\S*@(vip\\.)?163\\.com","163"],
			["\\S*(no(-|_)?reply|notification|newsletter|support)\\S*@(vip\\.)?qq\\.com","qq"],
			["(10000|friends)@qq\\.com","qq"],
			["\\S*(no(-|_)?reply|notification|newsletter|support)\\S*@outlook\\.com","outlook"],
			["\\S*(no(-|_)?reply|notification|newsletter|support)\\S*@udacity\\.com","udacity"],
			["\\S*(no(-|_)?reply|notification|newsletter|support)\\S*@youtube\\.com","youtube"],
			["\\S*(no(-|_)?reply|notification|newsletter|support)\\S*@yinxiang\\.com","yinxiang"],
			["\\S*(no(-|_)?reply|service|notification|newsletter|support)\\S*@\\S*tianya\\.com(\\.cn)?","tianya"],
			["\\S*(no(-|_)?reply|info|notify|newsletter|support|confirm)\\S*@twitter\\.com","twitter"],
			["\\S+@postmaster\\.twitter\\.com","twitter"],
			["\\S*no(-|_)?reply\\S*@kaixin001\\.com(\\.cn)?","kaixin001"],
			["\\S*no(-|_)?reply\\S*@\\S*yahoo(-inc)?.\\.com","yahoo"],
			["\\S*(no(-|_)?reply|service|admin)\\S*@sina\\.com","sina"],
			["\\S+@(space|staff)\\.sina\\.com(\\.cn)?","sina"],
			["\\S*(no(-|_)?reply|update|replies|correspondence|verification|messages|response|helpcenter)\\S*@\\S*amazon\\.(com|cn)","amazon"],
			["\\S*service\\S*@jd\\.com","jd"],
			["\\S*webmaster\\S*@\\S*vancl\\.cn","vancl"],
			["\\S+@caijing\\.com\\.cn","caijing"],
			["\\S*cvs\\S*@cmbchina\\.com","cmbchina"],
			["\\S*(service|yun|no(-|_)?reply)\\S*@tencent\\.com","tencent"],
			["\\S*(accountupdate|donotreply|notice|renewals|support)\\S*@\\S*godaddy\\.com","godaddy"],
			["\\S*no(-|_)?reply\\S*@dell\\.com","dell"],
			["   
\\S*no(-|_)?reply\\S*@mail\\.meituan\\.com","meituan"],
			["\\S*support\\S*@jsfiddle\\.net","jsfiddle"],
			["\\S*((no-)?reply|organizers)\\S*@bizzabo\\.com","bizzabo"],
			["\\S*support\\S*@eventdove\\.com","eventdove"],
			["\\S*sys\\S*@no(-|_)?reply\\.yihaodian\\.com","yihaodian"],
			["\\S*(register)\\S*@(vip|news)\\.mail\\.taobao\\.com","taobao"],
			["\\S+@newsletter\\.mail\\.taobao\\.com","taobao"],
			["\\S+@id\\.apple\\.com","apple"],
			["\\S*(support|(do(-|_)?not(-|_)?|no(-|_)?)reply)\\S*@(email\\.)?apple\\.com","apple"],
			["\\S+@medallia\\.com","medallia"],
			["\\S*no(-|_)?reply\\S*@insideicloud\\.icloud\\.com","icloud"],
			["\\S*no(-|_)?reply\\S*@battle\\.net","battle"],
			["\\S*(no(-|_)?reply|not(_)?reply|service)\\S*@battle(\\.net|net\\.com\\.cn|cn\\.net)","battle"],
			["\\S+@battlecn\\.net","battlecn"],
			["\\S*(no(-|_)?reply|contact)\\S*@ted\\.com","ted"],
			["\\S*(hello|postmaster)\\S*@(hello\\.)?36kr\\.com","36kr"],
			["\\S*(eoeandroid|eoemarket|support)\\S*@eoemobile\\.(com|net)","eoemobile"],
			["\\S*(autopost|no(-|_)?reply|support|passport)\\S*@baidu\\.com","baidu"],
			["\\S+@service\\.pingan\\.com","pingan"],
			["\\S*no(-|_)?reply\\S*@\\S*360\\.cn","360"],
			["\\S+@guokr\\.com","guokr"],
			["\\S*service\\S*@ophonesdn\\.com","ophonesdn"],
			["\\S*service\\S*@duowan\\.com","duowan"],
			["\\S+@gistboxapp\\.com","gistboxapp"],
			["\\S*support\\S*@strikingly\\.com","strikingly"],
			["\\S*hello\\S*@v2ex\\.com","v2ex"],
			["\\S*(no(-|_)?reply|notifications|platform|support)\\S*@cloudfoundry\\.(com|org)","cloudfoundry"],
			["\\S*no(-|_)?reply\\S*@zymic\\.com","zymic"],
			["\\S+@hosting\\.zymic\\.com","zymic"],
			["\\S*(accounts|newsletter|survey|no(-|_)?reply)\\S*@unity3d\\.com","unity3d"],
			["\\S*(newsletter|support|no(-|_)?reply)\\S*@netsarang\\.com","netsarang"],
			["\\S*(newsletter|notification|no(-|_)?reply)\\S*@\\S*blizzard\\.com","blizzard"],
			["\\S*no(-|_)?reply\\S*@coding-newsletter\\.com","coding"],
			["\\S*no(-|_)?reply\\S*@mail\\.coding\\.com","coding"],
			["\\S*no(-|_)?reply\\S*@newsletter\\.coding\\.net","coding"],
			["\\S+@message\\.myspace\\.(com|cn)","myspace"],
			["\\S*(info|(no(-|_)?)?reply)\\S*@(email\\.)?glassdoor(-email)?\\.com","glassdoor"],
			["\\S*(services|(no(-|_)?)?reply)\\S*@\\S*elance\\.com","elance"],
			["\\S*no(-|_)?reply\\S*@\\S*freelancer\\.com","freelancer"],
			["\\S*(support|(no(-|_)?)?reply)\\S*@addthis(-news)\\.com","addthis"],
			["\\S*no(-|_)?reply\\S*@ourcoders\\.(org|com)","ourcoders"],
			["\\S*(support|notifications|no(-|_)?reply)\\S*@github\\.com","github"],
			["\\S*(newsletter|notification|no(-|_)?reply|staff)\\S*@\\S*tower\\.im","tower"],
			["\\S*no(-|_)?reply\\S*@\\S*100offer\\.com","100offer"],
			["\\S*(xiaxiaomi|no(-|_)?reply)\\S*@\\S*xiami\\.com","xiami"],
			["\\S*(news(letter)?|no(-|_)?reply|next|todoist)\\S*@todoist\\.com","todoist"],
			["\\S*(sourceforge|no(-|_)?reply|resources|noreplies)\\S*@(resources\\.)?sourceforge\\.(com|net)","sourceforge"],
			["\\S*(donotreply|no(-|_)?reply)\\S*@slideshare(mail(er)?)?\\.(com|net)","slideshare"],
			["\\S*no(-|_)?reply\\S*@slides\\.com","slides"],
			["\\S*no(-|_)?reply\\S*@seafile\\.com","seafile"],
			["\\S*no(-|_)?reply\\S*@(invite\\.)?quora\\.com","quora"],
			["\\S*(no(-|_)?reply|newsletter|edm)\\S*@\\S*qiniu\\.com","qiniu"],
			["\\S*(no(-|_)?reply|hello)\\S*@\\S*nashangban\\.com","nashangban"],
			["\\S*(digest|no(-|_)?reply)\\S*@(newsletter\\.)?jianshu\\.io","jianshu"],
			["\\S*(no(-|_)?reply|gurudigger)\\S*@gurudigger\\.com","gurudigger"],
			["\\S*no(-|_)?reply\\S*@dropboxmail\\.com","dropboxmail"],
			["\\S*(notifications|no(-|_)?reply)\\S*@disqus\\.(com|net)","disqus"],
			["\\S*no(-|_)?reply\\S*@daocloud\\.io","daocloud"],
			["\\S*no(-|_)?reply\\S*@coursera\\.org","coursera"],
			["\\S*(info|ivar|no(-|_)?reply)\\S*@c9\\.io","c9"],
			["\\S*cloud9\\S*@cloud9\\S*\\.io","cloud9"],
			["\\S*no(-|_)?reply\\S*@((batch|tran)\\.)?manong\\.io","manong"],
			["\\S*(newsletter|hello)\\S*@xamarin\\.com","x   amarin"],
			["\\S*(communications|newsletter|support|bot)\\S*@heroku\\.com","heroku"],
			["\\S*(newsletter|hello|survey|new-account)\\S*@bitnami\\.com","bitnami"],
			["\\S*(no(-|_)?reply|news|registration)\\S*@edx\\.org","edx"],
			["\\S*(news|learn)\\S*@(connect\\.)?asana\\.com","asana"],
			["\\S*kale\\S*@hackernewsletter\\.com","hackernewsletter"],
			["\\S*(info|odtug)\\S*@odtug\\.com","odtug"],
			["\\S*hello\\S*@wunderlist\\.com","wunderlist"],
			["\\S*(hello|support|ajs)\\S*@nitrous\\.io","nitrous"],
			["\\S*foe\\S*@(mail\\.)?innogames\\.com","innogames"],
			["\\S*email\\S*@\\S*prezi\\.com","prezi"],
			["\\S*(no(-|_)?reply|edm)\\S*@weiphone\\.com","weiphone"],
			["\\S*contact\\S*@gitbook\\.com","gitbook"],
			["\\S*(support|noreply)\\S*@linode\\.com","linode"],
			["\\S*(admin|messages)\\S*@transifex\\.com","transifex"],
			["\\S*(42qu|admin|zuroc)\\S*@42qu\\.com","42qu"],
			["\\S*(david|gardner)\\S*@centurylink\\.com","centurylink"],
			["\\S*(lucas|tom)\\S*@appfog\\.com","appfog"],
			["\\S*system\\S*@zzbaike\\.com","zzbaike"],
			["\\S*support\\S*@strikingly\\.com","strikingly"],
			["\\S*support\\S*@eoemarket\\.com","eoemarket"],
			["\\S*support\\S*@eoeandroid\\.com","eoeandroid"],
			["\\S*support\\S*@compilr\\.com","compilr"],
			["\\S*(microsystems|suninnercircle|mail)\\S*@\\S*sun\\.com","sun"],
			["\\S*service\\S*@wendui\\.com","wendui"],
			["\\S*service\\S*@watchstor\\.com","watchstor"],
			["\\S*service\\S*@csdn\\.net","csdn"],
			["\\S*(no(-|_)?reply|press)\\S*@anjuke\\.(net|com)","anjuke"],
			["\\S*(no(-|_)?reply|support)\\S*@xiaonei(-inc)?\\.com","xiaonei"],
			["\\S*no(-|_)?reply\\S*@yikey\\.com","yikey"],
			["\\S*support\\S*@hireright\\.com","hireright"],
			["\\S*no(-|_)?reply\\S*@oschina\\.net","oschina"],
			["\\S*no(-|_)?reply\\S*@fenzhi\\.com","fenzhi"],
			["\\S*newsletter\\S*@(newsletter\\.)?chinavalue\\.net","chinavalue"],
			["\\S*(register|support|magsub)\\S*@cnblogs\\.(me|cc|info|biz)","cnblogs"],
			["\\S*info\\S*@(messages\\.)?whitehouse\\.gov","whitehouse"],
			["\\S*developerworks\\S*@us\\.ibm\\.com","ibm"],
			["\\S*(info|mail)\\S*@kibey\\.com","kibey"],
			["\\S*no(-|_)?reply\\S*@vasee\\.cn","vasee"],
			["\\S*ebook\\S*@turingbook\\.com","turingbook"],
			["\\S*((no(-|_)?)?reply|info|service|news)\\S*@\\S*zhaopin\\.(cn|com)","zhaopin"],
			["\\S*logdown\\S*@\\S*rocodev\\.com","rocodev"],
			["\\S*(newspaper|support)\\S*@\\S*logdown\\.com","logdown"],
			["\\S*(service|admin)\\S*@51cto\\.com","51cto"],
			["\\S*(notice|domain|other|account)\\S*@dnspod\\.cn","dnspod"],
			["\\S*(no(-|_)?reply|service|contest)\\S*@topcoder\\.com","topcoder"],
			["\\S*(no(-|_)?reply|openshift)\\S*@redhat\\.com","redhat"],
			["\\S*(hello|info)\\S*@ghost\\.org","ghost"],
			["\\S*no(-|_)?reply\\S*@pathofexile\\.com","pathofexile"],
			["\\S*no(-|_)?reply\\S*@joinnet\\.cn","joinnet"],
			["\\S*member\\S*@surveymonkey\\.com","surveymonkey"],
			["\\S*(news|notify)\\S*@protonmail\\.(ch|com)","protonmail"],
			["\\S*(news|build)\\S*@phonegap\\.com","phonegap"],
			["\\S*info\\S*@efesco\\.cn","efesco"],
			["\\S*welcome\\S*@(mg\\.)?knewone\\.com","knewone"],
			["\\S*(account|service)\\S*@(mail\\.)?teambition\\.com","teambition"],
			["\\S*(support|webmaster)\\S*@asiaregister\\.com","asiaregister"],
			["\\S*(webmaster)\\S*@001webs\\.net","001webs"],
			["\\S*(web_)?report\\S*@kingston\\.com","kingston"],
			["\\S*(info|support|email)\\S*@(go|support\\.)?digitalocean\\.com","digitalocean"],
			["\\S*(support|newsletter|pricing)\\S*@dotcloud\\.com","dotcloud"],
			["\\S*(no(-|_)?reply|support)\\S*@astrill\\.com","astrill"],
			["\\S*(weekly|no(-|_)?reply|notification|account)\\S*@((newsletter|mail)\\S*|\\.)?zhihu\\.com","zhihu"],
			["\\S*no(-|_)?reply\\S*@ustraveldocs\\.com","ustraveldocs"],
			["\\S*no(-|_)?reply\\S*@uploadingit\\.com","uploadingit"],
			["\\S*(feedbacke|no(-|_)?reply)\\S*@slack\\.com","slack"],
			["\\S*no(-|_)?reply\\S*@qingcloud\\.com","qingcloud"],
			["\\S*no(-|_)?reply\\S*@icloud\\.com","icloud"],
		    	["\\S*(no(-|_)?reply|microsoft)\\S*@((account|(e(-)?)?mail)\\.)?microsoft\\.com","microsoft"],
			["\\S*no(-|_)?reply\\S*@adobe\\.com","adobe"],
			["\\S*(12306)\\S*@rails\\.com\\.cn","rails"],
			["\\S*(billing|no(-|_)?reply|renewals|support)\\S*@\\S*hostmonster\\.com","hostmonster"],
			["\\S*(no(-|_)?reply|system)\\S*@(mail\\.)?115\\.com","115"],
			["\\S*(service|passport)\\S*@\\S*netease\\.com","netease"],
			["\\S*postmaster\\S*@(info\\.)?immomo\\.com","immomo"],
			["\\S*no(-|_)?reply\\S*@vpncloudmail\\.com","vpncloudmail"],
			["\\S*no(-|_)?reply\\S*@tumblr\\.com","tumblr"],
			["\\S*(vmwareteam|donotreply|service)\\S*@\\S*vmware\\.com","vmware"],
			["\\S*no(-|_)?reply\\S*@springsource\\.com","springsource"],
			["\\S*no(-|_)?reply\\S*@(notifications\\.)?skype\\.com","skype"],
			["\\S*no(-|_)?reply\\S*@mailer\\.last\\.fm","last"],
			["\\S*no(-|_)?reply\\S*@(mail\\.)?instagram\\.com","instagram"],
			["\\S*no(-|_)?reply\\S*@(mail\\.)?ele\\.me","ele"],
			["\\S*no(-|_)?reply\\S*@infoq\\.com","infoq"],
			["\\S*no(-|_)?reply\\S*@ituring\\.com\\.cn","ituring"],
			["\\S*no(-|_)?reply\\S*@jasperforge\\.org","jasperforge"],
			["\\S*(no(-|_)?reply|groups)\\S*@douban\\.com","douban"],
			["\\S*((no-)?reply|billing)\\S*@frantech\\.ca","frantech"],
			["\\S*notification\\S*@jobvite\\.com","jobvite"],
			["\\S*do-not-reply\\S*@trello\\.com","trello"],
			["\\S*do-not-reply\\S*@(mail\\.)?word-server\\.net","world"],
			["\\S*(admin|root)\\S*@xinli001\\.com","xinli001"],
			["\\S*(weekly|no(-|_)?reply)\\S*@diandian(-inc)?\\.com","diandian"],
			["\\S*webmaster\\S*@quanjing\\.com","quanjing"],
			["\\S*(mprichard|sacha|support|tkennedy|varmenise)\\S*@cloudbees\\.com","cloudbees"],
			["\\S*(do-not-reply|team)\\S*@(info\\.)?open2study\\.com","open2study"],
			["\\S*(no(-|_)?reply|supprt)?\\S*@(class\\.)?stanford\\.edu","stanford"],
			["\\S*(career|club|report|service)\\S*@((mx01|recruitment|quickjobs|e(mail)?)\\.)?(e)?51job\\.com","51job"],
			["\\S*(jsw|rw)\\S*@peterc\\.org","peterc"],
			["\\S*no(-|_)?reply\\S*@pediy\\.com","pediy"],
			["\\S*admin\\S*@databi\\.cn","databi"],
			["\\S*no(-|_)?reply\\S*@alibaba\\.com","alibaba"],
			["\\S*service\\S*@58\\.com","58"],
			["\\S*service\\S*@(mail\\.)?tenpay\\.com","tenpay"],
			["\\S*service\\S*@(user\\.)?xunlei\\.com","xunlei"],
			["\\S*service\\S*@zol\\.com\\.cn","zol"],
			["\\S*service\\S*@sdo\\.com","sdo"],
			["\\S*support\\S*@uuu9\\.com","uuu9"],
			["\\S*mailer\\S*@soundcloud(mail)?\\.com","soundcloud"],
			["\\S*no(-|_)?reply\\S*@dropbox\\.com","dropbox"],
			["\\S*(no(-|_)?reply|support)\\S*@(service\\.)?weibo\\.com","weibo"],
			["\\S*support\\S*@zeen\\.com","zeen"],
			["\\S*subscriptions\\S*@mcafee\\.com","mcafee"],
			["\\S*infoq\\S*@emaildm\\.com","emaildm"],
			["\\S*no(-|_)?reply\\S*@joindiaspora\\.com","joindiaspora"],
			["\\S*no(-|_)?reply@dajie\\.com","dajie"],
			["\\S+@mychinahr\\.com","mychinahr"],
			["\\S*weekly\\S*@\\S*weibo\\.com","weibo"],
			["\\S+@\\S*dowjones\\.com","dowjones"],
			["\\S*starbucks\\S*@(e\\.)?starbucks\\.com\\.cn","starbucks"],
			["\\S*ellechina\\S*@(edm\\.)?hearst\\.com\\.cn","hearst"],
			["\\S*wwwcec\\S*@(e\\.)?globalsources\\.com","globalsources"],
			["\\S*news\\S*@\\S*newsletter\\S*reuters\\.com","reuters"],
			["\\S*newsletter\\S*@(cm\\.)?21so\\.com","21so"],
			["\\S+@mailtofortune\\.com","mailtofortune"],
			["\\S*service\\S*@(service\\.)?feiniu\\.com","feiniu"],
			["\\S+@study\\.163\\.com","163"],
			["\\S*no(-|_)?reply\\S*@slickedit\\.com","slickedit"]
		]
	}
]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    可用或拒绝接收"/>		

		<string id="Message too large" value="邮件信息量太大"/>
		<string id="Mail content denied" value="内容涉嫌为垃圾，拒绝连接"/>
		<string id="Ip frequency limited" value="IP发信太频繁，被限制"/>
		<string id="Domain frequency limited" value="域名发信太频繁，被限制"/>
		<string id="Sender frequency limited" value="发信人发信太频繁，被限制"/>
		<string id="Connection frequency limited" value="连接太频繁，被限制"/>


		<!-- 网易 -->
		<string id="HL:REP" value="IP异常，存在接收者大量不存在情况，被临时禁止连接"/>	
		<string id="HL:ICC" value="IP并发连接数过大，被临时禁止连接"/>		
		<string id="HL:IFC" value="IP发信太频繁，被临时禁止连接"/>		
		<string id="HL:MEP" value="IP异常，存在大量伪造发送域名行为，被临时禁止连接"/>		
		<string id="MI:CEL" value="发送方出现过多的错误指令"/>		
		<string id="MI:DMC" value="当前连接发送的邮件数量超出限制"/>			
		<string id="MI:CCL" value="发送方发送超出正常的指令数量"/>		
		<string id="RP:DRC" value="当前连接发送的收件人数量超出限制"/>		
		<string id="RP:CCL" value="发送方发送超出正常的指令数量"/>		
		<string id="DT:RBL" value="发信IP位于一个或多个RBL里"/>		
		<string id="WM:BLI" value="该IP不在网易允许的发送地址列表里"/>		
		<string id="WM:BLU" value="此用户不在网易允许的发信用户列表里"/>		
		<string id="DT:SPM ,please try again" value="邮件正文带有垃圾邮件特征，被临时拒收"/>		

		<string id="Requested mail action not taken: too much fail authentication" value="登录失败次数过多，被临时禁止登录"/>	
		<string id="too much fail authentication" value="登录失败次数过多，被临时禁止登录"/>		
		<string id="RP:CEL" value="发送方出现过多的错误指令"/>				
		<string id="MI:SFQ" value="发信人在15分钟内的发信数量超过限制，请控制发信频率"/>		
		<string id="RP:QRC" value="发信方短期内累计的收件人数量超过限制，该发件人被临时禁止发信"/>		
		<string id="Requested action aborted: local error in processing" value="系统暂时出现故障，请稍后再次尝试发送"/>		
		<string id="local error in processing" value="系统暂时出现故障，请稍后再次尝试发送"/>		
		<string id="bad syntaxU" value="发送的smtp命令语法有误"/>		
		<string id="MI:NHD" value="命令不允许为空"/>		

		<string id="MI:IMF" value="发信人电子邮件地址不合规范"/>		
		<string id="MI:SPF" value="发信IP未被发送域的SPF许可"/>		
		<string id="MI:DMA" value="该邮件未被发信域的DMARC许可"/>		
		<string id="MI:STC" value="发件人当天的连接数量超出了限定数量，当天不再接受该发件人的邮件"/>		
		<string id="RP:FRL" value="网易邮箱不开放匿名转发"/>		
		<string id="RP:RCL" value="群发收件人数量超过了限额，请减少每封邮件的收件人数量"/>		
		<string id="RP:TRC" value="发件人当天内累计的收件人数量超过限制，当天不再接受该发件人的邮件"/>				

		<string id="Invalid User" value="请求的用户不存在"/>		
		<string id="User in blacklist" value="该用户不被允许给网易用户发信"/>		
		<string id="User suspended" value="请求的用户处于禁用或者冻结状态"/>		
		<string id="Requested mail action not taken: too much recipient" value="群发数量超过了限额"/>		
		<string id="too much recipient" value="群发数量超过了限额"/>		
		<string id="Illegal Attachment" value="不允许发送该类型的附件"/>		
		<string id="Requested mail action aborted: exceeded mailsize limit" value="发送的信件大小超过了网易邮箱允许接收的最大限制"/>		
		<string id="exceeded mailsize limit" value="发送的信件大小超过了网易邮箱允许接收的最大限制"/>		
		<string id="Requested action not taken: NULL sender is no    t allowed" value="不允许发件人为空，请使用真实发件人发送"/>		
		<string id="NULL sender is not allowed" value="不允许发件人为空，请使用真实发件人发送"/>		
		<string id="Requested action not taken: Local user only" value="SMTP类型的机器只允许发信人是本站用户"/>		
		<string id="Requested action not taken: no smtp MX only" value="MX类型的机器不允许发信人是本站用户"/>		
		<string id="no smtp MX only" value="MX类型的机器不允许发信人是本站用户"/>		
		<string id="authentication is required" value="SMTP需要身份验证，请检查客户端设置"/>

		<string id="DT:SPM" value="邮件内容包含了未被许可的信息，或被系统识别为垃圾邮件"/>		
		<string id="DT:SUM" value="信封发件人和信头发件人不匹配"/>		
		<string id="IP is rejected, smtp auth error limit exceed" value="该IP验证失败次数过多，被临时禁止连接"/>		
		<string id="HL:IHU" value="发信IP因发送垃圾邮件或存在异常的连接行为，被暂时挂起"/>		
		<string id="HL:IPB" value="该IP不在网易允许的发送地址列表里"/>				
		<string id="MI:SPB" value="此用户不在网易允许的发信用户列表里"/>		
		<string id="IP in blacklist" value="该IP不在网易允许的发送地址列表里"/>		
		<string id="0X800C0133" value="容量已满，请清理"/>				


		<!-- 阿里云 -->
		<string id="User not found" value="用户不存在"/>
		<string id="User unknown" value="用户不存在"/>
		<string id="No such user" value="用户不存在"/>	
		<string id="invalid address" value="无效地址"/>
		<string id="Bad host" value="地址错误"/>		
		<string id="mailbox is full" value="收件人邮箱容量已满"/>
		<string id="Quota exceed the hard limit for user" value="收件人邮箱容量已满"/>
		<string id="mail box space not enough" value="收件人邮箱容量已满"/>		

		<string id="Message size exceeds fixed limit" value="邮件过大，超过限制"/>				
		<string id="Message blocked" value="被对方拒收"/>		
		<string id="Mail data refused" value="邮件被对方拒收"/>		
		<string id="Connection timed out" value="连接超时"/>
		<string id="Error in command" value="指令错误"/>

		<string id="Too many recients in the mail, should less than 20" value="邮件群发包含过多用户"/>	
		<string id="Too many recients in the mail" value="邮件群发包含过多用户"/>		
		<string id="This account isn't allowed to receive email" value="由于收件地址限制,您无权给此帐号发信"/>
		<string id="too frequently sending" value="发信太频繁"/>
		<string id="Client host rejected: cannot find your hostname" value="对方服务器未设置反向解析"/>
		<string id="Helo command rejected: Host not found" value="对方服务器在HELO命令中提供的域名不能被解析"/>
		<string id="Helo command rejected: need fully-qualified hostname" value="对方服务器的HELO信息不是完整的域名"/>
		<string id="Helo command rejected: Invalid name" value="对方服务器的HELO信息包含非法的字符"/>
		<string id="Recipient address rejected: Dynamic IP" value="对方服务器使用动态IP"/>


		<!-- 263企业邮 -->
		<string id="mailbox limit exceeded" value="收信人邮箱已满"/>
		<string id="mail size limit exceeded" value="发送的信件大小超过了对方的接收限制"/>
		<string id="ip and spf record not match" value="触犯spf规则，邮件被拒收"/>
		<string id="Sender address rejected Access denied" value="触犯同域认证规则，邮件被拒收"/>
		<string id="ip address in blacklist for more details" value="发信方服务器的ip地址在263接收服务器的黑名单"/>

		<!-- other -->
		<string id="unknown protocol" value="未知协议"/>
		<string id="Mailbox cannot be accessed" value="邮件不能访问"/>
		<string id="Authentication Error" value="验证错误"/>
		<string id="Header size exceeds fixed Maximum size" value="消息头长度超过最大限制"/>

</strings>   h h                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              �	 ��﻿<?xml version="1.0" encoding="utf-8"?>
<strings>
		<!-- qq -->
		<string id="Host not found" value="收件人地址不存在"/>		
		<string id="bad address syntax" value="收件人地址语法错误"/>
		<string id="invalid recipient syntax" value="收件人地址无效"/>
		<string id="message size * exceeds size limit * of server" value="发送的邮件大小超出对方限制"/>
		<string id="content rejected" value="邮件内容被系统拒绝"/>
		<string id="Mailbox not found or access denied" value="邮箱地址不存在或拒绝接收"/>		
		<string id="Mailbox not found" value="收件人地址不存在"/>
		
		<string id="Suspected spam" value="疑似垃圾邮件"/>
		<string id="SPF check failed" value="SPF验证失败"/>
		<string id="Mail is rejected by recipients" value="邮件被收件人拒绝"/>
		<string id="Mailbox unavailable or access denied" value="邮箱不       �  �                                                                                                                                                       �j �X{
    "fontnames": [
        "Arial",
        "Helvetica",
        "Helvetica Neue",
        "Courier New",
        "Times",
        "Georgia",
        "Verdana",
        "LucidaGrande",
        "Menlo",
        "STSong" ,
        "STKaiti",
        "STHeiti",
        "PingFang SC",
        "STFangsong",
        "Hiragino Sans GB"
    ]
}�w �r{
    "fontnames": [
        "Arial",
        "Verdana",
        "Georgia",
        "Times new roman",
        "Calibri",
        "宋体",
        "微软雅黑",
        "黑体",
        "华文细黑",
        "楷体"
    ]
}�q �f﻿<?xml version="1.0" encoding="utf-8"?>
<strings>
		<!-- 网易 -->
		<string id="HL:REP" value="IP abnormal,and a large number of receivers do not exist.Then,connection rejected temporarily."/>	
		<string id="HL:ICC" value="The number of concurrent IP connections is too large.Then,connection rejected temporarily."/>		
		<string id="HL:IFC" value="The IP is sending frequently.Then,connection rejected temporarily."/>		
		<string id="HL:MEP" value="IP abnormal,and a large number of forged sending domain exist.Then,connection rejected temporarily."/>		
		<string id="MI:CEL" value="Too many wrong commands on the sender"/>
		<string id="MI:DMC" value="The number of messages sent in the current connection exceeds the limit."/>			
		<string id="MI:CCL" value="The sender sends more than the normal number of instructions."/>		
		<string id="RP:DRC" value="The number of recipients sent in the current connection exceeds the limit."/>		
		<string id="RP:CCL" value="The sender sends more than the normal number of instructions."/>		
		<string id="DT:RBL" value="The sending IP is located in one or more RBLs."/>		
		<string id="WM:BLI" value="The IP is not in the list of addresses allowed by NetEase."/>		
		<string id="WM:BLU" value="This user is not in the list of users allowed by NetEase."/>		
		<string id="DT:SPM" value="Suspected spam,rejected temporarily."/>	

		
		<string id="RP:CEL" value="Too many wrong commands on the sender"/>				
		<string id="MI:SFQ" value="More than a limited number of sending mails within 15 minutes. Please control sending frequency."/>
		<string id="RP:QRC" value="More than the number of recipients in the short term, the sender is temporarily prohibited to send."/>			
		<string id="bad syntaxU" value="There are incorrect syntax in the sending command of SMTP."/>		
		<string id="MI:NHD" value="Command is not allowed to be empty."/>		

		<string id="MI:IMF" value="The email address of sender is out of specification."/>		
		<string id="MI:SPF" value="The sending IP is not licensed by SPF of the sending domain."/>		
		<string id="MI:DMA" value="The mail is not licensed by DMARC of the sending domain."/>
		<string id="MI:STC" value="The sender's number of connections in the day exceeds the limit. Then,the sender's mail is no longer accepted."/>		
		<string id="RP:FRL" value="NetEase mailbox does not open anonymous forwarding."/>		
		<string id="RP:RCL" value="Bulk recipients exceeded the limit. Please reduce the number of recipients per mail."/>		
		<string id="RP:TRC" value="The recipient's number of sender exceeds the limit in the day. Then,the sender's mail is no longer accepted in the day."/>						

		<string id="DT:SPM" value="The message contains unlicensed messages,or identified as spam by the system."/>		
		<string id="DT:SUM" value="The envelope sender does not match with the letterhead sender."/>				
		<string id="HL:IHU" value="The sending IP is temporarily suspended due to spam or abnormal connection behavior."/>		
		<string id="HL:IPB" value="The IP is not in the list of addresses allowed by NetEase"/>				
		<string id="MI:SPB" value="This user is not in the list of users allowed by NetEase."/>				
		<string id="0X800C0133" value="Capacity is full,please clear."/>				

</strings>


   { 	;2�{                                                                                                                                                                                                                                                                                                                                                                           �> � {
	"support_id": 270452,
	"server": "main.servers.nextechat.com:9200",
	"server_url": "im.nextechat.com",
	"topupService": "https://membership.nextechat.com/inapp/purchase",
	"topupQueryService": "https://membership.nextechat.com/inapp/purchase/%1%",
	"topupWeb": "https://membership.nextechat.com/#/inapppurchase",
	"topupWebiOS": "https://membership.nextechat.com/#/inapppurchaseIOS",
	"trackService": "https://membership.nextechat.com",
	"findPwdUrl": "https://membership.nextechat.com/#/findpassword",
	"shopUrl": "https://membership.nextechat.com/#/shop",
	"shopUrlAndroid": "https://membership.nextechat.com/#/android-shop",	
	"renew_vip_url": "https://membership.nextechat.com/#/shop",
	"more_setting_url": "https://membership.nextechat.com/#/center/account/user",
	"bind_cellphone_url": "https://membership.nextechat.com/#center/account/security/bind",
	"change_email_url":"https://membership.nextechat.com/#/center/security",
	"chat_email_url": "http://im.nextechat.com/email-chat/#/email/",
	"upload_email_api": "http://im.nextechat.com/api/shareEmail"
}t
 �l[{"address":"main.servers.nextechat.com:9200","isSSL":"false"},{"address":"182.254.242.175:80","isSSL":"false"}]�	 �[
	{
		"domain": "qq2.com",
		"link":   "http://c.yomail.com/?/article/181"
	},
	{
		"domain": "qq.com",
		"link":   "http://c.yomail.com/?/article/182"
	},
	{
		"domain": "163.com",
		"link":   "http://c.yomail.com/?/article/183"
	},
	{
		"domain": "126.com",
		"link":   "http://c.yomail.com/?/article/183"		
	},
	{
		"domain": "yeah.com",
		"link":   "http://c.yomail.com/?/article/183"		
	},
	{
		"domain": "aliyun.com",
		"link":   "http://c.yomail.com/?/article/184"		
	},
	{
		"domain": "qiye.aliyun.com",
		"link":   "http://c.yomail.com/?/article/184"		
	},
	{
		"domain": "sina.com",
		"link":   "http://c.yomail.com/?/article/185"		
	},
	{
		"domain": "sina.cn",
		"link":   "http://c.yomail.com/?/article/185"		
	}	
]

�B �[
	{
		"key": "F5",
		"function":"ReceiveAllEMail",
		"window":"main",
		"memo":"Receive All EMail"
	},
	{
		"key": "CTRL+N",
		"function":"CreateNewEditor",
		"memo":"create email editor"
	},
	{
		"key": "CTRL+R",
		"function":"ReplySelectedMail",
		"window":"main",
		"memo":"Reply selected mail"
	},
	{
		"key": "CTRL+SHIFT+R",
		"function":"ReplyAllSelectedMail",
		"window":"main",
		"memo":"ReplyAll selected mail"
	},
	{
		"key": "CTRL+SHIFT+F",
		"function":"ForwardSelectedMail",
		"window":"main",
		"memo":"Forward selected mail"
	},
	{
		"key": "CTRL+P",
		"function":"PrintSelectedMail",
		"window":"main",
		"memo":"Print selected mail"
	},
	{
		"key": "CTRL+R",
		"function":"ReplySelectedMail",
		"window":"email_form",
		"memo":"Reply selected mail"
	},
	{
		"key": "CTRL+SHIFT+R",
		"function":"ReplyAllSelectedMail",
		"window":"email_form",
		"memo":"ReplyAll selected mail"
	},
	{
		"key": "CTRL+SHIFT+F",
		"function":"ForwardSelectedMail",
		"window":"email_form",
		"memo":"Forward selected mail"
	},
	{
		"key": "CTRL+P",
		"function":"PrintSelectedMail",
		"window":"email_form",
		"memo":"Print selected mail"
	},
	{
		"key": "CTRL+ENTER",
		"function":"SendMailInEditor",
		"window":"email_editor",
		"memo":"send current in editor"
	},
	{
		"key": "DELETE",
		"function":"DeleteMailInForm",
		"window":"email_form",
		"memo":"delete current mail in from"
	},
	{
		"key": "SHIFT+DELETE",
		"function":"ShiftDeleteMailInForm",
		"window":"email_form",
		"memo":"Permanently delete current mail in from"
	},
	{
		"key": "CTRL+F",
		"function":"FocusToSearch",
		"window":"main",
		"memo":"Set focus to search"
	}
]
   $ �$                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �> � {
	"dnsServer": "8,8,8,8",
	"domainPatternList": [{
		"gmail.com": ["google\\.com$|googlemail\\.com$"]
	}, {
		"qq2.com": ["mxbiz.*\\.qq\\.com$"]
	}, {
		"qq.com": ["(mx\\d+|mxdomain)\\.qq\\.com$"]
	}, {
		"qiye.163.com": ["^mx\\d*\\.qiye\\.163\\.com$|^qiye163mx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"hz.qiye.163.com": ["^mxhz\\d*\\.qiye\\.163\\.com|^hzmx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"hm.qiye.163.com": ["^mxhm\\d*\\.qiye\\.163\\.com|^hmmx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"ym.163.com": ["ym\\.163\\.com$"]
	}, {
		"163.com": ["^163mx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"126.com": ["^126mx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"yeah.net": ["^yeahmx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"vip.163.com": ["^vip163mx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"vip.126.com": ["^vip126mx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"vip.188.com": ["^188mx.*\\.mxmail\\.netease\\.com$"]
	}, {
		"qiye.tom.com": ["bjmx.*\\.163vip\\.net$"]
	}, {
		"office365.com": ["mail\\.protection\\.outlook\\.com$|mail\\.eo\\.outlook\\.com$"]
	}, {
		"office365.cn": ["protection\\.partner\\.outlook\\.cn$"]
	}, {
		"hotmail.com": ["hotmail\\.com$"]
	}, {
		"sina.net": ["mx\\.sina\\.net$"]
	}, {
		"qiye.aliyun.com": ["mxhichina\\.com$"]
	}, {
		"263xmail.com": ["263xmail\\.com$"]
	}, {
		"yahoo.com": ["yahoodns\\.net$"]
	}, {
		"sina.com": ["freemx.*\\.sinamail\\.sina\\.com\\.cn$"]
	}, {
		"vip.sina.com": ["vip\\.sina\\.com$"]
	}, {
		"sohu.com": ["sohumx.*\\.sohu\\.com$"]
	}, {
		"2980.com": ["smtp\\.2980\\.com"]
	}, {
		"139.com": ["mx.*\\.mail\\.139\\.com$"]
	}, {
		"qiye.mail.10086.cn": ["mta.*\\.mail\\.139\\.com$"]
	}, {
		"aliyun.com": ["mx.*\\.mail\\.aliyun\\.com$"]
	}, {
		"189.cn": ["189\\.21cn\\.com$"]
	}, {
		"21cn.com": ["mta\\.21cn\\.com$"]
	}, {
		"mail.ustc.edu.cn": ["smtp.*\\.ustc\\.edu\\.cn$"]
	}, {
		"cstnet.cn": ["mx.*\\.cstnet\\.cn$"]
	}, {
		"icloud.com": ["mx.*\\.mail\\.icloud\\.com$"]
	}, {
		"staff.weibo.com": ["staffmx.*\\.staff\\.weibo\\.com$"]
	}, {
		"cecgw.cn": ["smtp\\.cecgw\\.cn$"]
	}, {
		"tricaas.com": ["mail\\.tricaas\\.com$"]
	}, {
		"mail.ru": ["mail\\.ru$"]
	}, {
		"aol.com": ["mx\\.aol\\.com$"]
	}, {
		"rambler.ru": ["rambler\\.ru$"]
	}, {
		"sns-te.com": ["mx.*\\.jimdo\\.com$"]
	}, {
		"c1.icoremail.net": ["mx\\.c1\\.corpease\\.net$|mx\\.c1\\.icoremail\\.net$"]
	}, {
		"c2.icoremail.net": ["mx\\.c2\\.corpease\\.net$|mx\\.c2\\.icoremail\\.net$"]
	}]
}� �4{
	"support_id": 220314,
	"server_url": "im.test.nextechat.com",
	"server": "115.159.98.78:9200",
	"topupService": "https://115.159.98.78/inapp/purchase",
	"topupQueryService": "https://115.159.98.78/inapp/purchase/%1%",
	"topupWeb": "https://115.159.98.78/#/inapppurchase",
	"topupWebiOS": "https://membership.test.nextechat.com/#/inapppurchaseIOS",
	"trackService": "https://115.159.98.78",
	"findPwdUrl": "https://115.159.98.78/#/findpassword",
	"shopUrl": "https://115.159.98.78/#/shop",
	"shopUrlAndroid": "https://membership.nextechat.com/#/android-shop",
	"renew_vip_url": "https://membership.test.nextechat.com/#/shop",
	"more_setting_url": "https://membership.test.nextechat.com/#/center/account/user",
	"bind_cellphone_url": "https://membership.test.nextechat.com/#center/account/security/bind",
	"change_email_url":"https://membership.test.nextechat.com/#/center/security",
	"chat_email_url": "https://im.test.nextechat.com/email-chat/#/email/",
	"upload_email_api": "https://im.test.nextechat.com/api/shareEmail"
}   \ Z
\                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              �< �|{
        "server1": {
                "vendor": "qq",
                "bandWidth": 10,
                "service": {
                        "imap": "119.28.19.150:993",
                        "smtp": "119.28.19.150:465"
                }
        },
        "server4": {
                "vendor": "qq",
                "bandWidth": 10,
                "service": {
                        "oauth": "119.28.20.132:80",
                        "token": "119.28.20.132:1081",
                        "imap": "119.28.20.132:993",
                        "smtp": "119.28.20.132:465"
                }
        },
        "server4.1": {
                "vendor": "qq",
                "bandWidth": 10,
                "service": {
                        "oauth": "119.28.20.132:2090"
                }
        },
        "server5": {
                "vendor": "qq",
                "bandWidth": 10,
                "service": {
                        "oauth": "119.28.15.245:80",
                        "token": "119.28.15.245:1081",
                        "imap": "119.28.15.245:993",
                        "smtp": "119.28.15.245:465"
                }
        },
        "server5.1": {
                "vendor": "qq",
                "bandWidth": 10,
                "service": {
                        "oauth": "119.28.15.245:2090"
                }
        },
        "server7": {
                "vendor": "ali",
                "bandWidth": 10,
                "service": {
                        "imap": "119.28.64.201:993",
                        "smtp": "119.28.64.201:465",
                        "oauth": "119.28.64.201:80"
                }
        }
}�< �|{
    "filters": [
        {
            "regex": "^file:\/\/.*",
            "name": "system"
        },
        {
            "regex": "^fs:\/\/.*",
            "name": "system"
        },
        {
            "regex": "^(http:\/\/)(static.bshare.cn)\/.*",
            "name": "offical"
        },
        {
            "regex": "^(chrome-devtools:\/\/)(devtools)\/(inspector).*",
            "name" : "offical"
        },
        {
            "regex": "^(https?:\/\/)(localhost:8088)\/.*",
            "name" : "offical"
        }
    ]
}
�# �J{
    "filters": [
        {
            "regex": "^file:\/\/.*",
            "name": "system"
        },
        {
            "regex": "^fs:\/\/.*",
            "name": "system"
        },
        {
            "regex": "^(http:\/\/)(www.yomail.com)\/(news)\/.*",
            "name": "offical"
        },
        {
            "regex": "^(http:\/\/)(www.yomail.com)\/(blog)\/.*",
            "name": "offical"
        },
        {
            "regex": "^(http:\/\/)(static.bshare.cn)\/.*",
            "name": "offical"
        },
        {
            "regex": "^(chrome-devtools:\/\/)(devtools)\/(inspector).*",
            "name" : "offical"
        },
        {
            "regex": "^(https?:\/\/).+(.nextechat.com)\/.*",
            "name" : "offical"
        },
        {
            "regex": "^(https?:\/\/)(localhost:[0-9]+)\/.*",
            "name" : "offical"
        }
    ]
}
