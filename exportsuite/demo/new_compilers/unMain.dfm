object frmMain: TfrmMain
  Left = 246
  Top = 108
  Caption = 'Firesoft Export Suite Demo (Export Grid)'
  ClientHeight = 373
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    549
    373)
  PixelsPerInch = 96
  TextHeight = 13
  object lbHelp: TLabel
    Left = 92
    Top = 10
    Width = 221
    Height = 13
    Caption = 'Click Export and select the file format to export!'
  end
  object dbgBooks: TDBGrid
    Left = 8
    Top = 35
    Width = 533
    Height = 330
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsBooks
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btnExport: TButton
    Left = 4
    Top = 4
    Width = 75
    Height = 25
    Caption = '&Export !'
    TabOrder = 1
    OnClick = btnExportClick
  end
  object chkCopyColumns: TCheckBox
    Left = 412
    Top = 8
    Width = 133
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Assign DBGrid Columns'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object dsBooks: TDataSource
    DataSet = cdsBooks
    Left = 64
    Top = 64
  end
  object DataToDbf1: TDataToDbf
    Fields = <>
    Left = 36
    Top = 140
  end
  object DataToAscii1: TDataToAscii
    Fields = <>
    Left = 64
    Top = 140
  end
  object DataToXLS1: TDataToXLS
    Columns = <>
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Left = 92
    Top = 140
  end
  object DataToWK11: TDataToWK1
    Columns = <>
    Left = 120
    Top = 140
  end
  object SaveDialog: TSaveDialog
    Filter = 
      'DBF File|*.dbf|CSV File|*.csv|XLS File|*.xls|WK1 File|*.wk1|HTML' +
      ' File|*.html'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Export'
    Left = 92
    Top = 64
  end
  object DataToHTML1: TDataToHTML
    Fields = <>
    Left = 148
    Top = 140
  end
  object cdsBooks: TClientDataSet
    Aggregates = <>
    FileName = 
      'C:\Users\Public\Documents\Embarcadero\Studio\19.0\Samples\Data\c' +
      'ountry.cds'
    Params = <>
    Left = 32
    Top = 64
  end
end
