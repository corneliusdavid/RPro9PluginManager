object frmRProPluginMgrMain: TfrmRProPluginMgrMain
  Left = 0
  Top = 0
  Caption = 'Retail Pro 9 Plugin Manager'
  ClientHeight = 889
  ClientWidth = 1239
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefault
  OnActivate = FormActivate
  PixelsPerInch = 192
  TextHeight = 32
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1239
    Height = 889
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = pnlActive
        Row = 1
      end
      item
        Column = 1
        Control = Panel1
        Row = 1
      end
      item
        Column = 0
        Control = edtRProPluginFolder
        Row = 0
      end
      item
        Column = 1
        Control = Label3
        Row = 0
      end>
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    RowCollection = <
      item
        Value = 16.666666666666670000
      end
      item
        Value = 83.333333333333330000
      end>
    TabOrder = 0
    ExplicitLeft = -11
    ExplicitTop = 64
    ExplicitWidth = 1254
    DesignSize = (
      1239
      889)
    object pnlActive: TPanel
      Left = 11
      Top = 157
      Width = 604
      Height = 721
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 0
      ExplicitLeft = 113
      ExplicitTop = 498
      ExplicitWidth = 370
      ExplicitHeight = 82
      object Label2: TLabel
        Left = 6
        Top = 6
        Width = 592
        Height = 37
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alTop
        Alignment = taCenter
        Caption = 'Active Plugins'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 182
      end
      object lbActivePlugins: TListBox
        Left = 6
        Top = 43
        Width = 592
        Height = 672
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        ItemHeight = 32
        TabOrder = 0
        OnDblClick = lbActivePluginsDblClick
        ExplicitLeft = 0
        ExplicitTop = 55
        ExplicitWidth = 614
        ExplicitHeight = 690
      end
    end
    object Panel1: TPanel
      Left = 625
      Top = 157
      Width = 603
      Height = 721
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alClient
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      ExplicitLeft = 633
      ExplicitTop = 149
      ExplicitWidth = 626
      ExplicitHeight = 739
      object Label1: TLabel
        Left = 6
        Top = 6
        Width = 591
        Height = 37
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alTop
        Alignment = taCenter
        Caption = 'Disabled Plugins'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 213
      end
      object lbDisabledPlugins: TListBox
        Left = 6
        Top = 43
        Width = 591
        Height = 672
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        ItemHeight = 32
        TabOrder = 0
        OnDblClick = lbDisabledPluginsDblClick
        ExplicitLeft = 2
        ExplicitTop = 55
      end
    end
    object edtRProPluginFolder: TLabeledEdit
      Left = 43
      Top = 78
      Width = 539
      Height = 40
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Anchors = [akLeft, akRight]
      AutoSize = False
      EditLabel.Width = 273
      EditLabel.Height = 32
      EditLabel.Margins.Left = 6
      EditLabel.Margins.Top = 6
      EditLabel.Margins.Right = 6
      EditLabel.Margins.Bottom = 6
      EditLabel.Caption = 'Retail Pro 9 Plugin Folder:'
      TabOrder = 2
      Text = 'C:\RetailPro9\Plugins'
      ExplicitTop = 74
    end
    object Label3: TLabel
      Left = 715
      Top = 36
      Width = 422
      Height = 85
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Double-click to move a plugin from Active to Disabled or back.'
      WordWrap = True
    end
  end
  object ccRegistryLayoutSaver: TccRegistryLayoutSaver
    Left = 182
    Top = 247
  end
end
