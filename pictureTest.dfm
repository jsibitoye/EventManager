object ImgTest: TImgTest
  Left = 0
  Top = 0
  Caption = 'ImgTest'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 152
    Top = 16
    Width = 105
    Height = 105
    Stretch = True
  end
  object Label1: TLabel
    Left = 192
    Top = 152
    Width = 73
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 80
    Top = 160
    Width = 75
    Height = 25
    Caption = 'open'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 160
    Width = 75
    Height = 25
    Caption = 'save'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 263
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ComboBox1'
    Items.Strings = (
      'you'
      'me')
  end
  object Button3: TButton
    Left = 288
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 48
    Top = 96
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 392
    Top = 88
  end
end
