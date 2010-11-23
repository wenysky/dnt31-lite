using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Discuz.Data;
using System.Data.Common;
using Discuz.Config;

namespace Wysky.Plugin.Devtask
{
    public class DataProvider
    {
        public IDataReader GetTopics(int fid, int pageSize, int pageIndex, int startNum, string condition)
        {
            if (condition.Trim() == string.Empty)
            {
                DbParameter[] parms = {
									   DbHelper.MakeInParam("@fid",(DbType)SqlDbType.Int,4,fid),
									   DbHelper.MakeInParam("@pagesize", (DbType)SqlDbType.Int,4,pageSize),
									   DbHelper.MakeInParam("@pageindex", (DbType)SqlDbType.Int,4,pageIndex),
                                       DbHelper.MakeInParam("@startnum",(DbType)SqlDbType.Int,4,startNum)
								   };
                return DbHelper.ExecuteReader(CommandType.StoredProcedure,
                                              string.Format("{0}getdevtasktopiclist", BaseConfigs.GetTablePrefix),
                                              parms);
            }
            else
            {
                DbParameter[] parms = {
									   DbHelper.MakeInParam("@fid",(DbType)SqlDbType.Int,4,fid),
									   DbHelper.MakeInParam("@pagesize", (DbType)SqlDbType.Int,4,pageSize),
									   DbHelper.MakeInParam("@pageindex", (DbType)SqlDbType.Int,4,pageIndex),
									   DbHelper.MakeInParam("@condition", (DbType)SqlDbType.VarChar,80,condition),
								       DbHelper.MakeInParam("@startnum", (DbType)SqlDbType.VarChar,80,startNum)
								   };
                return DbHelper.ExecuteReader(CommandType.StoredProcedure,
                                              string.Format("{0}gettopiclistbycondition", BaseConfigs.GetTablePrefix),
                                              parms);
            }
        }

        public static int UpdateTopicDevTaskStatus(int topicid, int changeruid, string changertype, int statusid, int nextuid)
        {
            string changestatusname;
            switch (changertype.ToLower())
            {
                case "pd":
                    changestatusname = "pd";
                    break;
                case "rd":
                    changestatusname = "rd";
                    break;
                case "ued":
                    changestatusname = "ued";
                    break;
                case "qa":
                    changestatusname = "qa";
                    break;
                default:
                    changestatusname = "rd";
                    break;
            }
            string sql;
            string sqlinsert;
            if (nextuid > 0)
            {
                string nextusertype;
                switch (Entities.WTypes.Getidtype(nextuid))
                {
                    case 1:
                        nextusertype = "pd";
                        break;
                    case 2:
                        nextusertype = "rd";
                        break;
                    case 3:
                        nextusertype = "ued";
                        break;
                    case 4:
                        nextusertype = "qa";
                        break;
                    default:
                        nextusertype = "rd";
                        break;
                }
                sql = string.Format(@"UPDATE wysky_devtask_items SET [status]=@status, statusname=@statusname,statuschangedate=@statuschangedate,taskuserid=@taskuserid,taskusername=@taskusername,{0}status=@changestatus,{1}userid=@taskuserid,{1}username=@taskusername WHERE tid=@tid", changestatusname, nextusertype);
                #region 啊啊啊
                //                sqlinsert = @"INSERT INTO wysky_devtask_items(
                //[tid],	
                //[status],	
                //[statusname],	
                //[statuschangedate],
                //[taskuserid],
                //[taskusername],
                //[pduserid],
                //[rduserid],
                //[ueduserid],	
                //[qauserid],	
                //[pdusername],	
                //[rdusername],
                //[uedusername],
                //[qausername],
                //[pdstatus],
                //[rdstatus],
                //[uedstatus],
                //[qastatus]
                //) 
                //VALUES
                //(
                //@tid,
                //@status,	
                //@statusname,	
                //@statuschangedate,
                //@taskuserid,
                //@taskusername,
                //@pduserid,
                //@rduserid,
                //@ueduserid,	
                //@qauserid,	
                //@pdusername,	
                //@rdusername,
                //@uedusername,
                //@qausername,
                //@pdstatus,
                //@rdstatus,
                //@uedstatus,
                //@qastatus
                //)";
                #endregion
            }
            else
            {
                sql = string.Format(@"UPDATE wysky_devtask_items SET [status]=@status, statusname=@statusname,statuschangedate=@statuschangedate,taskuserid=0,taskusername='',{0}=@changestatus WHERE tid=@tid", changestatusname);
                sqlinsert = "";
            }
            DbParameter[] parms = {                                                      
									   DbHelper.MakeInParam("@status",           (DbType)SqlDbType.Int,4,   statusid),
									   DbHelper.MakeInParam("@statusname",       (DbType)SqlDbType.Text,20, Wysky.Plugin.Devtask.Entities.WTypes.GetStatusName(statusid)),
									   DbHelper.MakeInParam("@statuschangedate", (DbType)SqlDbType.DateTime,8,   DateTime.Now),
                                       DbHelper.MakeInParam("@taskuserid",       (DbType)SqlDbType.Int,4,   nextuid),
									   DbHelper.MakeInParam("@taskusername",     (DbType)SqlDbType.Text,20, Users.GetShortUserInfo(nextuid).Username),
									   DbHelper.MakeInParam("@changestatus",     (DbType)SqlDbType.Text,20, Wysky.Plugin.Devtask.Entities.WTypes.GetStatusName(statusid)),
									   DbHelper.MakeInParam("@tid",     (DbType)SqlDbType.Int,4, topicid)
								   };
            int result = DbHelper.ExecuteNonQuery(CommandType.Text, sql, parms);

            if (result < 1)
            {
                sqlinsert = @"INSERT INTO wysky_devtask_items(
[tid],	
[status],	
[statusname],	
[statuschangedate],
[taskuserid],
[taskusername],
[pduserid],
[rduserid],
[ueduserid],	
[qauserid],	
[pdusername],	
[rdusername],
[uedusername],
[qausername],
[pdstatus],
[rdstatus],
[uedstatus],
[qastatus]
) 
VALUES
(
@tid,
@status,	
@statusname,	
@statuschangedate,
@taskuserid,
@taskusername,
0,
@taskuserid,
0,	
0,	
'',	
@taskusername,
'',
'',
'',
'已分派',
'',
''
)";
                result = DbHelper.ExecuteNonQuery(CommandType.Text, sqlinsert, parms);
            }

            return result;
        }
    }
}
