﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Dieser Code wurde von einem Tool generiert.
//     Laufzeitversion:2.0.50727.4005
//
//     Änderungen an dieser Datei können falsches Verhalten verursachen und gehen verloren, wenn
//     der Code erneut generiert wird.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Media3D;


namespace HaoRan.WebCam
{
   
   /// <summary>An effect that inverts all colors.</summary>
   public class InvertColorEffect : ShaderEffect {
      public static readonly DependencyProperty InputProperty = ShaderEffect.RegisterPixelShaderSamplerProperty("Input", typeof(InvertColorEffect), 0);
      public InvertColorEffect() {
          this.PixelShader = new PixelShader() { UriSource = new Uri("/HaoRan.WebCam;component/Shader/InvertColor.ps", UriKind.Relative) };
          this.UpdateShaderValue(InputProperty);
      }
      public Brush Input {
         get {
            return ((Brush)(this.GetValue(InputProperty)));
         }
         set {
            this.SetValue(InputProperty, value);
         }
      }
   }
}