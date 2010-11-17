using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

using System.Diagnostics;
using System.Windows.Browser;

using PieChart.Common;

namespace PieChart
{
    [ScriptableTypeAttribute]
    public class SectorItemEventArgs : EventArgs
    {
        private int _id;
        private double _value;
        private string _title;
        private string _comment;

        public SectorItemEventArgs(int pId, string pTitle, string pComment, double pValue)
        {
            _id = pId;
            _value = pValue;
            _title = pTitle;
            _comment = pComment;
        }

        public int ID
        {
            get { return _id; }
        }

        public double Value
        {
            get { return _value; }
        }

        public string Title
        {
            get { return _title; }
        }

        public string Comment
        {
            get { return _comment; }
        }
    }

    public partial class SectorItem : ControlBase
    {
        #region Properties
        private SectorData _value;          // pecentage value of this sector, 0~1
        private double _startAngle;     // n/a
        private double _displayAngle;   // n/a
        private double _innerRadius;    // innner radius
        private double _outerRadius;    // outer radius
        private Color _color;           // fill color

        private Canvas _layoutRoot;
        private Path _secterPath;

        private bool _isShadow;         // Whether this sector is shadow.
        private SectorItem _shadowSector;

        public event EventHandler<SectorItemEventArgs> OnSectorHover;

        #endregion

        /// <summary>
        /// SectorItem constructor.
        /// </summary>
        /// <param name="pValue">Pecentage value of this sector, 0~1.</param>
        /// <param name="pStartAngle">Start Angle of this sector.</param>
        /// <param name="pInnerRadius">Innner radius.</param>
        /// <param name="pOuterRadius">Outer radius.</param>
        /// <param name="pColor">Fill color of this item.</param>
        /// <param name="pIsShadow">Whether this sector is shadow.</param>
        public SectorItem(SectorData pValue, double pStartAngle, double pInnerRadius, double pOuterRadius, Color pColor, bool pIsShadow)
        {
          
            InitializeComponent();           
    
            // Verify params.
            if (pValue.Value < 0)
                throw (new Exception("Sector's value can't be less than 0."));
            if (pValue.Value > 1)
                throw (new Exception("Sector's value can't be greater than 1."));
            if (pInnerRadius < 0)
                throw (new Exception("Sector's innner radius can't be less than 0."));
            if (pOuterRadius <= pInnerRadius)
                throw (new Exception("Sector's outer radius can't be less or equal than inner radius."));

            // Set params.
            _value = pValue;
            _startAngle = pStartAngle;
            _displayAngle = -1 * AngleFromValue(_value.Value);    // move clockwise
            _innerRadius = pInnerRadius;
            _outerRadius = pOuterRadius;
            _color = pColor;

            // Shadow canvas.
            _isShadow = pIsShadow;

            Control_Loaded();


        }

