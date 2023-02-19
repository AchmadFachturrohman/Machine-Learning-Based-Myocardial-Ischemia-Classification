object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Myocardial Ischemia Detection Program'
  ClientHeight = 511
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 93
    Width = 161
    Height = 40
    Caption = 'Plot Sinyal'
    OnClick = SpeedButton1Click
  end
  object SpeedButton7: TSpeedButton
    Left = 8
    Top = 162
    Width = 161
    Height = 39
    Caption = 'DWT'
    OnClick = SpeedButton7Click
  end
  object Label11: TLabel
    Left = 8
    Top = 143
    Width = 3
    Height = 13
  end
  object SpeedButton5: TSpeedButton
    Left = 8
    Top = 415
    Width = 161
    Height = 40
    Caption = 'DFT'
    OnClick = SpeedButton5Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 161
    Height = 57
    Caption = 'Profil Data'
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 19
      Width = 66
      Height = 13
      Caption = 'Jumlah Data :'
    end
    object Label2: TLabel
      Left = 11
      Top = 38
      Width = 98
      Height = 13
      Caption = 'Frekuensi Sampling :'
    end
    object Label3: TLabel
      Left = 112
      Top = 19
      Width = 3
      Height = 13
    end
    object Label4: TLabel
      Left = 112
      Top = 38
      Width = 3
      Height = 13
    end
  end
  object PageControl1: TPageControl
    Left = 183
    Top = 8
    Width = 770
    Height = 497
    ActivePage = TabSheet8
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'ECG'
      object Chart1: TChart
        Left = 3
        Top = 3
        Width = 749
        Height = 463
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.HorizJustify = ljYes
        Legend.LegendStyle = lsSeries
        Legend.ResizeChart = False
        Legend.Shadow.Transparency = 0
        Legend.TopPos = 0
        Legend.Visible = False
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'Normal')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Sequence'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo (mV)'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlack
          Title = 'ECG'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'DFT'
      ImageIndex = 2
      object Chart5: TChart
        Left = 3
        Top = 3
        Width = 749
        Height = 458
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.HorizJustify = ljYes
        Legend.Shadow.Transparency = 0
        Legend.VertMargin = -10
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'Normal')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Frekuensi (Hz)'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Magnitudo'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series5: TBarSeries
          HoverElement = []
          Legend.Visible = False
          Marks.Visible = False
          SeriesColor = 33023
          ShowInLegend = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
        object ChartTool9: TAxisScrollBarTool
          ArrowBrush.BackColor = clGray
          Brush.BackColor = 15790320
          DisabledArrow.BackColor = clWhite
          DrawStyle = dsAlways
          Pen.Color = 6579300
          Thumb.Brush.Color = clSilver
          Thumb.Brush.BackColor = clSilver
          Thumb.Pen.Visible = False
          ThumbBrush.Color = clSilver
          ThumbBrush.BackColor = clSilver
          Margin = 18
          AxisID = 0
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'W1f'
      ImageIndex = 3
      object Label30: TLabel
        Left = 631
        Top = 3
        Width = 62
        Height = 13
        Caption = 'Dekomposisi:'
      end
      object Label33: TLabel
        Left = 631
        Top = 130
        Width = 63
        Height = 13
        Caption = 'Titik Puncak: '
      end
      object Chart8: TChart
        Left = 3
        Top = 5
        Width = 622
        Height = 461
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.HorizJustify = ljYes
        Legend.Shadow.Transparency = 0
        Legend.TopPos = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Axis.Width = 0
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.Ticks.Width = 0
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Sequence'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo (mV)'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object ECG1Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlack
          Title = 'ECG'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object w1fPlot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clRed
          Title = 'w1f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Grad1Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clGreen
          Title = 'Gradien'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Hasil1Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlue
          Title = 'Lebar Gel'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Peaks1Plot: TPointSeries
          HoverElement = [heCurrent]
          Title = 'Puncak'
          ClickableLine = False
          Pointer.Brush.Color = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object ListBox8: TListBox
        Left = 631
        Top = 22
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
      object ListBox15: TListBox
        Left = 631
        Top = 149
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'W2f'
      ImageIndex = 4
      object Label31: TLabel
        Left = 631
        Top = 3
        Width = 65
        Height = 13
        Caption = 'Dekomposisi :'
      end
      object Label32: TLabel
        Left = 631
        Top = 138
        Width = 63
        Height = 13
        Caption = 'Titik Puncak :'
      end
      object Chart9: TChart
        Left = 3
        Top = 0
        Width = 622
        Height = 466
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.HorizJustify = ljYes
        Legend.LegendStyle = lsSeries
        Legend.Shadow.Transparency = 0
        Legend.TopPos = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Sequence'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo (mV)'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object ECG2Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlack
          Title = 'ECG'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object w2fPlot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clRed
          Title = 'w2f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Grad2Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clGreen
          Title = 'Gradien'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Hasil2Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlue
          Title = 'Lebar Gel'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Peaks2Plot: TPointSeries
          HoverElement = [heCurrent]
          Title = 'Puncak'
          ClickableLine = False
          Pointer.Brush.Color = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object ListBox9: TListBox
        Left = 631
        Top = 22
        Width = 122
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
      object ListBox14: TListBox
        Left = 631
        Top = 157
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'W3f'
      ImageIndex = 5
      object Label34: TLabel
        Left = 631
        Top = 3
        Width = 65
        Height = 13
        Caption = 'Dekomposisi :'
      end
      object Label35: TLabel
        Left = 631
        Top = 136
        Width = 63
        Height = 13
        Caption = 'Titik Puncak :'
      end
      object Chart2: TChart
        Left = 3
        Top = 3
        Width = 622
        Height = 463
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.HorizJustify = ljYes
        Legend.LegendStyle = lsSeries
        Legend.Shadow.Transparency = 0
        Legend.TopPos = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Sequence'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo (mV)'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object ECG3Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlack
          Title = 'ECG'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object w3fplot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clRed
          Title = 'w3f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Grad3Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clGreen
          Title = 'Gradien'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Hasil3Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlue
          Title = 'Lebar Gel'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Peaks3Plot: TPointSeries
          HoverElement = [heCurrent]
          SeriesColor = clRed
          Title = 'Puncak'
          ClickableLine = False
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object ListBox10: TListBox
        Left = 631
        Top = 27
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
      object ListBox13: TListBox
        Left = 631
        Top = 155
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'W4f'
      ImageIndex = 6
      object Label5: TLabel
        Left = 631
        Top = 130
        Width = 63
        Height = 13
        Caption = 'Titik Puncak :'
      end
      object Label29: TLabel
        Left = 631
        Top = 3
        Width = 65
        Height = 13
        Caption = 'Dekomposisi :'
      end
      object Chart10: TChart
        Left = 3
        Top = 3
        Width = 622
        Height = 463
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.HorizJustify = ljYes
        Legend.Shadow.Transparency = 0
        Legend.TopPos = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Sequence'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo (mV)'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object ECG4Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = 64
          Title = 'ECG'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object w4fPlot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clRed
          Title = 'w4f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Grad4Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clGreen
          Title = 'Gradien'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Hasil4Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlue
          Title = 'Lebar Gel'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Peaks4Plot: TPointSeries
          HoverElement = [heCurrent]
          Title = 'Puncak'
          ClickableLine = False
          Pointer.Brush.Color = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object ListBox6: TListBox
        Left = 631
        Top = 22
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
      object ListBox12: TListBox
        Left = 631
        Top = 149
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'W5f'
      ImageIndex = 7
      object Label9: TLabel
        Left = 631
        Top = 130
        Width = 63
        Height = 13
        Caption = 'Titik Puncak :'
      end
      object Label10: TLabel
        Left = 631
        Top = 3
        Width = 65
        Height = 13
        Caption = 'Dekomposisi :'
      end
      object Chart6: TChart
        Left = 3
        Top = 3
        Width = 622
        Height = 463
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.HorizJustify = ljYes
        Legend.Shadow.Transparency = 0
        Legend.TopPos = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Sequence'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo (mV)'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object ECG5Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlack
          Title = 'ECG'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object w5fplot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clRed
          Title = 'w5f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Grad5Plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clGreen
          Title = 'Gradien'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object hasil5plot: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlue
          Title = 'LebarGel'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Peaks5Plot: TPointSeries
          HoverElement = [heCurrent]
          Title = 'Puncak'
          ClickableLine = False
          Pointer.Brush.Color = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object ListBox7: TListBox
        Left = 631
        Top = 149
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
      object ListBox11: TListBox
        Left = 631
        Top = 22
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'koef'
      ImageIndex = 8
      object Label22: TLabel
        Left = 672
        Top = 130
        Width = 37
        Height = 13
        Caption = 'Label22'
      end
      object Label21: TLabel
        Left = 507
        Top = 130
        Width = 37
        Height = 13
        Caption = 'Label21'
      end
      object Label16: TLabel
        Left = 507
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Skala 4'
      end
      object Label15: TLabel
        Left = 352
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Skala 3'
      end
      object Label14: TLabel
        Left = 200
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Skala 2'
      end
      object Label13: TLabel
        Left = 48
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Skala 1'
      end
      object Label20: TLabel
        Left = 352
        Top = 130
        Width = 37
        Height = 13
        Caption = 'Label20'
      end
      object Label19: TLabel
        Left = 200
        Top = 130
        Width = 37
        Height = 13
        Caption = 'Label19'
      end
      object Label18: TLabel
        Left = 48
        Top = 130
        Width = 37
        Height = 13
        Caption = 'Label18'
      end
      object Label17: TLabel
        Left = 672
        Top = 8
        Width = 34
        Height = 13
        Caption = 'Skala 5'
      end
      object ListBox2: TListBox
        Left = 160
        Top = 27
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 0
      end
      object ListBox1: TListBox
        Left = 3
        Top = 27
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 1
      end
      object Chart7: TChart
        Left = 3
        Top = 149
        Width = 749
        Height = 312
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.HorizJustify = ljYes
        Legend.Shadow.Transparency = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'Respon Frekuensi')
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'Frekuensi'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Power'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 2
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Q1: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clRed
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Q2: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlack
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Q3: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clGreen
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Q4: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clBlue
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Q5: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = 33023
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object ListBox5: TListBox
        Left = 631
        Top = 27
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 3
      end
      object ListBox4: TListBox
        Left = 475
        Top = 27
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 4
      end
      object ListBox3: TListBox
        Left = 320
        Top = 27
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 5
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Compare'
      ImageIndex = 9
      object Chart4: TChart
        Left = 3
        Top = 3
        Width = 749
        Height = 463
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Color = clBlue
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        Gradient.Visible = True
        LeftWall.Color = 14745599
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Name = 'Verdana'
        Legend.ResizeChart = False
        Legend.Shadow.Transparency = 0
        RightWall.Color = 14745599
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.Grid.Color = 11119017
        BottomAxis.LabelsFormat.Font.Name = 'Verdana'
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Caption = 'waktu (detik)'
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFormat.Font.Name = 'Verdana'
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Caption = 'Amplitudo'
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFormat.Font.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFormat.Font.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: TLineSeries
          HoverElement = [heCurrent]
          Legend.Text = 'ECG'
          LegendTitle = 'ECG'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series6: TLineSeries
          HoverElement = [heCurrent]
          Legend.Text = 'w1f'
          LegendTitle = 'w1f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series7: TLineSeries
          HoverElement = [heCurrent]
          Legend.Text = 'w2f'
          LegendTitle = 'w2f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series9: TLineSeries
          HoverElement = [heCurrent]
          Legend.Text = 'w3f'
          LegendTitle = 'w3f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series10: TLineSeries
          HoverElement = [heCurrent]
          Legend.Text = 'w4f'
          LegendTitle = 'w4f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series11: TLineSeries
          HoverElement = [heCurrent]
          Legend.Text = 'w5f'
          LegendTitle = 'w5f'
          Brush.BackColor = clDefault
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 70
    Width = 76
    Height = 17
    Caption = 'Physionet'
    TabOrder = 2
  end
  object RadioButton2: TRadioButton
    Left = 90
    Top = 71
    Width = 76
    Height = 17
    Caption = 'Phantom'
    TabOrder = 3
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 207
    Width = 161
    Height = 202
    Caption = 'Ambil Data'
    TabOrder = 4
    object Label6: TLabel
      Left = 11
      Top = 127
      Width = 30
      Height = 13
      Caption = 'ID File'
    end
    object RadioGroup1: TRadioGroup
      Left = 3
      Top = 16
      Width = 91
      Height = 105
      Items.Strings = (
        'Dekomposisi'
        'Titik Puncak')
      TabOrder = 0
    end
    object RadioGroup2: TRadioGroup
      Left = 100
      Top = 16
      Width = 58
      Height = 105
      Items.Strings = (
        'w1f'
        'w2f'
        'w3f'
        'w4f'
        'w5f')
      TabOrder = 1
    end
    object Button1: TButton
      Left = 3
      Top = 154
      Width = 155
      Height = 40
      Caption = 'Simpan Data'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 56
      Top = 127
      Width = 102
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
  end
  object Button2: TButton
    Left = 8
    Top = 461
    Width = 161
    Height = 42
    Caption = 'Clear'
    TabOrder = 5
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 216
    Top = 464
  end
  object SaveDialog1: TSaveDialog
    Left = 184
    Top = 464
  end
end
