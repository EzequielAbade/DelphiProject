object FrmPesquisa_Produtos: TFrmPesquisa_Produtos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 317
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 33
    Align = alTop
    Caption = 'Produtos'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 635
    Height = 33
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 8
      Width = 72
      Height = 19
      Caption = 'Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 228
      Top = 8
      Width = 377
      Height = 21
      TabOrder = 0
      TextHint = 'pesquise o produto'
      OnKeyDown = Edit1KeyDown
    end
    object ComboBox1: TComboBox
      Left = 135
      Top = 8
      Width = 71
      Height = 21
      TabOrder = 1
      TextHint = 'Selecione'
      Items.Strings = (
        'Descri'#231#227'o'
        'ID')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 635
    Height = 259
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = DM.Query_produtos
    Left = 552
  end
end