        private void Control_Loaded()
        {
            SyncProperty();

            // Draw sector.
            _secterPath = new Path();
            _secterPath.Fill = new SolidColorBrush(_color);

            PathFigure secterPathFigure = new PathFigure();
            secterPathFigure.StartPoint = new Point(_innerRadius, 0);

            // upper line
            LineSegment upperLineSegment = new LineSegment();
            upperLineSegment.Point = new Point(_outerRadius, 0);

            // right arc
            ArcSegment rightArcSegment = new ArcSegment();
            rightArcSegment.SetValue(ArcSegment.SizeProperty, new Size(_outerRadius, _outerRadius));
            //rightArcSegment.Size.Width = _outerRadius;// = new Point(_outerRadius, _outerRadius);
            //rightArcSegment.Size.Height = _outerRadius;
            rightArcSegment.RotationAngle = 0;
            rightArcSegment.IsLargeArc = Math.Abs(_displayAngle) > 180 ? true : false;
            rightArcSegment.SweepDirection = SweepDirection.Clockwise;
            rightArcSegment.Point = new Point(Math.Cos(_displayAngle * Math.PI / 180) * _outerRadius, -1 * Math.Sin(_displayAngle * Math.PI / 180) * _outerRadius);

            // lower line
            LineSegment lowLineSegment = new LineSegment();
            lowLineSegment.Point = new Point(Math.Cos(_displayAngle * Math.PI / 180) * _innerRadius, -1 * Math.Sin(_displayAngle * Math.PI / 180) * _innerRadius);

            // left arc
            ArcSegment leftArcSegment = new ArcSegment();
            leftArcSegment.SetValue(ArcSegment.SizeProperty, new Size(_innerRadius, _innerRadius));
            //leftArcSegment.Size.Width = _innerRadius;// = new Point(_innerRadius, _innerRadius);
            //leftArcSegment.Size.Height = _innerRadius;
            leftArcSegment.RotationAngle = 0;
            leftArcSegment.IsLargeArc = Math.Abs(_displayAngle) > 180 ? true : false;
            leftArcSegment.SweepDirection = SweepDirection.Counterclockwise;
            leftArcSegment.Point = new Point(_innerRadius, 0);

            // lego!!
            secterPathFigure.Segments = new PathSegmentCollection();
            secterPathFigure.Segments.Add(upperLineSegment);
            secterPathFigure.Segments.Add(rightArcSegment);
            secterPathFigure.Segments.Add(lowLineSegment);
            secterPathFigure.Segments.Add(leftArcSegment);

            PathGeometry secterGeometry = new PathGeometry();
            secterGeometry.Figures = new PathFigureCollection();
            secterGeometry.Figures.Add(secterPathFigure);
            _secterPath.Data = secterGeometry;
            _layoutRoot.Children.Add(_secterPath);

            // Set rotation
            Rotation = _startAngle;


            // Math mouse event
            if (!_isShadow)
            {
                _secterPath.MouseEnter += new MouseEventHandler(_secterPath_MouseEnter);
                _secterPath.MouseLeave += new MouseEventHandler(_secterPath_MouseLeave);
            }
        }

        public void _secterPath_MouseEnter(object sender, MouseEventArgs e)
        {
            // Generate destination.
            (FindName("HoverPosX") as SplineDoubleKeyFrame).Value = Math.Cos((_displayAngle / 2) * Math.PI / 180) * CommonValues.ShowOffLength;
            (FindName("HoverPosY") as SplineDoubleKeyFrame).Value = -1 * Math.Sin((_displayAngle / 2) * Math.PI / 180) * CommonValues.ShowOffLength;
            (FindName("SectorHover") as Storyboard).Begin();
           
            if (!_isShadow)
            {
                // Move shadow
                (_shadowSector.FindName("HoverPosX") as SplineDoubleKeyFrame).Value = Math.Cos((_displayAngle / 2) * Math.PI / 180) * CommonValues.ShowOffLength;
                (_shadowSector.FindName("HoverPosY") as SplineDoubleKeyFrame).Value = -1 * Math.Sin((_displayAngle / 2) * Math.PI / 180) * CommonValues.ShowOffLength;
                (_shadowSector.FindName("SectorHover") as Storyboard).Begin();

                // broadcast event
                // broadcast event.
                EventHandler<SectorItemEventArgs> temp = OnSectorHover;
                if (temp != null)
                    temp(this, new SectorItemEventArgs(_value.ID, _value.Title, _value.Comment, _value.Value));
            }
        }

        public void _secterPath_MouseLeave(object sender, MouseEventArgs e)
        {
            (FindName("SectorOut") as Storyboard).Begin();

            if (!_isShadow)
                (_shadowSector.FindName("SectorOut") as Storyboard).Begin();
        }

        #region Methods
        public SectorItem ShadowSector
        {
            set { _shadowSector = value; }
        }

        public double Rotation
        {
            set { (FindName("SectorRotation") as RotateTransform).Angle = value; }
        }

        private void SyncProperty()
        {
            _layoutRoot = FindName("LayoutRoot") as Canvas;
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
       
        protected override string ResourceName
        {
            get { return "SectorItem.xaml"; }
        }

        #endregion
    }
}
