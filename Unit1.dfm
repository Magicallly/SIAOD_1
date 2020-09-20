object fMain: TfMain
  Left = 410
  Top = 173
  BorderStyle = bsDialog
  Caption = 'Quest'
  ClientHeight = 465
  ClientWidth = 594
  Color = clCream
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 600
  Constraints.MinHeight = 500
  Constraints.MinWidth = 600
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object imgMain: TImage
    Left = 64
    Top = 24
    Width = 457
    Height = 241
  end
  object btnLeft: TButton
    Left = 8
    Top = 416
    Width = 281
    Height = 40
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = btnLeftClick
  end
  object btnRight: TButton
    Left = 288
    Top = 416
    Width = 289
    Height = 40
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = btnRightClick
  end
  object mmMain: TMemo
    Left = 8
    Top = 272
    Width = 569
    Height = 145
    Color = 16771828
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
