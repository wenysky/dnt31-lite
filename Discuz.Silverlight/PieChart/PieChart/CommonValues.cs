using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;

using System.Collections.ObjectModel;

namespace PieChart
{
    public class CommonValues
    {
        public static double OuterRadius = 150;           // outer radius of pie chart.
        public static double InnerRadius = 70;              // inner radius of pie chart.
        public static double ShowOffLength = 15;            // length that sector will be moved when hover.

        // colors
        public static Color ShadowColor = Color.FromArgb(128, 143, 144, 134);
        public static Color ItemColor0 = Color.FromArgb(255, 102, 154, 255);
        public static Color ItemColor1 = Color.FromArgb(255, 153, 102, 203);
        public static Color ItemColor2 = Color.FromArgb(255, 255, 15, 0);
        public static Color ItemColor3 = Color.FromArgb(255, 255, 102, 0);
        public static Color ItemColor4 = Color.FromArgb(255, 255, 158, 0);
        public static Color ItemColor5 = Color.FromArgb(255, 255, 211, 1);
        public static Color ItemColor6 = Color.FromArgb(255, 248, 255, 1);
        public static Color ItemColor7 = Color.FromArgb(255, 176, 222, 9);
        public static Color ItemColor8 = Color.FromArgb(255, 1, 212, 21);
        public static Color ItemColor9 = Color.FromArgb(255, 0, 153, 203);
    }
}
