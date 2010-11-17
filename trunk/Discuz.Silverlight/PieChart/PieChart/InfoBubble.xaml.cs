using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

using PieChart.Common;

namespace PieChart
{
    public partial class InfoBubble : ControlBase
    {
        #region Properties
        //private Image _txtTitle;
        //private Image _txtComment;
        private TextBlock _txtValue;

        #endregion
        public InfoBubble()
        {
            InitializeComponent();
            SyncProperty();
        }

        //private void Control_Loaded(object o, EventArgs e)
        private void Control_Loaded()
        {
            SyncProperty();
        }

        #region Methods
        private void SyncProperty()
        {
            //_txtTitle = FindName("TxtTitle") as Image;
            //_txtComment = FindName("TxtComment") as Image;
            _txtValue = FindName("TxtValue2") as TextBlock;
        }

        /*
        public string TxtTitle
        {
            set 
            {
                Uri titleUri = new Uri(value, UriKind.RelativeOrAbsolute);
                _txtTitle.SetValue<Uri>(Image.SourceProperty, titleUri);
            }
        }

        public string TxtComment
        {
            set
            {
                Uri commentUri = new Uri(value, UriKind.RelativeOrAbsolute);
                _txtComment.SetValue<Uri>(Image.SourceProperty, commentUri);
            }
        }
        */

        public string TxtValue
        {
            set { _txtValue.Text = value; }
        }

        public void FadeIn()
        {
            (FindName("FadeIn2") as Storyboard).Begin();
        }

        public void FadeOut()
        {
            (FindName("FadeOut2") as Storyboard).Begin();
        }

       protected override string ResourceName
        {
           get { return "InfoBubble.xaml"; }
      }

        #endregion
    }
}
