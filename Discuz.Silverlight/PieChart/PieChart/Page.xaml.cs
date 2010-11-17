using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Windows;
using System.Windows.Browser;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Xml;
using System.Runtime.Serialization.Json;

namespace PieChart
{
    [ScriptableTypeAttribute]
    public partial class Page : System.Windows.Controls.UserControl
    {
        public Page()
        {
            InitializeComponent();

            // Hook up event handlers
            // HtmlPage.Window.AttachEvent("onresize", new EventHandler<HtmlEventArgs>(Browser_Resize));

            // Call resize
            //Browser_Resize(null, null);


            this.Loaded += this.Page_Loaded;
            //this.SizeChanged += this.Page_SizeChanged;

        }


        #region Properties
        private Collection<SectorData> _chartValue;
        private readonly Color[] _itemColor = {   CommonValues.ItemColor0,
                                                  CommonValues.ItemColor1,
                                                  CommonValues.ItemColor2,
                                                  CommonValues.ItemColor3,
                                                  CommonValues.ItemColor4,
                                                  CommonValues.ItemColor5,
                                                  CommonValues.ItemColor6,
                                                  CommonValues.ItemColor7,
                                                  CommonValues.ItemColor8,
                                                  CommonValues.ItemColor9,
                                              };

        private InfoBubble _infoBubble;

        public HtmlDocument _htmlDocument;

        [ScriptableMemberAttribute]
        public event EventHandler CallJs;

        #endregion
        public void Page_Loaded(object o, EventArgs e)
        {
            // Required to initialize variables
            //InitializeComponent();

            // Register javascript scope.
            HtmlPage.RegisterScriptableObject("PiePage", this);

            _htmlDocument = HtmlPage.Document;

            // Initial properties
            _chartValue = new Collection<SectorData>();

            // Get chart value.
            GetJSONData();
            //GetChartValue();

            //InitializeChart();
        }

      
        private void InitializeChart()
        {
            // Add Infobubble
            try
            {
                _infoBubble = new InfoBubble();
            }
            catch (Exception ex)
            {
                string aa = ex.ToString();
            }
            _infoBubble.SetValue(Canvas.LeftProperty, -200.00);
            _infoBubble.SetValue(Canvas.TopProperty, -300.00);
            PieCanvas.Children.Add(_infoBubble);

            // Sync bubble position
            PieCanvas.MouseMove += new MouseEventHandler(PieCanvas_MouseMove);

            // Make Pie Chart
            double currentAngle = 0;
            for (int i = 0; i < _chartValue.Count; i++)
            {
                SectorItem loopSector = new SectorItem(_chartValue[i], currentAngle, CommonValues.InnerRadius, CommonValues.OuterRadius, _itemColor[i], false);
                SectorItem shadowSector = new SectorItem(_chartValue[i], currentAngle, CommonValues.InnerRadius, CommonValues.OuterRadius, CommonValues.ShadowColor, true);
                currentAngle += AngleFromValue(_chartValue[i].Value);
                ItemCanvas.Children.Add(loopSector);
                ShadowCanvas.Children.Add(shadowSector);

                loopSector.ShadowSector = shadowSector;

                // add hover event
                loopSector.OnSectorHover += new EventHandler<SectorItemEventArgs>(loopSector_OnSectorHover);
                loopSector.MouseLeave += new MouseEventHandler(loopSector_MouseLeave);

                _sectorItemList.Add(loopSector);
            }
        }

        void PieCanvas_MouseMove(object sender, MouseEventArgs e)
        {
            Point mousePos = e.GetPosition(sender as Canvas);

            _infoBubble.SetValue(Canvas.LeftProperty, mousePos.X - 20);
            _infoBubble.SetValue(Canvas.TopProperty, mousePos.Y + 20);
        }

        void loopSector_OnSectorHover(object sender, SectorItemEventArgs e)
        {
            // call js, it failed, can't send custom args.
            /*
            if (CallJs != null)
            {
                CallJs(e.CaptionId, EventArgs.Empty);
            }
            */

            // change html element
            for (int i = 0; i < _chartValue.Count; i++)
            {
                HtmlElement loopElement = HtmlPage.Document.GetElementById("PieCaption" + _chartValue[i].ID);
                loopElement.SetStyleAttribute("background", "Transparent");
            }
            HtmlElement captionElement = HtmlPage.Document.GetElementById("PieCaption" + e.ID);
            captionElement.SetStyleAttribute("background", "#edf6f1");

            _infoBubble.TxtValue = (e.Value * 100).ToString("N") + " %";

            _infoBubble.FadeIn();
        }

        void loopSector_MouseLeave(object sender, MouseEventArgs e)
        {
            // reset html element
            for (int i = 0; i < _chartValue.Count; i++)
            {
                HtmlElement loopElement = HtmlPage.Document.GetElementById("PieCaption" + _chartValue[i].ID);
                loopElement.SetStyleAttribute("background", "Transparent");
            }

            _infoBubble.FadeOut();
        }

