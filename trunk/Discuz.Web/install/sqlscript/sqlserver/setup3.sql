﻿INSERT INTO [dnt_forums] ([parentid], [layer], [pathlist], [parentidlist], [subforumcount], [name], [status], [colcount], [displayorder], [templateid], [topics], [curtopics], [posts], [todayposts], [lasttid], [lasttitle], [lastpost], [lastposterid], [lastposter], [allowsmilies], [allowrss], [allowhtml], [allowbbcode], [allowimgcode], [allowblog], [istrade], [allowpostspecial], [allowspecialonly], [alloweditrules], [allowthumbnail], [allowtag], [recyclebin], [modnewposts], [jammer], [disablewatermark], [inheritedmod], [autoclose]) VALUES (0, 0, N'<a href="showforum-1.aspx">默认分类</a>', N'0', 1, N'默认分类', 1, 1, 1, 0, 2, 0, 2, 2, 2, N'Server 2003下如何配置Silverlight', CAST(0x00009D1100DBBA00 AS DateTime), 1, N'admin', 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT INTO [dnt_forumfields] VALUES (1,'', '', '', '', '', '', '', '', '', '', '', '', '', '', '',0,0,0,0,'','','','');


INSERT INTO [dnt_forums] ([parentid], [layer], [pathlist], [parentidlist], [subforumcount], [name], [status], [colcount], [displayorder], [templateid], [topics], [curtopics], [posts], [todayposts], [lasttid], [lasttitle], [lastpost], [lastposterid], [lastposter], [allowsmilies], [allowrss], [allowhtml], [allowbbcode], [allowimgcode], [allowblog], [istrade], [allowpostspecial], [allowspecialonly], [alloweditrules], [allowthumbnail], [allowtag], [recyclebin], [modnewposts], [jammer], [disablewatermark], [inheritedmod], [autoclose]) VALUES (1, 1, N'<a href="showforum-1.aspx">默认分类</a><a href="showforum-2.aspx">默认版块</a>', N'1', 0, N'默认版块', 1, 1, 2, 0, 2, 2, 2, 2, 2, N'Server 2003下如何配置Silverlight', CAST(0x00009D1100DBBA00 AS DateTime), 1, N'admin', 1, 1, 0, 1, 1, 0, 0, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0)
INSERT INTO [dnt_forumfields] VALUES (2,'', '', '', '', '', '', '', '', '', '', '', '', '', '', '默认版块说明文字',0,0,0,0,'','','','');


INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (1, 0, 1, '管理员', 0, 0, 9,'' , '', 255, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 3, 0, 0, 0, 0, 1,1, 1,1, 1, 0, 1, 1, 1, 1, 1, 0, 30, 200, 500, 99999999,99999999, '', '1,True,extcredits1,威望,-50,50,300|2,False,extcredits2,金钱,-50,50,300|3,False,extcredits3,,,,|4,False,extcredits4,,,,|5,False,extcredits5,,,,|6,False,extcredits6,,,,|7,False,extcredits7,,,,|8,False,extcredits8,,,,', 1,99999999, 99999999, 1, 1, 1, 100, 1, 1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (2, 0, 1, '超级版主', 0, 0, 8, '', '', 255, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 3, 20, 120, 300, 99999999, 99999999, '', '1,True,extcredits1,威望,-50,50,100|2,False,extcredits2,金钱,-30,30,50|3,False,extcredits3,,,,|4,False,extcredits4,,,,|5,False,extcredits5,,,,|6,False,extcredits6,,,,|7,False,extcredits7,,,,|8,False,extcredits8,,,,', 1, 99999999, 99999999, 1, 1, 1, 90, 1, 1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (3, 0, 1, '版主', 0, 0, 7, '', '', 200, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 3, 10, 80, 200, 4194304, 33554432, '', '1,True,extcredits1,威望,-30,30,50|2,False,extcredits2,金钱,-10,10,30|3,False,extcredits3,,,,|4,False,extcredits4,,,,|5,False,extcredits5,,,,|6,False,extcredits6,,,,|7,False,extcredits7,,,,|8,False,extcredits8,,,,', 1, 33554432, 33554432, 1, 1, 1, 80, 1, 1);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 1, '禁止发言', 0, 0, 0,'', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 1, '禁止访问', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 1, '禁止 IP', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 1, '游客', 0, 0, 0, '', '', 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 1, '等待验证会员', 0, 0, 0, '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 50, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 0, '乞丐', -9999999, 0, 0, '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 0, '新手上路', 0, 50, 1, '', '', 10, 1, 1, 1, 0, 0, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 20, 80, 524288, 1048576, '', '', 1, 1048576, 1048576, 0, 0, 0, 0, 0, 1);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 0, '注册会员', 50, 200, 2, '', '', 20, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 3, 0, 30, 100, 1048576, 2097152, '', '', 1, 2097152, 2097152, 1, 1, 1, 20, 0, 1);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 0, '中级会员', 200, 500, 3, '', '', 30, 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, 2, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 3, 0, 50, 150, 2097152, 4194304, '', '', 1, 4194304, 4194304, 1, 1, 1, 30, 1, 1);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 0, '高级会员', 500, 1000, 4, '', '', 50, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 3, 0, 60, 200, 4194304, 8388608, '', '', 1, 8388608, 8388608, 1, 1, 1, 50, 1, 1);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 0, '金牌会员', 1000, 3000, 6, '', '', 70, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 3, 20, 80, 300, 4194304, 16777216, '', '', 1, 16777216, 16777216, 1, 1, 1, 60, 1, 1);
INSERT INTO [dnt_usergroups] ([radminid],[type],[system],[grouptitle],[creditshigher],[creditslower],[stars],[color],[groupavatar],[readaccess],[allowvisit],[allowpost],[allowreply],[allowpostpoll],[allowdirectpost],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowcusbbcode],[allownickname],[allowsigbbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[disableperiodctrl],[reasonpm],[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[allowspace],[maxspaceattachsize],[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[allowtrade],[allowdiggs]) VALUES (0, 0, 0, '论坛元老', 3000, 9999999, 8, '', '', 100, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 3, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 3, 0, 100, 500, 4194304, 33554432, '', '', 1, 33554432, 33554432, 1, 1, 1, 70, 1, 1);

INSERT INTO [dnt_onlinelist] VALUES (0, 999, '用户','member.gif');
INSERT INTO [dnt_onlinelist] VALUES (1, 1, '管理员','admin.gif');
INSERT INTO [dnt_onlinelist] VALUES (2, 2, '超级版主','supermoder.gif');
INSERT INTO [dnt_onlinelist] VALUES (3, 3, '版主','moder.gif');
INSERT INTO [dnt_onlinelist] VALUES (4, 4, '禁止发言','');
INSERT INTO [dnt_onlinelist] VALUES (5, 5, '禁止访问','');
INSERT INTO [dnt_onlinelist] VALUES (6, 6, '禁止 IP','');
INSERT INTO [dnt_onlinelist] VALUES (7, 7, '游客','guest.gif');
INSERT INTO [dnt_onlinelist] VALUES (8, 8, '等待验证会员','');
INSERT INTO [dnt_onlinelist] VALUES (9, 9, '乞丐','');
INSERT INTO [dnt_onlinelist] VALUES (10, 10, '新手上路','');
INSERT INTO [dnt_onlinelist] VALUES (11, 11, '注册会员','');
INSERT INTO [dnt_onlinelist] VALUES (12, 12, '中级会员','');
INSERT INTO [dnt_onlinelist] VALUES (13, 13, '高级会员','');
INSERT INTO [dnt_onlinelist] VALUES (14, 14, '金牌会员','');
INSERT INTO [dnt_onlinelist] VALUES (15, 15, '论坛元老','');

INSERT INTO [dnt_admingroups] VALUES (1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO [dnt_admingroups] VALUES (2, 1, 0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO [dnt_admingroups] VALUES (3, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1);

INSERT INTO [dnt_templates] (directory,name,author,createdate,ver,fordntver,copyright) VALUES('default','Default','Discuz!NT','2008-12-1','3.0','3.0','Copyright 2009 Comsenz Inc.');

INSERT [dnt_statistics] ([totaltopic], [totalpost], [totalusers], [lastusername], [lastuserid], [highestonlineusercount], [highestonlineusertime], [yesterdayposts], [highestposts], [highestpostsdate]) VALUES (2, 2, 1, N'', 0, 2, CAST(0x9D100462 AS SmallDateTime), 0, 0, N'')

INSERT INTO [dnt_smilies] VALUES (1, 0, 0, '默认表情', 'default');
INSERT INTO [dnt_smilies] VALUES (2, 0, 1, ':-o', 'default/0.gif');
INSERT INTO [dnt_smilies] VALUES (3, 0, 1, ':~', 'default/1.gif');
INSERT INTO [dnt_smilies] VALUES (4, 0, 1, ':-|', 'default/10.gif');
INSERT INTO [dnt_smilies] VALUES (5, 0, 1, ':@', 'default/11.gif');
INSERT INTO [dnt_smilies] VALUES (6, 0, 1, ':Z', 'default/12.gif');
INSERT INTO [dnt_smilies] VALUES (7, 0, 1, ':D', 'default/13.gif');
INSERT INTO [dnt_smilies] VALUES (8, 0, 1, ':)', 'default/14.gif');
INSERT INTO [dnt_smilies] VALUES (9, 0, 1, ':(', 'default/15.gif');
INSERT INTO [dnt_smilies] VALUES (10, 0, 1, ':+', 'default/16.gif');
INSERT INTO [dnt_smilies] VALUES (11, 0, 1, ':#', 'default/17.gif');
INSERT INTO [dnt_smilies] VALUES (12, 0, 1, ':Q', 'default/18.gif');
INSERT INTO [dnt_smilies] VALUES (13, 0, 1, ':T', 'default/19.gif');
INSERT INTO [dnt_smilies] VALUES (14, 0, 1, ':*', 'default/2.gif');
INSERT INTO [dnt_smilies] VALUES (15, 0, 1, ':P', 'default/20.gif');
INSERT INTO [dnt_smilies] VALUES (16, 0, 1, ':-D', 'default/21.gif');
INSERT INTO [dnt_smilies] VALUES (17, 0, 1, ':d', 'default/22.gif');
INSERT INTO [dnt_smilies] VALUES (18, 0, 1, ':o', 'default/23.gif');
INSERT INTO [dnt_smilies] VALUES (19, 0, 1, ':g', 'default/24.gif');
INSERT INTO [dnt_smilies] VALUES (20, 0, 1, ':|-)', 'default/25.gif');
INSERT INTO [dnt_smilies] VALUES (21, 0, 1, ':!', 'default/26.gif');
INSERT INTO [dnt_smilies] VALUES (22, 0, 1, ':L', 'default/27.gif');
INSERT INTO [dnt_smilies] VALUES (23, 0, 1, ':giggle', 'default/28.gif');
INSERT INTO [dnt_smilies] VALUES (24, 0, 1, ':smoke', 'default/29.gif');
INSERT INTO [dnt_smilies] VALUES (25, 0, 1, ':|', 'default/3.gif');
INSERT INTO [dnt_smilies] VALUES (26, 0, 1, ':f', 'default/30.gif');
INSERT INTO [dnt_smilies] VALUES (27, 0, 1, ':-S', 'default/31.gif');
INSERT INTO [dnt_smilies] VALUES (28, 0, 1, ':?', 'default/32.gif');
INSERT INTO [dnt_smilies] VALUES (29, 0, 1, ':x', 'default/33.gif');
INSERT INTO [dnt_smilies] VALUES (30, 0, 1, ':yun', 'default/34.gif');
INSERT INTO [dnt_smilies] VALUES (31, 0, 1, ':8', 'default/35.gif');
INSERT INTO [dnt_smilies] VALUES (32, 0, 1, ':!', 'default/36.gif');
INSERT INTO [dnt_smilies] VALUES (33, 0, 1, ':!!!', 'default/37.gif');
INSERT INTO [dnt_smilies] VALUES (34, 0, 1, ':xx', 'default/38.gif');
INSERT INTO [dnt_smilies] VALUES (35, 0, 1, ':bye', 'default/39.gif');
INSERT INTO [dnt_smilies] VALUES (36, 0, 1, ':8-)', 'default/4.gif');
INSERT INTO [dnt_smilies] VALUES (37, 0, 1, ':pig', 'default/40.gif');
INSERT INTO [dnt_smilies] VALUES (38, 0, 1, ':cat', 'default/41.gif');
INSERT INTO [dnt_smilies] VALUES (39, 0, 1, ':dog', 'default/42.gif');
INSERT INTO [dnt_smilies] VALUES (40, 0, 1, ':hug', 'default/43.gif');
INSERT INTO [dnt_smilies] VALUES (41, 0, 1, ':$$', 'default/44.gif');
INSERT INTO [dnt_smilies] VALUES (42, 0, 1, ':(!)', 'default/45.gif');
INSERT INTO [dnt_smilies] VALUES (43, 0, 1, ':cup', 'default/46.gif');
INSERT INTO [dnt_smilies] VALUES (44, 0, 1, ':cake', 'default/47.gif');
INSERT INTO [dnt_smilies] VALUES (45, 0, 1, ':li', 'default/48.gif');
INSERT INTO [dnt_smilies] VALUES (46, 0, 1, ':bome', 'default/49.gif');
INSERT INTO [dnt_smilies] VALUES (47, 0, 1, ':<', 'default/5.gif');
INSERT INTO [dnt_smilies] VALUES (48, 0, 1, ':kn', 'default/50.gif');
INSERT INTO [dnt_smilies] VALUES (49, 0, 1, ':football', 'default/51.gif');
INSERT INTO [dnt_smilies] VALUES (50, 0, 1, ':music', 'default/52.gif');
INSERT INTO [dnt_smilies] VALUES (51, 0, 1, ':shit', 'default/53.gif');
INSERT INTO [dnt_smilies] VALUES (52, 0, 1, ':coffee', 'default/54.gif');
INSERT INTO [dnt_smilies] VALUES (53, 0, 1, ':eat', 'default/55.gif');
INSERT INTO [dnt_smilies] VALUES (54, 0, 1, ':pill', 'default/56.gif');
INSERT INTO [dnt_smilies] VALUES (55, 0, 1, ':rose', 'default/57.gif');
INSERT INTO [dnt_smilies] VALUES (56, 0, 1, ':fade', 'default/58.gif');
INSERT INTO [dnt_smilies] VALUES (57, 0, 1, ':kiss', 'default/59.gif');
INSERT INTO [dnt_smilies] VALUES (58, 0, 1, ':$', 'default/6.gif');
INSERT INTO [dnt_smilies] VALUES (59, 0, 1, ':heart:', 'default/60.gif');
INSERT INTO [dnt_smilies] VALUES (60, 0, 1, ':break:', 'default/61.gif');
INSERT INTO [dnt_smilies] VALUES (61, 0, 1, ':metting:', 'default/62.gif');
INSERT INTO [dnt_smilies] VALUES (62, 0, 1, ':gift:', 'default/63.gif');
INSERT INTO [dnt_smilies] VALUES (63, 0, 1, ':phone:', 'default/64.gif');
INSERT INTO [dnt_smilies] VALUES (64, 0, 1, ':time:', 'default/65.gif');
INSERT INTO [dnt_smilies] VALUES (65, 0, 1, ':email:', 'default/66.gif');
INSERT INTO [dnt_smilies] VALUES (66, 0, 1, ':TV:', 'default/67.gif');
INSERT INTO [dnt_smilies] VALUES (67, 0, 1, ':sun:', 'default/68.gif');
INSERT INTO [dnt_smilies] VALUES (68, 0, 1, ':moon:', 'default/69.gif');
INSERT INTO [dnt_smilies] VALUES (69, 0, 1, ':X', 'default/7.gif');
INSERT INTO [dnt_smilies] VALUES (70, 0, 1, ':strong:', 'default/70.gif');
INSERT INTO [dnt_smilies] VALUES (71, 0, 1, ':weak:', 'default/71.gif');
INSERT INTO [dnt_smilies] VALUES (72, 0, 1, ':share:', 'default/72.gif');
INSERT INTO [dnt_smilies] VALUES (73, 0, 1, ':v:', 'default/73.gif');
INSERT INTO [dnt_smilies] VALUES (74, 0, 1, ':duoduo:', 'default/74.gif');
INSERT INTO [dnt_smilies] VALUES (75, 0, 1, ':MM:', 'default/75.gif');
INSERT INTO [dnt_smilies] VALUES (76, 0, 1, ':hh:', 'default/76.gif');
INSERT INTO [dnt_smilies] VALUES (77, 0, 1, ':mm:', 'default/77.gif');
INSERT INTO [dnt_smilies] VALUES (78, 0, 1, ':beer:', 'default/78.gif');
INSERT INTO [dnt_smilies] VALUES (79, 0, 1, ':pesi:', 'default/79.gif');
INSERT INTO [dnt_smilies] VALUES (80, 0, 1, ':Zz', 'default/8.gif');
INSERT INTO [dnt_smilies] VALUES (81, 0, 1, ':xigua:', 'default/80.gif');
INSERT INTO [dnt_smilies] VALUES (82, 0, 1, ':yu:', 'default/81.gif');
INSERT INTO [dnt_smilies] VALUES (83, 0, 1, ':duoyun:', 'default/82.gif');
INSERT INTO [dnt_smilies] VALUES (84, 0, 1, ':snowman:', 'default/83.gif');
INSERT INTO [dnt_smilies] VALUES (86, 0, 1, ':xingxing:', 'default/84.gif');
INSERT INTO [dnt_smilies] VALUES (87, 0, 1, ':male:', 'default/85.gif');
INSERT INTO [dnt_smilies] VALUES (88, 0, 1, ':female:', 'default/86.gif');
INSERT INTO [dnt_smilies] VALUES (89, 0, 1, ':t(', 'default/9.gif');
	
	
INSERT INTO [dnt_bbcodes] VALUES (0,'flash','flash.gif','[flash]http://localhost/abc.swf[/flash]',1,1,'在页面中插入flash影片','<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="550" height="400"><param name="allowScriptAccess" value="sameDomain"/><param name="wmode" value="opaque"/><param name="movie" value="{1}"/><param name="quality" value="high"/><param name="bgcolor" value="#ffffff"/><embed src="{1}" quality="high" bgcolor="#ffffff" width="550" height="400" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="transparent"/>
</object>','请输入flash地址','http://');
--INSERT INTO [dnt_bbcodes] VALUES (1,'wmv','wmv.gif','[wmv=200,200]http://localhost/123.avi[/wmv]',3,1,'在帖子中加入 Windows Media Player 格式的视频内容','<object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width={2} height={3}><param name=ShowStatusBar value=-1><param name=Filename value={1}><embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src={1}  width={2} height={3}></embed></object>','请输入Windows Media Player视频文件地址,请输入Windows Media Player视频文件的显示宽度,请输入Windows Media Player视频文件的显示高度','http://,200,200');
--INSERT INTO [dnt_bbcodes] VALUES (1,'wma','wma.gif','[wma]http://localhost/123.mp3[/wma]',1,1,'在帖子中加入 Windows Media Player 格式的音频内容','<object classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6" width="260" height="64"><param name="autostart" value="0" /><param name="url" value="{1}" /><embed src="{1}" autostart="0" type="video/x-ms-wmv" width="260" height="42"></embed></object>','请输入 Windows Media Player 音频的地址','http://');
INSERT INTO [dnt_bbcodes] VALUES (0,'rm','rm.gif','[rm=200,200]http://localhost/123.rm[/rm]',3,1,'在帖子中插入RealPlayer视频','<object classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="{2}" height="{3}"><param name="src" value="{1}" /><param name="controls" value="imagewindow" /><param name="console" value="{1}" /><embed src="{1}" type="audio/x-pn-realaudio-plugin" controls="IMAGEWINDOW" console="{1}" width="{2}" height="360"></embed></object><br style="height:0" /><object classid="CLSID:CFCDAA03-8BE4-11CF-B84B-0020AFBBCCFA" width="{2}" height="32"><param name="src" value="{1}" /><param name="controls" value="controlpanel" /><param name="console" value="{1}" /><embed src="{1}" type="audio/x-pn-realaudio-plugin" controls="ControlPanel" console="{1}" width="{2}" height="32"></embed></object>','请输入RealPlayer视频的地址,请输入RealPlayer视频的宽度,请输入RealPlayer视频的高度','http://,200,200');
INSERT INTO [dnt_bbcodes] VALUES (0,'ra','ra.gif','[ra]http://localhost/123.ra[/ra]',1,1,'在帖子中插入RealPlayer音频','<object classid="clsid:CFCDAA03-8BE4-11CF-B84B-0020AFBBCCFA" width="400" height="30"><param name="src" value="{1}" /><param name="controls" value="controlpanel" /><param name="console" value="{1}" /><embed src="{1}" type="audio/x-pn-realaudio-plugin" console="{1}" controls="ControlPanel" width="400" height="30"></embed></object>','请输入RealPlayer音频地址','http://');
INSERT INTO [dnt_bbcodes] VALUES (0,'fly','fly.gif','[fly]示例文字[/fly]',1,1,'在帖子中插入滚动文字','<marquee width="90%" behavior="alternate" scrollamount="3">{1}</marquee>','请输入滚动文字','滚动文字');
INSERT INTO [dnt_bbcodes] VALUES (0,'silverlight','silverlight.gif','[silverlight]http://localhost/123.wmv[/silverlight]',3,1,'在帖子中使用Silverlight播放器', '<script type="text/javascript" src="silverlight/player/showtopiccontainer.js"></script><div id="divPlayer_{RANDOM}"></div><script>Silverlight.InstallAndCreateSilverlight("1.0",document.getElementById("divPlayer_{RANDOM}"),installExperienceHTML,"InstallPromptDiv",function(){new StartPlayer_0("divPlayer_{RANDOM}", parseInt("{2}"), parseInt("{3}"), "{1}", forumpath)})</script>', '请输入音频或视频的地址,请输入音频或视频的宽度,请输入视频的高度(音频无效)', 'http://,400,300');


INSERT INTO [dnt_topicidentify] VALUES ('找抽帖', 'zc.gif');
INSERT INTO [dnt_topicidentify] VALUES ('变态帖', 'bt.gif');
INSERT INTO [dnt_topicidentify] VALUES ('吵架帖', 'cj.gif');
INSERT INTO [dnt_topicidentify] VALUES ('炫耀帖', 'xy.gif');
INSERT INTO [dnt_topicidentify] VALUES ('炒作帖', 'cz.gif');
INSERT INTO [dnt_topicidentify] VALUES ('委琐帖', 'ws.gif');
INSERT INTO [dnt_topicidentify] VALUES ('火星帖', 'hx.gif');
INSERT INTO [dnt_topicidentify] VALUES ('精彩帖', 'jc.gif');
INSERT INTO [dnt_topicidentify] VALUES ('无聊帖', 'wl.gif');
INSERT INTO [dnt_topicidentify] VALUES ('温情帖', 'wq.gif');
INSERT INTO [dnt_topicidentify] VALUES ('XX帖', 'xx.gif');
INSERT INTO [dnt_topicidentify] VALUES ('跟风帖', 'gf.gif');
INSERT INTO [dnt_topicidentify] VALUES ('垃圾帖', 'lj.gif');
INSERT INTO [dnt_topicidentify] VALUES ('推荐帖', 'tj.gif');
INSERT INTO [dnt_topicidentify] VALUES ('搞笑帖', 'gx.gif');
INSERT INTO [dnt_topicidentify] VALUES ('悲情帖', 'bq.gif');
INSERT INTO [dnt_topicidentify] VALUES ('牛帖', 'nb.gif');


INSERT INTO [dnt_attachtypes] VALUES ('jpg',2048000);
INSERT INTO [dnt_attachtypes] VALUES ('gif',1024000);
INSERT INTO [dnt_attachtypes] VALUES ('png',2048000);
INSERT INTO [dnt_attachtypes] VALUES ('zip',2048000);
INSERT INTO [dnt_attachtypes] VALUES ('rar',2048000);
INSERT INTO [dnt_attachtypes] VALUES ('jpeg',2048000);


INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('用户须知', '', 0, 1);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('论坛常见问题', '', 0, 2);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('个人空间常见问题', '', 0, 3);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('相册常见问题', '', 0, 4);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我必须要注册吗？', '这取决于管理员如何设置 Discuz!NT 论坛的用户组权限选项，您甚至有可能必须在注册成正式用户后后才能浏览帖子。当然，在通常情况下，您至少应该是正式用户才能发新帖和回复已有帖子。请 <a href="register.aspx" target="_blank">点击这里</a> 免费注册成为我们的新用户！<br /><br />强烈建议您注册，这样会得到很多以游客身份无法实现的功能。', 1, 1);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何登录论坛？', '如果您已经注册成为该论坛的会员，那么您只要通过访问页面右上的<a href="login.aspx" target="_blank">登录</a>，进入登陆界面填写正确的用户名和密码（如果您设有安全提问，请选择正确的安全提问并输入对应的答案），点击“提交”即可完成登陆如果您还未注册请点击这里。<br /><br />如果需要保持登录，请选择相应的 Cookie 时间，在此时间范围内您可以不必输入密码而保持上次的登录状态。', 1, 2);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('忘记我的登录密码，怎么办？', '当您忘记了用户登录的密码，您可以通过注册时填写的电子邮箱重新设置一个新的密码。点击登录页面中的 <a href="getpassword.aspx" target="_blank">取回密码</a>，按照要求填写您的个人信息，系统将自动发送重置密码的邮件到您注册时填写的 Email 信箱中。如果您的 Email 已失效或无法收到信件，请与论坛管理员联系。', 1, 3);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何使用个性化头像', '在<a href="usercppreference.aspx" target="_blank">用户中心</a>中的 个人设置  -> 个性设置，可以使用论坛自带的头像或者自定义的头像。', 1, 4);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何修改登录密码', '在<a href="usercpnewpassword.aspx" target="_blank">用户中心</a>中的 个人设置 -> 更改密码，填写“原密码”，“新密码”，“确认新密码”。点击“提交”，即可修改。', 1, 5);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何使用个性化签名和昵称', '在<a href="usercpprofile.aspx" target="_blank">用户中心</a>中的 个人设置 -> 编辑个人档案，有一个“昵称”和“个人签名”的选项，可以在此设置。', 1, 6);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何发表新主题，以及投票', '在论坛版块中，点“发帖”，点击即可进入功能齐全的发帖界面。<br /><br />注意：需要发布投票时请在发帖界面的下方开启投票选项进行设置即可。如发布普通主题，直接点击“发帖”，当然您也可以使用版块下面的“快速发帖”发表新帖(如果此选项打开)。一般论坛都设置为需要登录后才能发帖。', 2, 1);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何发表回复', '回复有分三种：第一、帖子最下方的快速回复； 第二、在您想回复的楼层点击右下方“回复”； 第三、完整回复页面，点击本页“新帖”旁边的“回复”。', 2, 2);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何编辑自己的帖子', '在帖子的右上角，有编辑，回复，报告等选项，点击编辑，就可以对帖子进行编辑。', 2, 3);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何出售购买主题', '<li>出售主题：当您进入发贴界面后，如果您所在的用户组有发买卖贴的权限，在“售价(金钱)”后面填写主题的价格，这样其他用户在查看这个帖子的时候就需要进入交费的过程才可以查看帖子。</li><li>购买主题：浏览你准备购买的帖子，在帖子的相关信息的下面有[查看付款记录] [购买主题] [返回上一页] 等链接，点击“购买主题”进行购买。</li>', 2, 4);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何上传附件', '<li>发表新主题的时候上传附件，步骤为：写完帖子标题和内容后点上传附件右方的浏览，然后在本地选择要上传附件的具体文件名，最后点击发表话题。</li><li>发表回复的时候上传附件，步骤为：写完回复楼主的内容，然后点上传附件右方的浏览，找到需要上传的附件，点击发表回复。</li>', 2, 5);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何实现发帖时图文混排效果', '<li>发表新主题的时候点击上传附件左侧的“[插入]”链接把附件标记插入到帖子中适当的位置即可。</li>', 2, 6);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何使用Discuz!NT代码', '<table width="99%" cellpadding="2" cellspacing="2"><tr><th width="50%">Discuz!NT代码</th><th width="402">效果</th></tr><tr><td>[b]粗体文字 Abc[/b]</td><td><strong>粗体文字 Abc</strong></td></tr><tr><td>[i]斜体文字 Abc[/i]</td><td><i>斜体文字 Abc</i></td></tr><tr><td>[u]下划线文字 Abc[/u]</td><td><u>下划线文字 Abc</u></td></tr><tr><td>[color=red]红颜色[/color]</td><td><font color="red">红颜色</font></td></tr><tr><td>[size=3]文字大小为 3[/size] </td><td><font size="3">文字大小为 3</font></td></tr><tr><td>[font=仿宋]字体为仿宋[/font] </td><td><font face="仿宋">字体为仿宋</font></td></tr><tr><td>[align=Center]内容居中[/align] </td><td><div align="center">内容居中</div></td></tr><tr><td>[url]http://www.comsenz.com[/url]</td><td><a href="http://www.comsenz.com" target="_blank">http://www.comsenz.com</a>（超级链接）</td></tr><tr><td>[url=http://nt.discuz.net]Discuz!NT 论坛[/url]</td><td><a href="http://nt.discuz.net" target="_blank">Discuz!NT 论坛</a>（超级链接）</td></tr><tr><td>[email]myname@mydomain.com[/email]</td><td><a href="mailto:myname@mydomain.com">myname@mydomain.com</a>（E-mail链接）</td></tr><tr><td>[email=support@discuz.net]Discuz!NT 技术支持[/email]</td><td><a href="mailto:support@discuz.net">Discuz!NT 技术支持（E-mail链接）</a></td></tr><tr><td>[quote]Discuz!NT Board 是由康盛创想（北京）科技有限公司开发的论坛软件[/quote] </td><td><div style="font-size: 12px"><br /><br /><div class="quote"><h5>引用:</h5><blockquote>原帖由 <i>admin</i> 于 2006-12-26 08:45 发表<br />Discuz!NT Board 是由康盛创想（北京）科技有限公司开发的论坛软件</blockquote></div></td></tr> <tr><td>[code]Discuz!NT Board 是由康盛创想（北京）科技有限公司开发的论坛软件[/code] </td><td><div style="font-size: 12px"><br /><br /><div class="blockcode"><h5>代码:</h5><code id="code0">Discuz!NT Board 是由康盛创想（北京）科技有限公司开发的论坛软件</code></div></td></tr><tr><td>[hide]隐藏内容 Abc[/hide]</td><td>效果:只有当浏览者回复本帖时，才显示其中的内容，否则显示为“<b>**** 隐藏信息 跟帖后才能显示 *****</b>”</td></tr><tr><td>[list][*]列表项 #1[*]列表项 #2[*]列表项 #3[/list]</td><td><ul><li>列表项 ＃1</li><li>列表项 ＃2</li><li>列表项 ＃3 </li></ul></td></tr><tr><td>[img]http://nt.discuz.net/templates/default/images/logo.gif[/img] </td><td>帖子内显示为：<img src="http://nt.discuz.net/templates/default/images/logo.gif" /></td></tr><tr><td>[img=88,31]http://nt.discuz.net/templates/default/images/logo.gif[/img] </td><td>帖子内显示为：<img src="http://nt.discuz.net/templates/default/images/logo.gif" /></td> </tr> <tr><td>[fly]飞行的效果[/fly]</td><td><marquee scrollamount="3" behavior="alternate" width="90%">飞行的效果</marquee></td></tr><tr><td>[flash]Flash网页地址 [/flash] </td><td>帖子内嵌入 Flash 动画</td></tr><tr><td>X[sup]2[/sup]</td><td>X<sup>2</sup></td></tr><tr><td>X[sub]2[/sub]</td><td>X<sub>2</sub></td></tr></table>', 2, 7);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何使用短消息功能', '您登录后，点击导航栏上的短消息按钮，即可进入短消息管理。点击[发送短消息]按钮，在"发送到"后输入收信人的用户名，填写完标题和内容，点提交(或按 Ctrl+Enter 发送)即可发出短消息。<br /><br />如果要保存到发件箱，以在提交前勾选"保存到发件箱中"前的复选框。<ul><li>点击收件箱可打开您的收件箱查看收到的短消息。</li><li>点击发件箱可查看保存在发件箱里的短消息。 </li></ul>', 2, 8);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何查看论坛会员数据', '点击导航栏上面的会员，然后显示的是此论坛的会员数据。注：需要论坛管理员开启允许你查看会员资料才可看到。', 2, 9);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何使用搜索', '点击导航栏上面的搜索，输入搜索的关键字并选择一个范围，就可以检索到您有权限访问论坛中的相关的帖子。', 2, 10);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何使用“我的”功能', '<li>会员必须首先<a href="login.aspx" target="_blank">登录</a>，没有用户名的请先<a href="register.aspx" target="_blank">注册</a>；</li><li>登录之后在论坛的左上方会出现一个“我的”的超级链接，点击这个链接之后就可进入到有关于您的信息。</li>', 2, 11);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何向管理员举报帖子', '打开一个帖子，在帖子的右上角可以看到："举报” | "树型“ | "收藏" | "编辑" | "删除" |"评分" 等等几个按钮，单击“举报”按钮即可完成举报某个帖子的操作。', 2, 12);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何“收藏”帖子', '当你浏览一个帖子时，在它的右上角可以看到："举报” | "树型“ | "收藏" | "编辑" | "删除" |"评分"，点击相对应的文字连接即可完成相关的操作。', 2, 13);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何使用RSS订阅', '在论坛的首页和进入版块的页面的右上角就会出现一个rss订阅的小图标<img src="templates/default/images/icon_feed.gif" border="0">，鼠标点击之后将出现本站点的rss地址，你可以将此rss地址放入到你的rss阅读器中进行订阅。', 2, 14);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何清除Cookies', '介绍3种常用浏览器的Cookies清除方法(注：此方法为清除全部的Cookies,请谨慎使用)<ul><li>Internet Explorer: 工具（选项）内的Internet选项→常规选项卡内，IE6直接可以看到删除Cookies的按钮点击即可，IE7为“浏 览历史记录”选项内的删除点击即可清空Cookies。对于Maxthon,腾讯TT等IE核心浏览器一样适用。 </li><li>FireFox:工具→选项→隐私→Cookies→显示Cookie里可以对Cookie进行对应的删除操作。 </li><li>Opera:工具→首选项→高级→Cookies→管理Cookies即可对Cookies进行删除的操作。</li></ul>', 2, 15);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何使用表情代码', '表情是一些用字符表示的表情符号，如果打开表情功能，Discuz!NT 会把一些符号转换成小图像，显示在帖子中，更加美观明了。同时Discuz!NT支持表情分类，分页功能。插入表情时只需使用鼠标点击表情即可。', 2, 16);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何开通个人空间', '如果您有权限开通“我的个人空间”，当用户登录论坛以后在论坛首页，在搜索框下方有申请个人空间连接点击提交申请，如果管理员已经开启了手动开通则需要等待管理员来审核通过您的申请', 3, 1);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何在个人空间发表日志', '如果您已经开通“个人空间”，当用户登录论坛以后在论坛用户中心 -> 个人空间 -> 管理文章内可以进行发表和管理日志的操作。', 3, 2);
INSERT INTO [dnt_help] ([title], [message], [pid], [orderby]) VALUES ('我如何在相册中上传图片', '如果您已经开通“相册功能”，当用户登录论坛以后在论坛用户中心 -> 相册 -> 管理相册内可以进行发表和管理相册的操作。', 4, 1);
	
	
INSERT INTO [dnt_medals] VALUES (1,'Medal No.1',1,'Medal1.gif');
INSERT INTO [dnt_medals] VALUES (2,'Medal No.2',1,'Medal2.gif');	
INSERT INTO [dnt_medals] VALUES (3,'Medal No.3',1,'Medal3.gif');	
INSERT INTO [dnt_medals] VALUES (4,'Medal No.4',1,'Medal4.gif');	
INSERT INTO [dnt_medals] VALUES (5,'Medal No.5',1,'Medal5.gif');	
INSERT INTO [dnt_medals] VALUES (6,'Medal No.6',1,'Medal6.gif');	
INSERT INTO [dnt_medals] VALUES (7,'Medal No.7',1,'Medal7.gif');	
INSERT INTO [dnt_medals] VALUES (8,'Medal No.8',1,'Medal8.gif');	
INSERT INTO [dnt_medals] VALUES (9,'Medal No.9',1,'Medal9.gif');	
INSERT INTO [dnt_medals] VALUES (10,'Medal No.10',1,'Medal10.gif');	
INSERT INTO [dnt_medals] VALUES (11,'Medal No.11',0,'');	
INSERT INTO [dnt_medals] VALUES (12,'Medal No.12',0,'');	
INSERT INTO [dnt_medals] VALUES (13,'Medal No.13',0,'');	
INSERT INTO [dnt_medals] VALUES (14,'Medal No.14',0,'');	
INSERT INTO [dnt_medals] VALUES (15,'Medal No.15',0,'');	
INSERT INTO [dnt_medals] VALUES (16,'Medal No.16',0,'');	
INSERT INTO [dnt_medals] VALUES (17,'Medal No.17',0,'');	
INSERT INTO [dnt_medals] VALUES (18,'Medal No.18',0,'');	
INSERT INTO [dnt_medals] VALUES (19,'Medal No.19',0,'');	
INSERT INTO [dnt_medals] VALUES (20,'Medal No.20',0,'');	
INSERT INTO [dnt_medals] VALUES (21,'Medal No.21',0,'');	
INSERT INTO [dnt_medals] VALUES (22,'Medal No.22',0,'');	
INSERT INTO [dnt_medals] VALUES (23,'Medal No.23',0,'');	
INSERT INTO [dnt_medals] VALUES (24,'Medal No.24',0,'');	
INSERT INTO [dnt_medals] VALUES (25,'Medal No.25',0,'');	
INSERT INTO [dnt_medals] VALUES (26,'Medal No.26',0,'');	
INSERT INTO [dnt_medals] VALUES (27,'Medal No.27',0,'');	
INSERT INTO [dnt_medals] VALUES (28,'Medal No.28',0,'');	
INSERT INTO [dnt_medals] VALUES (29,'Medal No.29',0,'');	
INSERT INTO [dnt_medals] VALUES (30,'Medal No.30',0,'');	
INSERT INTO [dnt_medals] VALUES (31,'Medal No.31',0,'');	
INSERT INTO [dnt_medals] VALUES (32,'Medal No.32',0,'');	
INSERT INTO [dnt_medals] VALUES (33,'Medal No.33',0,'');	
INSERT INTO [dnt_medals] VALUES (34,'Medal No.34',0,'');	
INSERT INTO [dnt_medals] VALUES (35,'Medal No.35',0,'');	
INSERT INTO [dnt_medals] VALUES (36,'Medal No.36',0,'');	
INSERT INTO [dnt_medals] VALUES (37,'Medal No.37',0,'');	
INSERT INTO [dnt_medals] VALUES (38,'Medal No.38',0,'');	
INSERT INTO [dnt_medals] VALUES (39,'Medal No.39',0,'');	
INSERT INTO [dnt_medals] VALUES (40,'Medal No.40',0,'');	
INSERT INTO [dnt_medals] VALUES (41,'Medal No.41',0,'');	
INSERT INTO [dnt_medals] VALUES (42,'Medal No.42',0,'');	
INSERT INTO [dnt_medals] VALUES (43,'Medal No.43',0,'');	
INSERT INTO [dnt_medals] VALUES (44,'Medal No.44',0,'');	
INSERT INTO [dnt_medals] VALUES (45,'Medal No.45',0,'');	
INSERT INTO [dnt_medals] VALUES (46,'Medal No.46',0,'');	
INSERT INTO [dnt_medals] VALUES (47,'Medal No.47',0,'');	
INSERT INTO [dnt_medals] VALUES (48,'Medal No.48',0,'');	
INSERT INTO [dnt_medals] VALUES (49,'Medal No.49',0,'');	
INSERT INTO [dnt_medals] VALUES (50,'Medal No.50',0,'');	
INSERT INTO [dnt_medals] VALUES (51,'Medal No.51',0,'');
INSERT INTO [dnt_medals] VALUES (52,'Medal No.52',0,'');	
INSERT INTO [dnt_medals] VALUES (53,'Medal No.53',0,'');	
INSERT INTO [dnt_medals] VALUES (54,'Medal No.54',0,'');	
INSERT INTO [dnt_medals] VALUES (55,'Medal No.55',0,'');	
INSERT INTO [dnt_medals] VALUES (56,'Medal No.56',0,'');	
INSERT INTO [dnt_medals] VALUES (57,'Medal No.57',0,'');	
INSERT INTO [dnt_medals] VALUES (58,'Medal No.58',0,'');	
INSERT INTO [dnt_medals] VALUES (59,'Medal No.59',0,'');	
INSERT INTO [dnt_medals] VALUES (60,'Medal No.60',0,'');	
INSERT INTO [dnt_medals] VALUES (61,'Medal No.61',0,'');	
INSERT INTO [dnt_medals] VALUES (62,'Medal No.62',0,'');	
INSERT INTO [dnt_medals] VALUES (63,'Medal No.63',0,'');	
INSERT INTO [dnt_medals] VALUES (64,'Medal No.64',0,'');	
INSERT INTO [dnt_medals] VALUES (65,'Medal No.65',0,'');	
INSERT INTO [dnt_medals] VALUES (66,'Medal No.66',0,'');	
INSERT INTO [dnt_medals] VALUES (67,'Medal No.67',0,'');	
INSERT INTO [dnt_medals] VALUES (68,'Medal No.68',0,'');	
INSERT INTO [dnt_medals] VALUES (69,'Medal No.69',0,'');	
INSERT INTO [dnt_medals] VALUES (70,'Medal No.70',0,'');	
INSERT INTO [dnt_medals] VALUES (71,'Medal No.71',0,'');	
INSERT INTO [dnt_medals] VALUES (72,'Medal No.72',0,'');	
INSERT INTO [dnt_medals] VALUES (73,'Medal No.73',0,'');	
INSERT INTO [dnt_medals] VALUES (74,'Medal No.74',0,'');	
INSERT INTO [dnt_medals] VALUES (75,'Medal No.75',0,'');	
INSERT INTO [dnt_medals] VALUES (76,'Medal No.76',0,'');	
INSERT INTO [dnt_medals] VALUES (77,'Medal No.77',0,'');	
INSERT INTO [dnt_medals] VALUES (78,'Medal No.78',0,'');	
INSERT INTO [dnt_medals] VALUES (79,'Medal No.79',0,'');	
INSERT INTO [dnt_medals] VALUES (80,'Medal No.80',0,'');	
INSERT INTO [dnt_medals] VALUES (81,'Medal No.81',0,'');	
INSERT INTO [dnt_medals] VALUES (82,'Medal No.82',0,'');	
INSERT INTO [dnt_medals] VALUES (83,'Medal No.83',0,'');	
INSERT INTO [dnt_medals] VALUES (84,'Medal No.84',0,'');	
INSERT INTO [dnt_medals] VALUES (85,'Medal No.85',0,'');	
INSERT INTO [dnt_medals] VALUES (86,'Medal No.86',0,'');	
INSERT INTO [dnt_medals] VALUES (87,'Medal No.87',0,'');	
INSERT INTO [dnt_medals] VALUES (88,'Medal No.88',0,'');	
INSERT INTO [dnt_medals] VALUES (89,'Medal No.89',0,'');	
INSERT INTO [dnt_medals] VALUES (90,'Medal No.90',0,'');	
INSERT INTO [dnt_medals] VALUES (91,'Medal No.91',0,'');	
INSERT INTO [dnt_medals] VALUES (92,'Medal No.92',0,'');	
INSERT INTO [dnt_medals] VALUES (93,'Medal No.93',0,'');	
INSERT INTO [dnt_medals] VALUES (94,'Medal No.94',0,'');	
INSERT INTO [dnt_medals] VALUES (95,'Medal No.95',0,'');	
INSERT INTO [dnt_medals] VALUES (96,'Medal No.96',0,'');	
INSERT INTO [dnt_medals] VALUES (97,'Medal No.97',0,'');	
INSERT INTO [dnt_medals] VALUES (98,'Medal No.98',0,'');	
INSERT INTO [dnt_medals] VALUES (99,'Medal No.99',0,'');

