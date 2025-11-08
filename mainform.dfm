object frmMain: TfrmMain
  Left = 196
  Top = 105
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SimCity Name Generator v1.2'
  ClientHeight = 267
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblAbout: TLabel
    Left = 8
    Top = 248
    Width = 87
    Height = 13
    Caption = #169'2004 muhtadi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    OnDblClick = lblAboutDblClick
  end
  object lblInfo: TLabel
    Left = 104
    Top = 248
    Width = 28
    Height = 13
    Caption = 'lblInfo'
    Transparent = True
    Visible = False
  end
  object grpCityName: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 137
    Caption = 'City Name Generator'
    TabOrder = 0
    object edtCityName: TEdit
      Left = 8
      Top = 100
      Width = 241
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnGenerateCityName: TButton
      Left = 256
      Top = 96
      Width = 75
      Height = 33
      Caption = 'Generate'
      TabOrder = 1
      OnClick = btnGenerateCityNameClick
    end
    object chkPrefix: TCheckBox
      Left = 16
      Top = 24
      Width = 129
      Height = 17
      Caption = 'Add prefix to city name'
      TabOrder = 2
      OnClick = chkPrefixClick
    end
    object chkMidfix: TCheckBox
      Left = 16
      Top = 48
      Width = 129
      Height = 17
      Caption = 'Add middle name'
      TabOrder = 3
      OnClick = chkMidfixClick
    end
    object edtTypeCityName: TEdit
      Left = 192
      Top = 64
      Width = 137
      Height = 21
      Enabled = False
      TabOrder = 4
      Text = 'Cityname'
    end
    object rdoUseNames: TRadioButton
      Left = 168
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Use "names.txt"'
      Checked = True
      TabOrder = 5
      TabStop = True
      OnClick = rdoUseNamesClick
    end
    object rdoUseText: TRadioButton
      Left = 168
      Top = 40
      Width = 145
      Height = 17
      Caption = 'I'#39'll provide my own name'
      TabOrder = 6
      OnClick = rdoUseTextClick
    end
  end
  object grpMayorName: TGroupBox
    Left = 8
    Top = 152
    Width = 345
    Height = 89
    Caption = 'Mayor Name Generator'
    TabOrder = 1
    object edtMayorName: TEdit
      Left = 8
      Top = 52
      Width = 241
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnGenerateMayorName: TButton
      Left = 256
      Top = 48
      Width = 75
      Height = 33
      Caption = 'Generate'
      TabOrder = 1
      OnClick = btnGenerateMayorNameClick
    end
    object rdobtnMale: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Male'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rdobtnMaleClick
    end
    object rdobtnFemale: TRadioButton
      Left = 72
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Female'
      TabOrder = 3
      OnClick = rdobtnFemaleClick
    end
  end
  object lstMayorName: TListBox
    Left = 136
    Top = 280
    Width = 121
    Height = 73
    ItemHeight = 13
    TabOrder = 2
  end
  object lstNames: TListBox
    Left = 8
    Top = 280
    Width = 121
    Height = 73
    ItemHeight = 13
    TabOrder = 3
  end
  object lstSurname: TListBox
    Left = 264
    Top = 280
    Width = 121
    Height = 73
    ItemHeight = 13
    TabOrder = 4
  end
  object lstPrefix: TListBox
    Left = 8
    Top = 360
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 5
  end
  object lstMidfix: TListBox
    Left = 136
    Top = 360
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 6
  end
  object lstSuffix: TListBox
    Left = 264
    Top = 360
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 7
  end
end