        #region Methods
        /// <summary>
        /// Verify & fill chart values.
        /// </summary>
        private void GetChartValue(SectorData[] sectors)
        {
        
            //JavaScriptSerializer jss = new JavaScriptSerializer();
            
            
            // --------------- Fill Dummy Data Here --------------------
            // fill inputData will actual data
            // ---------------------------------------------------------
            Collection<SectorData> inputData = new Collection<SectorData>();
            foreach (SectorData sector in sectors)
            {
                inputData.Add(sector);
            }
            //inputData.Add(new SectorData(0, "Title00", "Comment00", 0.23));
            //inputData.Add(new SectorData(1, "Title01", "Comment01", 0.1));
            //inputData.Add(new SectorData(2, "Title02", "Comment02", 0.1));
            //inputData.Add(new SectorData(3, "Title03", "Comment03", 0.09));
            //inputData.Add(new SectorData(4, "Title04", "Comment04", 0.08));
            //inputData.Add(new SectorData(5, "Title05", "Comment05", 0.08));
            //inputData.Add(new SectorData(6, "Title06", "Comment06", 0.08));
            //inputData.Add(new SectorData(7, "Title07", "Comment07", 0.08));
            //inputData.Add(new SectorData(8, "Title08", "Comment08", 0.13));
            //inputData.Add(new SectorData(9, "Title09", "Comment09", 0.03));

            // Verify data.
            VerifyData(inputData);

            // Sync caption color.
            SyncCaptionColor();
        }

        /// <summary>
        /// Verify input data, and fill them into _chartValue
        /// </summary>
        private void VerifyData(Collection<SectorData> pInputData)
        {
            // less or equal than 10 item(s).
            if (pInputData.Count > 10)
            {
                // add the extra item's value to item[9]
                int lastIndex = pInputData.Count - 1;
                for (int i = lastIndex; i >= 10; i--)
                {
                    pInputData[9].Value += pInputData[i].Value;
                    pInputData.RemoveAt(i);
                }
            }

            // Sum can't be greater than 1.
            double sum = 0;
            for (int i = 0; i < pInputData.Count; i++)
            {
                sum += pInputData[i].Value;
                if (sum > 1)
                {
                    pInputData[i].Value -= (sum - 1);
                    int lastIndex = pInputData.Count - 1;
                    for (int j = lastIndex; j > i; j--)
                    {
                        pInputData.RemoveAt(j);
                    }
                    break;
                }
            }

            // Fill _chartValue.
            for (int i = 0; i < pInputData.Count; i++)
            {
                _chartValue.Add(pInputData[i]);
            }
        }

        /// <summary>
        /// Sync caption item color with preset.
        /// </summary>
        private void SyncCaptionColor()
        {
            //HtmlPage.RegisterScriptableObject("PiePage", this);
            for (int i = 0; i < 10; i++)
            {
                HtmlElement captionItem = _htmlDocument.GetElementById("PieCaption" + i);
                captionItem.SetStyleAttribute("visibility", "hidden");
            }

            for (int i = 0; i < _chartValue.Count; i++)
            {
                HtmlElement captionItem = _htmlDocument.GetElementById("dot" + i);
                string r = _itemColor[i].R.ToString("X");
                while (r.Length < 2)
                    r = "0" + r;
                string g = _itemColor[i].G.ToString("X");
                while (g.Length < 2)
                    g = "0" + g;
                string b = _itemColor[i].B.ToString("X");
                while (b.Length < 2)
                    b = "0" + b;

                captionItem.SetStyleAttribute("background", "#" + r + g + b);
     
                // visible what's need.
                captionItem = _htmlDocument.GetElementById("PieCaption" + i);
                HtmlElement title = _htmlDocument.GetElementById("title" + i);
                title.SetProperty("innerHTML", _chartValue[i].Title);
                title.SetProperty("title", (_chartValue[i].Value * 100).ToString("N") + " %");
                
                captionItem.SetStyleAttribute("visibility", "visible");

                title.AttachEvent("onmouseover", new EventHandler<HtmlEventArgs>(JsCallSectorMouseOver));
                title.AttachEvent("onmouseout", new EventHandler<HtmlEventArgs>(JsCallSectorMouseOut));

                title.SetAttribute("onmouseover", "javascript:playSector(true, " + i + ");");
                title.SetAttribute("onmouseout", "javascript:playSector(false, " + i + ");");
         
            }
        }
        [ScriptableMember]
        public void JsCallSector(bool mouseover, int i)
        {
            if (mouseover)
            {
                _sectorItemList[i]._secterPath_MouseEnter((Object)null, (MouseEventArgs)null);
            }
            else
            {
                _sectorItemList[i]._secterPath_MouseLeave((Object)null, (MouseEventArgs)null);
            }
        }


        List<SectorItem> _sectorItemList = new List<SectorItem>();

