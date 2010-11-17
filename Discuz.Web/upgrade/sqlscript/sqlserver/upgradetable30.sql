if exists (select * from sysobjects where id = object_id(N'[dnt_invitation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dnt_invitation]
GO

CREATE TABLE [dnt_invitation](
	[inviteid] [int] IDENTITY(1,1) NOT NULL CONSTRAINT [PK_dnt_invitation_inviteid] PRIMARY KEY([inviteid]),
	[invitecode] [nchar](7) NOT NULL,
	[creatorid] [int] NOT NULL,
	[creator] [nchar](20) NOT NULL,
	[successcount] [int] NOT NULL,
	[createdtime] [smalldatetime] NOT NULL,
	[expiretime] [smalldatetime] NOT NULL,
	[maxcount] [int] NOT NULL,
	[invitetype] [int] NOT NULL,
	[isdeleted] [int] NOT NULL
)
GO

ALTER TABLE [dnt_invitation] ADD  CONSTRAINT [DF_dnt_invitation_usecount]  DEFAULT ((0)) FOR [successcount]
GO

ALTER TABLE [dnt_invitation] ADD  CONSTRAINT [DF_dnt_invitation_isdelete]  DEFAULT ((0)) FOR [isdeleted]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dnt_orders]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dnt_orders]
GO

CREATE TABLE [dnt_orders](
	[orderid] [int] IDENTITY(10000,1) NOT NULL CONSTRAINT [PK_dnt_orders_orderid] PRIMARY KEY([orderid]),
	[ordercode] [char](32) NOT NULL,
	[uid] [int] NOT NULL,
	[buyer] [char](20) NOT NULL,
	[paytype] [tinyint] NOT NULL,
	[tradeno] [char](32) NULL,
	[price] [decimal](18, 2) NOT NULL,
	[orderstatus] [tinyint] NOT NULL,
	[createdtime] [smalldatetime] NOT NULL,
	[confirmedtime] [smalldatetime] NULL,
	[credit] [tinyint] NOT NULL,
	[amount] [int] NOT NULL
)
GO

ALTER TABLE [dnt_orders] ADD  CONSTRAINT [DF_dnt_orders_createdtime]  DEFAULT (getdate()) FOR [createdtime]
GO

CREATE NONCLUSTERED INDEX [dnt_orders_ordercode] ON [dnt_orders] 
(
	[ordercode] ASC
)
GO

-------------删除表--------------------------------------------
IF OBJECT_ID('catchsoftstatics') IS NOT NULL
DROP TABLE catchsoftstatics
GO

-------------创建索引--------------------------------------------
CREATE NONCLUSTERED INDEX [code] ON [dnt_invitation]
(
	[invitecode] ASC
)
GO

CREATE NONCLUSTERED INDEX [creatorid] ON [dnt_invitation]
(
	[creatorid] ASC
)
GO

CREATE NONCLUSTERED INDEX [invitetype] ON [dnt_invitation]
(
	[invitetype] ASC
)
GO

CREATE INDEX [IX_dnt_topictagcaches_tid] ON dnt_topictagcaches(tid) INCLUDE (linktid, linktitle);
GO

CREATE INDEX [dnt_polls_tid] ON dnt_polls(tid)
GO

CREATE INDEX [IX_dnt_attachpaymentlog_uid] ON dnt_attachpaymentlog([uid],[aid])
GO

CREATE INDEX [IX_dnt_forums_status] ON dnt_forums([status],[layer],[parentid])
GO

CREATE INDEX [dnt_forumfields_fid] ON dnt_forumfields(fid)
GO

CREATE INDEX [IX_dnt_smilies_type] ON dnt_smilies ([type], [displayorder],[id]) include(code,url)
GO

CREATE INDEX [dnt_bbcodes_available] ON dnt_bbcodes(available)
GO

CREATE INDEX [dnt_moderatormanagelog_tid] ON dnt_moderatormanagelog(tid)
