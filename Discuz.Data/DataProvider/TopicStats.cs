using System;
using System.Text;

namespace Discuz.Data
{
    public class TopicStats
    {
        /// <summary>
        /// 更新主题浏览量
        /// </summary>
        /// <param name="tid">主题id</param>
        /// <param name="viewcount">浏览量</param>
        /// <returns>成功返回1，否则返回0</returns>
        public static int UpdateTopicViewCount(int tid, int viewcount)
        {
            return DatabaseProvider.GetInstance().UpdateTopicViewCount(tid, viewcount);
        }
    }
}
