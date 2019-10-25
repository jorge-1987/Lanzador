object FrmMain: TFrmMain
  Left = 192
  Top = 107
  Width = 903
  Height = 512
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Lanzador Pro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlDesc: TPanel
    Left = 465
    Top = 0
    Width = 328
    Height = 433
    Align = alCustom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    TabOrder = 0
    object MeDesc: TMemo
      Left = 6
      Top = 245
      Width = 316
      Height = 182
      Align = alBottom
      Lines.Strings = (
        'MeDesc')
      TabOrder = 0
    end
    object PnlImg: TPanel
      Left = 6
      Top = 6
      Width = 316
      Height = 239
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BorderWidth = 4
      TabOrder = 1
      object ImgDesc: TImage
        Left = 6
        Top = 6
        Width = 304
        Height = 227
        Align = alClient
      end
    end
  end
  object PnlList: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 433
    Align = alCustom
    BevelInner = bvLowered
    BorderWidth = 3
    Caption = 'PnlList'
    TabOrder = 1
    object LstProgram: TListBox
      Left = 169
      Top = 5
      Width = 291
      Height = 423
      Align = alClient
      ItemHeight = 13
      Items.Strings = (
        'Programa01'
        'Programa02'
        'Programa03'
        'Programa04'
        'Programa05')
      TabOrder = 0
    end
    object LstMenu: TListBox
      Left = 5
      Top = 5
      Width = 164
      Height = 423
      Align = alLeft
      ItemHeight = 13
      Items.Strings = (
        'Internet'
        'Graficos'
        'Juegos'
        'General')
      TabOrder = 1
    end
  end
  object PnlAccion: TPanel
    Left = 0
    Top = 433
    Width = 895
    Height = 33
    Align = alBottom
    Anchors = [akLeft, akTop, akBottom]
    AutoSize = True
    BevelInner = bvLowered
    BorderWidth = 2
    TabOrder = 2
    object BtnAdd: TButton
      Left = 8
      Top = 4
      Width = 105
      Height = 25
      Caption = 'Agregar'
      TabOrder = 0
    end
    object BtnDel: TButton
      Left = 120
      Top = 4
      Width = 105
      Height = 25
      Caption = 'Eliminar'
      TabOrder = 1
    end
    object BtnMod: TButton
      Left = 232
      Top = 4
      Width = 105
      Height = 25
      Caption = 'Modificar'
      TabOrder = 2
    end
    object BtnDesc: TButton
      Left = 344
      Top = 4
      Width = 105
      Height = 25
      Caption = 'Ver Desc'
      TabOrder = 3
      OnClick = BtnDescClick
    end
  end
  object MMenu: TMainMenu
    Left = 696
    Top = 24
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object BtnSalir: TMenuItem
        Caption = 'Salir'
      end
    end
  end
end
