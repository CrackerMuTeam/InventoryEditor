object InvForm: TInvForm
  Left = 217
  Top = 144
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'CMT Inventory Editor by Unneon (1.1Beta)'
  ClientHeight = 481
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label18: TLabel
    Left = 255
    Top = 206
    Width = 10
    Height = 13
    Caption = 'X:'
  end
  object Label19: TLabel
    Left = 318
    Top = 206
    Width = 10
    Height = 13
    Caption = 'Y:'
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 3
    Width = 240
    Height = 98
    Caption = 'Selecionar Account'
    TabOrder = 0
    object Label9: TLabel
      Left = 8
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Account:'
    end
    object Label12: TLabel
      Left = 8
      Top = 60
      Width = 52
      Height = 13
      Caption = 'Character:'
    end
    object ComboBox2: TComboBox
      Left = 66
      Top = 57
      Width = 146
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnClick = ComboBox2Click
    end
    object ComboBox1: TComboBox
      Left = 66
      Top = 28
      Width = 146
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnChange = ComboBox1Change
    end
  end
  object GroupBox4: TGroupBox
    Left = 378
    Top = 206
    Width = 222
    Height = 228
    TabOrder = 3
    object Panel2: TPanel
      Left = 5
      Top = 9
      Width = 212
      Height = 212
      Align = alCustom
      BorderStyle = bsSingle
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 80
        Top = 88
        Width = 23
        Height = 22
        Visible = False
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 378
    Top = 3
    Width = 222
    Height = 204
    Caption = 'Items no character'
    TabOrder = 2
    object Panel8: TPanel
      Left = 82
      Top = 21
      Width = 48
      Height = 48
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 82
      Top = 71
      Width = 48
      Height = 72
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 82
      Top = 145
      Width = 48
      Height = 48
      TabOrder = 2
    end
    object Panel12: TPanel
      Left = 32
      Top = 79
      Width = 48
      Height = 64
      TabOrder = 3
    end
    object Panel7: TPanel
      Left = 158
      Top = 145
      Width = 48
      Height = 48
      TabOrder = 4
    end
    object Panel10: TPanel
      Left = 56
      Top = 145
      Width = 24
      Height = 24
      TabOrder = 5
    end
    object Panel9: TPanel
      Left = 132
      Top = 145
      Width = 24
      Height = 24
      TabOrder = 6
    end
    object Panel5: TPanel
      Left = 6
      Top = 145
      Width = 48
      Height = 48
      TabOrder = 7
    end
    object Panel11: TPanel
      Left = 132
      Top = 79
      Width = 48
      Height = 64
      TabOrder = 8
    end
    object Panel13: TPanel
      Left = 56
      Top = 52
      Width = 24
      Height = 24
      TabOrder = 9
    end
    object Panel14: TPanel
      Left = 6
      Top = 21
      Width = 24
      Height = 24
      TabOrder = 10
    end
    object Panel15: TPanel
      Left = 144
      Top = 21
      Width = 62
      Height = 36
      TabOrder = 11
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 458
    Width = 620
    Height = 23
    Panels = <
      item
        Width = 822
      end>
  end
  object GroupBox7: TGroupBox
    Left = 247
    Top = 111
    Width = 128
    Height = 346
    TabOrder = 1
    object Label16: TLabel
      Left = 3
      Top = 9
      Width = 89
      Height = 13
      Caption = 'Tamanho do item: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 95
      Top = 9
      Width = 18
      Height = 13
      Caption = '0x0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label11: TLabel
      Left = 4
      Top = 28
      Width = 97
      Height = 13
      Caption = 'Lugar no invent'#225'rio:'
    end
    object Label13: TLabel
      Left = 4
      Top = 74
      Width = 40
      Height = 13
      Caption = 'Posi'#231#227'o:'
    end
    object Label15: TLabel
      Left = 67
      Top = 93
      Width = 10
      Height = 13
      Caption = 'Y:'
    end
    object Label14: TLabel
      Left = 4
      Top = 93
      Width = 10
      Height = 13
      Caption = 'X:'
    end
    object ComboBox8: TComboBox
      Left = 4
      Top = 90
      Width = 117
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Visible = False
      OnChange = ComboBox8Change
      Items.Strings = (
        'Weapon Left'
        'Weapon Right'
        'Helm'
        'Armor'
        'Pants'
        'Gloves '
        'Boots'
        'Wings'
        'Pet'
        'Pendant'
        'Ring Left'
        'Ring Right')
    end
    object ComboBox7: TComboBox
      Left = 4
      Top = 47
      Width = 117
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox7Change
    end
    object ComboBox5: TComboBox
      Left = 81
      Top = 90
      Width = 41
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
    object ComboBox6: TComboBox
      Left = 20
      Top = 90
      Width = 41
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
    object GroupBox6: TGroupBox
      Left = 4
      Top = 156
      Width = 121
      Height = 187
      TabOrder = 7
      object BitBtn1: TBitBtn
        Left = 6
        Top = 12
        Width = 109
        Height = 17
        Caption = 'Editar Invent'#225'rio'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 6
        Top = 35
        Width = 109
        Height = 17
        Caption = 'Apagar Invent'#225'rio'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 6
        Top = 58
        Width = 109
        Height = 17
        Caption = 'Editar muitem.mdb'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 6
        Top = 104
        Width = 109
        Height = 17
        Caption = 'Fechar'
        TabOrder = 3
        OnClick = BitBtn4Click
      end
      object CheckBox5: TCheckBox
        Left = 11
        Top = 151
        Width = 107
        Height = 18
        Caption = 'Ver altera'#231#245'es '
        TabOrder = 5
        WordWrap = True
      end
      object BitBtn6: TBitBtn
        Left = 6
        Top = 127
        Width = 109
        Height = 17
        Caption = 'Cr'#233'ditos'
        TabOrder = 4
        OnClick = BitBtn6Click
      end
      object CheckBox6: TCheckBox
        Left = 11
        Top = 165
        Width = 107
        Height = 19
        Caption = 'Copiar query '
        TabOrder = 6
        WordWrap = True
      end
      object BitBtn5: TBitBtn
        Left = 6
        Top = 81
        Width = 109
        Height = 17
        Caption = 'Editar CMTedit.ini'
        TabOrder = 7
        OnClick = BitBtn5Click
      end
    end
    object BitBtn11: TBitBtn
      Left = 8
      Top = 134
      Width = 109
      Height = 16
      Caption = 'Adicionar Item'
      TabOrder = 6
      OnClick = BitBtn11Click
    end
    object ComboBox9: TComboBox
      Left = 81
      Top = 90
      Width = 42
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '')
    end
    object ComboBox10: TComboBox
      Left = 20
      Top = 90
      Width = 41
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
  end
  object Edit3: TEdit
    Left = 381
    Top = 436
    Width = 216
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object GroupBox8: TGroupBox
    Left = 628
    Top = 3
    Width = 222
    Height = 124
    TabOrder = 6
    object Panel1: TPanel
      Left = 5
      Top = 9
      Width = 212
      Height = 108
      Align = alCustom
      BorderStyle = bsSingle
      TabOrder = 0
    end
  end
  object BitBtn12: TBitBtn
    Left = 601
    Top = 386
    Width = 17
    Height = 44
    Caption = '>'
    TabOrder = 7
    OnClick = BitBtn12Click
  end
  object RichEdit1: TRichEdit
    Left = 251
    Top = 8
    Width = 121
    Height = 107
    Lines.Strings = (
      'RichEdit1')
    TabOrder = 8
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 100
    Width = 241
    Height = 358
    Caption = 'Selecionar Item'
    TabOrder = 9
    object Label1: TLabel
      Left = 5
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label2: TLabel
      Left = 5
      Top = 52
      Width = 26
      Height = 13
      Caption = 'Item:'
    end
    object Label3: TLabel
      Left = 5
      Top = 80
      Width = 29
      Height = 13
      Caption = 'Level:'
    end
    object Label4: TLabel
      Left = 5
      Top = 120
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object Label5: TLabel
      Left = 200
      Top = 80
      Width = 14
      Height = 13
      Caption = '+0'
    end
    object Label6: TLabel
      Left = 200
      Top = 120
      Width = 11
      Height = 13
      Caption = 'z0'
    end
    object Label7: TLabel
      Left = 5
      Top = 151
      Width = 45
      Height = 13
      Caption = 'Duration:'
    end
    object Label8: TLabel
      Left = 5
      Top = 184
      Width = 30
      Height = 13
      Caption = 'Serial:'
    end
    object Label17: TLabel
      Left = 5
      Top = 212
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object ComboBox3: TComboBox
      Left = 54
      Top = 21
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox3Change
    end
    object ComboBox4: TComboBox
      Left = 54
      Top = 48
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox4Change
    end
    object TrackBar1: TTrackBar
      Left = 49
      Top = 75
      Width = 150
      Height = 31
      Max = 15
      TabOrder = 2
      OnChange = TrackBar1Change
    end
    object TrackBar2: TTrackBar
      Left = 49
      Top = 112
      Width = 150
      Height = 33
      Max = 7
      TabOrder = 3
      OnChange = TrackBar2Change
    end
    object Edit1: TEdit
      Left = 56
      Top = 148
      Width = 24
      Height = 21
      MaxLength = 3
      TabOrder = 4
      Text = '255'
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 86
      Top = 151
      Width = 42
      Height = 16
      Caption = 'Skill'
      TabOrder = 5
    end
    object CheckBox3: TCheckBox
      Left = 130
      Top = 147
      Width = 41
      Height = 24
      Caption = 'Luck'
      TabOrder = 6
    end
    object CheckBox2: TCheckBox
      Left = 5
      Top = 211
      Width = 59
      Height = 17
      Caption = 'Ancient'
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 54
      Top = 181
      Width = 59
      Height = 21
      MaxLength = 8
      TabOrder = 8
      Text = '00000000'
      OnKeyPress = Edit2KeyPress
    end
    object CheckBox4: TCheckBox
      Left = 119
      Top = 184
      Width = 97
      Height = 17
      Caption = 'Auto Serial'
      TabOrder = 9
      OnClick = CheckBox4Click
    end
    object GroupBox5: TGroupBox
      Left = 3
      Top = 234
      Width = 235
      Height = 121
      Caption = 'Op'#231#245'es Excelents'
      TabOrder = 10
      object zy1: TCheckBox
        Left = 8
        Top = 16
        Width = 224
        Height = 17
        Caption = 'Increases Mana After Monster +Mana/8'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = zy1Click
      end
      object zy2: TCheckBox
        Left = 8
        Top = 32
        Width = 224
        Height = 17
        Caption = 'Increases Life After Monster +life/8'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = zy1Click
      end
      object zy3: TCheckBox
        Left = 8
        Top = 48
        Width = 224
        Height = 17
        Caption = 'Increase Attacking(wizardry)speed+7'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = zy1Click
      end
      object zy4: TCheckBox
        Left = 8
        Top = 64
        Width = 224
        Height = 17
        Caption = 'Increase Damage +2%'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = zy1Click
      end
      object zy5: TCheckBox
        Left = 8
        Top = 80
        Width = 224
        Height = 17
        Caption = 'Increase Damage +level/20'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = zy1Click
      end
      object zy6: TCheckBox
        Left = 8
        Top = 96
        Width = 224
        Height = 17
        Caption = 'Excellent Damage rate +10%'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = zy1Click
      end
    end
    object ComboBox11: TComboBox
      Left = 56
      Top = 208
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 11
      Text = 'Normal'
      Items.Strings = (
        'Normal'
        'Ancient+5 Stamina'
        'Ancient+10 Stamina')
    end
  end
  object itemquery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 424
    Top = 223
  end
  object accQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 392
    Top = 223
  end
  object muQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 456
    Top = 223
  end
  object ItemUpdate: TADOCommand
    Parameters = <>
    Left = 488
    Top = 223
  end
  object popMenuitem: TPopupMenu
    Left = 392
    Top = 256
    object N1: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      Caption = 'Informa'#231#227'o'
      Default = True
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888808888888888088800088888888888880000888888
        8088888000888888088888880008888008888888800088008888888888000008
        8888888888800088888888888800000888888888800088008888888000088880
        0888880000888888008888000888888888088888888888888888}
      Caption = 'Excluir'
      OnClick = N3Click
    end
  end
end