INSERT [dnt_navs] ([parentid], [name], [title], [url], [target], [type], [available], [displayorder], [highlight], [level]) VALUES (0, N'标签', N'标签', N'tags.aspx', 0, 0, 1, 1, 0, 0);
INSERT [dnt_navs] ([parentid], [name], [title], [url], [target], [type], [available], [displayorder], [highlight], [level]) VALUES (0, N'会员', N'会员', N'showuser.aspx', 0, 0, 1, 2, 0, 0);
INSERT [dnt_navs] ([parentid], [name], [title], [url], [target], [type], [available], [displayorder], [highlight], [level]) VALUES (0, N'搜索', N'搜索', N'search.aspx', 1, 0, 1, 3, 0, 0);
INSERT [dnt_navs] ([parentid], [name], [title], [url], [target], [type], [available], [displayorder], [highlight], [level]) VALUES (0, N'帮助', N'帮助', N'help.aspx', 1, 0, 1, 4, 0, 0);
INSERT [dnt_navs] ([parentid], [name], [title], [url], [target], [type], [available], [displayorder], [highlight], [level]) VALUES (0, N'论坛', N'论坛', N'index.aspx', 0, 1, 1, 0, 0, 0);

INSERT INTO [dnt_tablelist] (description,mintid,maxtid) VALUES ('dnt_posts1',1,0);
INSERT INTO [dnt_forumlinks] (displayorder,name,url,note,logo) VALUES ( 1, 'Discuz!NT', 'http://nt.discuz.net', '提供最新 Discuz!NT 产品新闻、软件下载与技术交流', 'images/logo.gif');

