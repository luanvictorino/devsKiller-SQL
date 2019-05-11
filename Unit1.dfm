object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
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
    Height = 185
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 29
      Width = 42
      Height = 13
      Caption = 'Colunas:'
    end
    object Label2: TLabel
      Left = 232
      Top = 29
      Width = 41
      Height = 13
      Caption = 'Tabelas:'
    end
    object Label3: TLabel
      Left = 440
      Top = 29
      Width = 53
      Height = 13
      Caption = 'Condi'#231#245'es:'
    end
    object memoColuna: TMemo
      Left = 16
      Top = 48
      Width = 185
      Height = 89
      TabOrder = 0
    end
    object memoTabela: TMemo
      Left = 232
      Top = 48
      Width = 185
      Height = 89
      TabOrder = 1
    end
    object memoCondicao: TMemo
      Left = 440
      Top = 48
      Width = 185
      Height = 89
      TabOrder = 2
    end
    object btnGerar: TButton
      Left = 280
      Top = 145
      Width = 75
      Height = 25
      Caption = 'Gerar SQL'
      TabOrder = 3
      OnClick = btnGerarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 176
    Width = 635
    Height = 124
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object memoSql: TMemo
      Left = 16
      Top = 15
      Width = 609
      Height = 89
      TabOrder = 0
    end
  end
end
