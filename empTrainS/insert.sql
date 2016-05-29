
--insert into train_plan_info


insert into train_plan_info(TRAIN_PLAN_ID,TRAIN_PLAN_NAME,TRAIN_PLAN_YEAR,TRAIN_PLAN_TYPE,START_TIME,END_TIME,IS_FINISH) values ("001","数据库及编程知识",
"2016","新员工入场培训","2016/04/09","2016/05/09","已完成");

insert into train_plan_info(TRAIN_PLAN_ID,TRAIN_PLAN_NAME,TRAIN_PLAN_YEAR,TRAIN_PLAN_TYPE,START_TIME,END_TIME,IS_FINISH) values ("002","电气培训计划",
"2016","新员工入场培训","2016/05/09","2016/06/09","培训中");

insert into train_plan_info(TRAIN_PLAN_ID,TRAIN_PLAN_NAME,TRAIN_PLAN_YEAR,TRAIN_PLAN_TYPE,START_TIME,END_TIME,IS_FINISH) values ("003","燃运培训计划",
"2016","新员工入场培训","2016/04/01","2016/05/29","培训中");

insert into train_plan_info(TRAIN_PLAN_ID,TRAIN_PLAN_NAME,TRAIN_PLAN_YEAR,TRAIN_PLAN_TYPE,START_TIME,END_TIME,IS_FINISH) values ("004","汽机培训计划",
"2016","新员工入场培训","2016/03/02","2016/04/09","已完成");



--insert into train_plan_item

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("001001","001","oracle数据库",
"熟练使用oracle数据库","32","郭飞","计算机");

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("001002","001","mysql数据库",
"熟练使用mysql数据库","32","练恒","计算机");

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("001003","001","java程序语言",
"熟练使用java程序语言编程","31","李钊文","计算机");

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("002001","002","电气初级",
"掌握电气基本知识","32","好傻傻","电气");

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("002002","002","电气中级",
"掌握电气中级知识","32","好傻傻","电气");

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("002003","002","电气高级",
"掌握电气高级知识","32","好傻傻","电气");

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("003001","003","燃运节能基础篇",
"掌握燃运节能基本知识","32","王一枚","燃运");

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("003002","003","燃运节能进阶篇",
"掌握燃运节能进阶知识","31","王一枚","燃运");


insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("003003","003","燃运节能高级篇",
"掌握燃运节能高级知识","30","王一枚","燃运");

insert into train_plan_item(TRAIN_ITEM_ID,TRAIN_PLAN_ID,TRAIN_CONTENT,TRAIN_PURPOSE,CLASS_COUNT,TEACHER,ZY_NAME) values ("004001","004","汽机系统概述",
"掌握汽机系统的基本知识","20","丁英杰","汽机");
	



	
	