EXEC [dnt_createtopic] 2, 0, N'快速设置论坛', 0, 0, 0, N'admin', 1, '2010-02-22 14:13:28', '2010-02-22 14:13:28', 2, N'admin', 6, 0, 0, N'', 0, 0, 0, 2, 0, 0, 0, 0, 0

EXEC [dnt_createpost1] 2, 2, 2, 0, N'admin', 1, N'快速设置论坛',N'快速设置论坛', '2010-02-22 14:13:28', 
N'由于Windows Server 2003 站点默认的MIME类型中没有支持silverlight的相关MIME类型，所以需要自己添加

需要添加的MIME类型如下

.xaml                              application/xaml+xml
.xap                                application/x-silverlight-app
.manifest                        application/manifest
.application                      application/x-ms-application
.xbap                              application/x-ms-xbap
.deploy                          application/octet-stream
.xps                              application/vnd.ms-xpsdocument 

如何添加MIME类型

在IIS中查看站点的属性

[attach]6[/attach]

[attach]7[/attach]', N'127.0.0.1', N'', 0, 0, 0, 0, 0, 0, 2, 0, 0;

EXEC [dnt_createtopic] 2, 0, N'Server 2003下如何配置Silverlight',0, 0, 0, N'admin', 1, '2010-02-22 14:13:28', '2010-02-22 14:13:28', 1, N'admin', 6, 0, 0, N'', 0, 0, 0, 2, 0, 0, 0, 0, 0