        public void JsCallSectorMouseOver(object sender, HtmlEventArgs e)
        {
            string objid = e.Source.GetProperty("Id") as string;
            if (!String.IsNullOrEmpty(objid))
            {
                _sectorItemList[Convert.ToInt32(objid.Replace("title", ""))]._secterPath_MouseEnter(sender, (MouseEventArgs)null);
            }
            _infoBubble.SetValue(Canvas.LeftProperty, -200.00);
            _infoBubble.SetValue(Canvas.TopProperty, -300.00);
        }

        public void JsCallSectorMouseOut(object sender, HtmlEventArgs e)
        {
            string objid = e.Source.GetProperty("Id") as string;
            if (!String.IsNullOrEmpty(objid))
            {
                _sectorItemList[Convert.ToInt32(objid.Replace("title", ""))]._secterPath_MouseLeave(sender, (MouseEventArgs)null);
            }
            _infoBubble.SetValue(Canvas.LeftProperty, -200.00);
            _infoBubble.SetValue(Canvas.TopProperty, -300.00);
        }


        /// <summary>
        /// Get angle form perentage value, in degrees.
        /// </summary>
        /// <param name="pValue">Pecentage value.</param>
        /// <returns>Angle in degrees.</returns>
        private double AngleFromValue(double pValue)
        {
            return pValue * 360;
        }

        public void GetJSONData()
        {
            string serverUri = _htmlDocument.DocumentUri.ToString();
            
            int thisApp = serverUri.IndexOf("/silverlight/piechart");

            serverUri = serverUri.Substring(0, thisApp) + "/services/MixObjects.asmx/ChartData?topicid="; //"http://localhost/services/MixObjects.asmx/ChartData?topicid=";
            string value = "";
            HtmlDocument doc = HtmlPage.Document;
            doc.QueryString.TryGetValue("topicid", out value);
            System.Uri webServiceUri = new System.Uri(serverUri + value);
            
            //System.Uri webServiceUri = new System.Uri(serverUri.Substring(0, serverUri.LastIndexOf("/")) + "/response.txt");//
            //HttpWebRequest request = (HttpWebRequest)WebRequest.Create(webServiceUri);
            //IAsyncResult iar = request.BeginGetResponse(new AsyncCallback(OnResponseDownload), request);

            WebClient wc = new WebClient();
            wc.OpenReadCompleted += new OpenReadCompletedEventHandler(wc_OpenReadCompleted);
            wc.OpenReadAsync(webServiceUri);


        }


        void wc_OpenReadCompleted(object sender, OpenReadCompletedEventArgs e)
        {
            //throw new NotImplementedException();
            try
            {
                //HttpWebResponse response = (HttpWebResponse)((HttpWebRequest)iar.AsyncState).EndGetResponse(iar);
                //if (response.StatusCode != HttpStatusCode.OK)
                //    throw new Exception("HttpStatusCode " + response.StatusCode.ToString() + " was returned.");
                StreamReader responseReader = new StreamReader(e.Result);

                string jsonData = responseReader.ReadToEnd();
                responseReader.Close();
                //response.Close();
                XmlReader xr = XmlReader.Create(new StringReader(jsonData));
                xr.ReadToFollowing("string");
                xr.Read();


                DataContractJsonSerializer jss = new DataContractJsonSerializer(typeof(ChartClass));

                //ChartClass cc = (ChartClass)jss.ReadObject(response.GetResponseStream());//.Deserialize<ChartClass>(xr.Value);
                ChartClass cc = (ChartClass)jss.ReadObject(new MemoryStream(System.Text.Encoding.UTF8.GetBytes(xr.Value)));//.Deserialize<ChartClass>(xr.Value);

                GetChartValue(cc.Sectors);


                InitializeChart();
            }

            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
            }
        }




        private void OnResponseDownload(IAsyncResult iar)
        {
            try
            {
                HttpWebResponse response = (HttpWebResponse)((HttpWebRequest)iar.AsyncState).EndGetResponse(iar);
                if (response.StatusCode != HttpStatusCode.OK)
                    throw new Exception("HttpStatusCode " + response.StatusCode.ToString() + " was returned.");
                StreamReader responseReader = new StreamReader(response.GetResponseStream());

                string jsonData = responseReader.ReadToEnd();
                responseReader.Close();
                response.Close();
                XmlReader xr = XmlReader.Create(new StringReader(jsonData));
                xr.ReadToFollowing("string");
                xr.Read();


                DataContractJsonSerializer jss = new DataContractJsonSerializer(typeof(ChartClass));

                //ChartClass cc = (ChartClass)jss.ReadObject(response.GetResponseStream());//.Deserialize<ChartClass>(xr.Value);
                ChartClass cc = (ChartClass)jss.ReadObject(new MemoryStream(System.Text.Encoding.UTF8.GetBytes(xr.Value)));//.Deserialize<ChartClass>(xr.Value);

                GetChartValue(cc.Sectors);
                

                InitializeChart();
            }

            catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
            }
        }
        #endregion
    }
    
    
    public class ChartClass
    {
        public string CreateDate;
        public SectorData[] Sectors;
    }
    
    
}
