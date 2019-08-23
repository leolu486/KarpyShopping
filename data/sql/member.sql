

CREATE TABLE member(
mID decimal(4) identity PRIMARY KEY,
name varchar(10),
account varchar(20),
password varchar(20),
email varchar(50),
tel decimal(10),
addr varchar(100),
birthday datetime,
rdate    datetime  ,
gender  varchar(6)
);








INSERT  INTO  member (name,account,password,email,tel,addr,birthday,rdate,gender)

    VALUES   
	       ('厄薩斯','Aatrox1775', 'aaj3973',   'Aatrox@gmail.com'    ,0911303498, '台北市敦化南路一段23號',    84/7/23,     103/12/19, '男'),

		   ('斯溫',  'Swain1219',  'chizon666',  'Swain@gmail.com'    ,0911303490, '台北市西寧南路四號',        85/10/6,     104/8/10 , '男'),

		   ('星朵菈 ','Syndra789',  'tyzd5443',  'Syndra@gmail.com'   ,0912654784, '宜蘭礁溪鄉108號',           87/1/1,      105/1/1 , '女'),

		   ('艾希 ',  'Ashe5874 ',  'rir74154',  'Ashe@gmail.com'     ,0954154954, '新北市港前路1段6號',        91/8/1,       100/9/11, '女'),
		   
		   ('李星 ',  'LeeSin666',  'getkao666', 'LeeSin@gmail.com'   ,0919976466, '台中市萬寶路2段2號',        75/12/19,     103/12/8 ,'男'),
		   
		   ('犽宿 ',  'Yasuo8787',  'Rsiukey8787','Yasuo@gmail.com'   ,0911324515, '澎湖縣四維路89號',          71/8/7,       90/8/7 , '男'),
		   
		   ('雷玟 ','  Riven3Q666',  'qqqorqaqa1','Riven@gmail.com'   ,0915123584, '台北市塔城街104號',         87/9/21,      91/2/16 ,'女'),
		   
		   ('希維爾 ','Siviref5d4',  'dfsd7fd54d','Sivir@gmail.com'   ,0921025710, '花蓮市天成路78號',         71/11/19,     98/8/19 ,'女'),
		   
		   ('蓋倫 ','  Garenqwer4',  'eatmybigrr1','Garen@gmail.com'  ,0915410214, '台北市內胡瑞光路113號',    80/8/17,      93/8/24 ,'男'),
		   
		   ('納瑟斯 ','Nasus65672',  'dogworf2233','Nasus@gmail.com'  ,0987413585, '台北市內江街45號',         89/5/21,     102/10/11,'男'),
		   
		   ('達瑞斯 ','Darius8787', 'AAAicebird6','Darius@gmail.com'  ,0919821457, '宜蘭市市農路56號',         90/4/15,     109/11/13 ,'男'),
		   
		   ('露璐 ',  'Lulu54654e',  'dsf5sd4f5s','Lulu@gmail.com'    ,0915454545, '台南市龜山鄉11號',         75/8/19,     109/10/16 , '女'),

		   ('賈克斯', ' Jaxdf544e',  'asd4512sd5','Jax@gmail.com'     ,0915411254, '高雄市吉林路14號',         65/10/29,    101/12/31 , '男'),

		   ('菲歐拉 ',  'Fiora565',  'dsf5452154','Fiora@gmail.com'   ,0915446555, '高雄市神農路114號',        85/2/16,     101/2/26  , '女'),

       ('麗珊卓 ',  'Lissandra4', 'rt2f12455d','Lissandra@gmail.com'  ,0912357155, '台北市萬華區萬大路4號', 75/3/14,     108/7/15 ,  '女'),

		   ('札克  ',  'Zacer566',  'erwer23232',  'Zac@gmail.com'    ,0923554845, '嘉義縣竹崎鄉104號',        79/11/19,     108/3/25 , '男'),

		   ('悟空 ',  'Wukong54s54',  'qwqdf323','Wukong@gmail.com'   ,0934694541, '彰化縣田花路號15號',       67/6/29,     108/11/16 , '男'),

		   ('拉克絲 ', 'Lux5455744',  '54545sd45','Lux@gmail.com'     ,0910130805, '澎湖縣北竿島10號',         68/10/13,    109/12/16 ,  '女'),

		   ('歐拉夫'  ,'Olaf5sdf',   'wd165665d','Olaf@gmail.com'     ,0952642155, '台北市西藏路133號',        85/3/14,     104/11/23 ,  '男'),

		   ('雷歐娜 ',  'Leona5asd',  'rf54df4a45','Leona@gmail.com'  ,0915654914, '台北市中華路二段140號',    70/10/12,    105/11/11 , ' 女'),

		   ('路西恩 ',  'Lucian545e', 'sd545ffdr5','Lucian@gmail.com' ,0911445452 , '台北市漢口街1段3號',      80/11/11,     107/7/16 ,   '男'),

		   ('凱爾 ',  ' Kayle54df4',  'd5f4s5f1',' Kayle@gmail.com'   ,0903264655, '台北市東山路100號',        85/7/29,     106/3/16 ,   '女'),

		   ('珍娜 ',  'Janna42654',  '454df6d4f','Janna@gmail.com'    ,0996355555, '台中市海港街27號',         85/4/29,     105/9/16 ,   '女'),

		   ('伊莉絲 ',  'Elise6565',  '54d5f4d5f','Elise@gmail.com'   ,0954215354, '台北市師大路5號',          87/8/19,     106/10/14 ,  '女'),

		   ('布蘭德 ',  ' Brand542184','d97f741ds','Brand@gmail.com'  ,0916235975, '台北市市新路122號',        79/12/1,     109/1/27 ,  '男'),

		   ('庫奇 ',  'Corki4546',  'df55f4545',   'Corki@gmail.com'  ,0945423456, '台北市外江街10號',        89/9/19,     106/3/16 , '男'),

		   ('娜米 ',  'Nami6544',  '1313sfsf',     'Nami@gmail.com'   ,0924154456, '台南市富大路1號',         87/12/13,     107/7/25 , '女'),

		   ('阿璃',  'Ahri687',    'sww8597',   'Ahri@gmail.com'      ,0910440545, '台北市萬大路四段5號',       84/7/5,      90/1/10 , '女'),

		   ('阿卡莉','Akali7129',  'aka123' ,   'Akali@gmail.com'     ,0910130901, '台北市北新路5號',           74/11/19,    91/12/15, '女'),

		   ('賽恩 ',  'Sions9d89',  'eee9898sd',   'Sion@gmail.com'   ,0999416485, '南投縣中正路14號',         81/12/5,     108/9/14 , '男') ;
	