EXEC [dnt_createpost1] 2, 1, 1, 0, N'admin', 1, N'Server 2003下如何配置Silverlight',N'Server 2003下如何配置Silverlight', '2010-02-22 14:13:28', 
N'在论坛安装完毕后，我们需要进入系统后台，进行如下简单设置
1.修改论坛的基本信息包括名称，链接地址等信息。(全局 -&gt;常规选项 -&gt; 基本设置)
[attach]1[/attach]
2.根据您的论坛定向，编辑添加论坛的版块和分类。(论坛 -&gt; 版块设置 -&gt; 版块管理和版块添加)
[attach]2[/attach]
3.论坛版块基本信息设置(论坛 -&gt; 版块设置 -&gt; 版块管理)
[attach]3[/attach]
 4.论坛的高级设置，包括论坛版块中部分功能设置。(论坛 -&gt; 版块设置 -&gt; 版块管理)
[attach]4[/attach]
 5.论坛积分的设置。(全局 -&gt;常规选项-&gt; 积分设置)
[attach]5[/attach]', N'127.0.0.1', N'', 0, 0, 0, 0, 0, 0, 2, 0, 0

INSERT [dnt_mytopics] ([uid], [tid], [dateline]) VALUES (1, 1, CAST(0x9D11031B AS SmallDateTime));
INSERT [dnt_mytopics] ([uid], [tid], [dateline]) VALUES (1, 2, CAST(0x9D110320 AS SmallDateTime));
INSERT [dnt_myposts] ([uid], [tid], [pid], [dateline]) VALUES (1, 1, 1, CAST(0x9D11031B AS SmallDateTime));
INSERT [dnt_myposts] ([uid], [tid], [pid], [dateline]) VALUES (1, 2, 2, CAST(0x9D110320 AS SmallDateTime));

