object adminLog: TadminLog
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'AdminLogin'
  ClientHeight = 167
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 273
    Height = 169
    BevelEdges = [beLeft, beTop]
    BevelOuter = bvLowered
    BevelWidth = 5
    Color = clInfoText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 26
      Top = 54
      Width = 48
      Height = 15
      Caption = 'Staff Id :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = 15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 94
      Width = 59
      Height = 15
      Caption = 'Password :'
      Color = clInfoText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = 15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 66
      Top = 14
      Width = 138
      Height = 23
      Caption = 'ADMIN LOGIN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoBk
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 114
      Top = 48
      Width = 121
      Height = 26
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 114
      Top = 96
      Width = 121
      Height = 26
      PasswordChar = '*'
      TabOrder = 1
    end
    object Button4: TButton
      Left = 168
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 33
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 3
      OnClick = Button5Click
    end
  end
end
