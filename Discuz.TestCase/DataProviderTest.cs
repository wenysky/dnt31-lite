using Discuz.Data.SqlServer;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Discuz.Data;
using System.Data;
using System;
namespace Discuz.TestCase
{
    
    
    /// <summary>
    ///This is a test class for DataProviderTest and is intended
    ///to contain all DataProviderTest Unit Tests
    ///</summary>
    [TestClass()]
    public class DataProviderTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        [TestInitialize()]
        public void MyTestInitialize()
        {
            try
            {
                DbHelper.ExecuteNonQuery("insert into dnt_onlinetime(uid, thismonth, total, lastupdate) VALUES(911, 0, 0, '1900-1-1')");
            }
            catch
            {}
        }
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for UpdateOnlineTime
        ///</summary>
        [TestMethod()]
        public void UpdateOnlineTimeTest()
        {
            DataProvider target = new DataProvider(); // TODO: Initialize to an appropriate value
            int oltimespan = 10; // TODO: Initialize to an appropriate value
            int uid = 911; // TODO: Initialize to an appropriate value

            string commandText = "select total, thismonth, lastupdate from dnt_onlinetime where uid=" + uid;
            IDataReader reader = DbHelper.ExecuteReader(CommandType.Text, commandText);
            int totaltime = 0, thismonthtime = 0;
            DateTime lastupdate = DateTime.Now;
            if (reader.Read())
            {
                totaltime = Convert.ToInt32(reader["total"]);
                thismonthtime = Convert.ToInt32(reader["thismonth"]);
                lastupdate = Convert.ToDateTime(reader["lastupdate"]);
            }
            reader.Close();

            //int totaltime = Convert.ToInt32(DbHelper.ExecuteScalar(CommandType.Text, "select total from dnt_onlinetime where uid=" + uid));
            //int thismonthtime = Convert.ToInt32(DbHelper.ExecuteScalar(CommandType.Text, "select thismonth from dnt_onlinetime where uid=" + uid));
            //int thismonthtime = Convert.ToInt32(DbHelper.ExecuteScalar(CommandType.Text, "select thismonth from dnt_onlinetime where uid=" + uid));
            target.UpdateOnlineTime(oltimespan, uid);

            int actualtotaltime = Convert.ToInt32(DbHelper.ExecuteScalar(CommandType.Text, "select total from dnt_onlinetime where uid=" + uid));
            int actualthismonthtime = Convert.ToInt32(DbHelper.ExecuteScalar(CommandType.Text, "select thismonth from dnt_onlinetime where uid=" + uid));

            if ((DateTime.Now - lastupdate).TotalMinutes > oltimespan)
            {
                Assert.AreEqual(totaltime + oltimespan, actualtotaltime);
                Assert.AreEqual(thismonthtime + oltimespan, actualthismonthtime);
            }
            else
            {
                DbHelper.ExecuteNonQuery("delete from dnt_onlinetime where uid="+uid);
                Assert.Inconclusive("没有达到更新时间限制无法更新");
            }
        }
    }
}