INSERT [dnt_myattachments] ([aid], [uid], [attachment], [description], [postdatetime], [downloads], [filename], [pid], [tid], [extname]) VALUES (1, 1, N'setbbs_1.gif', N'gif', CAST(0x00009D1100DA5B9C AS DateTime), 3, N'2010\02\02\2\1535890618980.gif', 1, 1, N'.gif');
INSERT [dnt_myattachments] ([aid], [uid], [attachment], [description], [postdatetime], [downloads], [filename], [pid], [tid], [extname]) VALUES (2, 1, N'setbbs_2.gif', N'gif', CAST(0x00009D1100DA5B9C AS DateTime), 3, N'2010\02\02\2\1535918725860.gif', 1, 1, N'.gif');
INSERT [dnt_myattachments] ([aid], [uid], [attachment], [description], [postdatetime], [downloads], [filename], [pid], [tid], [extname]) VALUES (3, 1, N'setbbs_2_1.gif', N'gif', CAST(0x00009D1100DA5B9C AS DateTime), 3, N'2010\02\02\2\1535918737799.gif', 1, 1, N'.gif');
INSERT [dnt_myattachments] ([aid], [uid], [attachment], [description], [postdatetime], [downloads], [filename], [pid], [tid], [extname]) VALUES (4, 1, N'setbbs_2_2.gif', N'gif', CAST(0x00009D1100DA5B9C AS DateTime), 3, N'2010\02\02\2\1535920341020.gif', 1, 1, N'.gif');
INSERT [dnt_myattachments] ([aid], [uid], [attachment], [description], [postdatetime], [downloads], [filename], [pid], [tid], [extname]) VALUES (5, 1, N'setbbs_2_6.gif', N'gif', CAST(0x00009D1100DA5B9C AS DateTime), 3, N'2010\02\02\2\1535920353490.gif', 1, 1, N'.gif');
INSERT [dnt_myattachments] ([aid], [uid], [attachment], [description], [postdatetime], [downloads], [filename], [pid], [tid], [extname]) VALUES (6, 1, N'mime1(1).jpg', N'jpg', CAST(0x00009D1100DBBD84 AS DateTime), 3, N'2010\02\02\2\1566172014601.jpg', 2, 2, N'.jpg');
INSERT [dnt_myattachments] ([aid], [uid], [attachment], [description], [postdatetime], [downloads], [filename], [pid], [tid], [extname]) VALUES (7, 1, N'mime2.jpg', N'jpg', CAST(0x00009D1100DBBD84 AS DateTime), 3, N'2010\02\02\2\1566176721371.jpg', 2, 2, N'.jpg');

INSERT [dnt_attachments] ([uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice]) VALUES (1, 1, 1, CAST(0x00009D1100DA5B9C AS DateTime), 0, N'2010\02\02\2\1535890618980.gif', N'gif', N'image/gif', 31389, N'setbbs_1.gif', 3, 0, 0, 0);
INSERT [dnt_attachments] ([uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice]) VALUES (1, 1, 1, CAST(0x00009D1100DA5B9C AS DateTime), 0, N'2010\02\02\2\1535918725860.gif', N'gif', N'image/gif', 14015, N'setbbs_2.gif', 3, 0, 0, 0);
INSERT [dnt_attachments] ([uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice]) VALUES (1, 1, 1, CAST(0x00009D1100DA5B9C AS DateTime), 0, N'2010\02\02\2\1535918737799.gif', N'gif', N'image/gif', 20224, N'setbbs_2_1.gif', 3, 0, 0, 0);
INSERT [dnt_attachments] ([uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice]) VALUES (1, 1, 1, CAST(0x00009D1100DA5B9C AS DateTime), 0, N'2010\02\02\2\1535920341020.gif', N'gif', N'image/gif', 31500, N'setbbs_2_2.gif', 3, 0, 0, 0);
INSERT [dnt_attachments] ([uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice]) VALUES (1, 1, 1, CAST(0x00009D1100DA5B9C AS DateTime), 0, N'2010\02\02\2\1535920353490.gif', N'gif', N'image/gif', 23616, N'setbbs_2_6.gif', 3, 0, 0, 0);
INSERT [dnt_attachments] ([uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice]) VALUES (1, 2, 2, CAST(0x00009D1100DBBD84 AS DateTime), 0, N'2010\02\02\2\1566172014601.jpg', N'jpg', N'image/jpeg', 52214, N'mime1(1).jpg', 3, 471, 455, 0);
INSERT [dnt_attachments] ([uid], [tid], [pid], [postdatetime], [readperm], [filename], [description], [filetype], [filesize], [attachment], [downloads], [width], [height], [attachprice]) VALUES (1, 2, 2, CAST(0x00009D1100DBBD84 AS DateTime), 0, N'2010\02\02\2\1566176721371.jpg', N'jpg', N'image/jpeg', 44339, N'mime2.jpg', 3, 472, 449, 0);

INSERT [dnt_advertisements] ([available], [type], [displayorder], [title], [targets], [starttime], [endtime], [code], [parameters]) VALUES (1, N'12', 0, N'火炬计划', N',,', CAST(0x00009D1600000000 AS DateTime), CAST(0x00009D1D00000000 AS DateTime), N'<a href="http://www.comsenz.com/2010/huoju/" target="_blank"><img src="http://nt.discuz.net/images/ad/ad.jpg" alt="" border="0" /></a>', N'image|http://nt.discuz.net/images/ad/ad.jpg|||http://www.comsenz.com/2010/huoju/|||');
INSERT [dnt_advertisements] ([available], [type], [displayorder], [title], [targets], [starttime], [endtime], [code], [parameters]) VALUES (1, N'13', 0, N'虚拟主机热销', N',,', CAST(0x00009D1600000000 AS DateTime), CAST(0x00009D6800000000 AS DateTime), N'<a href="http://idc.comsenz.com/store/webwin.php" target="_blank"><img src="http://nt.discuz.net/images/ad/ad2.jpg" alt="" border="0" /></a>', N'image|http://nt.discuz.net/images/ad/ad2.jpg|||http://idc.comsenz.com/store/webwin.php|||');