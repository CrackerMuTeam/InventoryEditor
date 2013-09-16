unit InvUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls,strUtils, ValEdit, ExtCtrls, Buttons,dec,
  ComCtrls,showdata, Menus,  unit3, configform,
  ToolWin;

type
  TInvForm = class(TForm)
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    itemquery: TADOQuery;
    accQuery: TADOQuery;
    muQuery: TADOQuery;
    ItemUpdate: TADOCommand;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    GroupBox7: TGroupBox;
    Label10: TLabel;
    ComboBox7: TComboBox;
    Label11: TLabel;
    Label13: TLabel;
    ComboBox5: TComboBox;
    ComboBox8: TComboBox;
    ComboBox6: TComboBox;
    GroupBox6: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    CheckBox5: TCheckBox;
    BitBtn6: TBitBtn;
    Label15: TLabel;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    popMenuitem: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Label16: TLabel;
    BitBtn11: TBitBtn;
    Panel8: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel12: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
    Panel9: TPanel;
    Panel5: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    GroupBox8: TGroupBox;
    Panel1: TPanel;
    BitBtn12: TBitBtn;
    Label18: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    RichEdit1: TRichEdit;
    CheckBox6: TCheckBox;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    Edit2: TEdit;
    CheckBox4: TCheckBox;
    GroupBox5: TGroupBox;
    zy1: TCheckBox;
    zy2: TCheckBox;
    zy3: TCheckBox;
    zy4: TCheckBox;
    zy5: TCheckBox;
    zy6: TCheckBox;
    ComboBox11: TComboBox;
    Label17: TLabel;
    procedure ComboBox8Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    {procedure Button1Click(Sender: TObject);         }
    procedure BitBtn1Click(Sender: TObject);
    {Porcedure}
    procedure lerexc;
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox7Change(Sender: TObject);
    procedure zy1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    {Customs}
    procedure charactermostrar;
    procedure Iniciar;
    procedure lertipo;
    procedure accountmostrar;
    procedure itemaddinv;
    procedure itemaddeqp;
    procedure itemaddPS;
    procedure resetinv;
  private
    { Private declarations }
  public
    procedure lblClick(sender:tobject);
    procedure cellClickinv(sender:tobject);
    procedure cellClickeqp(sender:tobject);
    procedure cellClickps(sender:tobject);
    procedure lblmousedowninv(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblmousedowneqp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblmousedownps(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblMouseMoveinv(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lblMouseMoveeqp(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lblMouseMoveps(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  end;


type itemproperty=record
     Name:string;
     X:integer;
     Y:integer;
end;
type itemoption=record               
     lvl:string;
     opt:string;
     dur:string;
     skill:string;
     lucky:string;
     ExOpt:string;
     anc:string;
     ser:string;
end;

var
  InvForm: TInvForm;
  InvHexa:array[0..7,0..7] of string; //Codigo hexa do item do INV
  InvCells:array[0..7,0..7] of tspeedbutton; {Espa�o do Item do INV}
  EqpHexa:array[0..11] of string; //Codigo hexa do item do EQP
  EqpCells:array[0..11] of tspeedbutton; {Espa�o do Item do EQP}
  PSHexa:array[0..3,0..7] of string; //Codigo hexa do item do PS
  PSCells:array[0..3,0..7] of tspeedbutton; {Espa�o do Item do PS}
  InvName:array[0..11] of string; {Nome dos espa�os do EQP}
  level2,numordem:integer ;
  tipo,sexopt2,ancient2,eqpsel:string;
  cbox2,cboy2,cbox3,cboy3:byte;
  itemspc:array of string;
  colorred,serialbool,additem2b:boolean;
  wearto,xhint:string;
  currentitem,tipocurrentitem:string; {Item selecionado}
  tpanelname:tpanel;
  tamanho:integer;
  pson,psind:boolean;
  query:string;
  programname:string;
  nomeantigo,tipoantigo:string;
implementation

{$R *.dfm}

{Functions}
function GetPos15(const org:string;const adt:string):string; {???}
begin
    if org='C' then
       begin
       case strtoint(adt) of
       1:result:='D';
       2:result:='E';
       3:result:='F';
       end;
       end
     else if org='8' then
       begin
       case strtoint(adt) of
       1:result:='9';
       2:result:='A';
       3:result:='B';
       end;
       end
     else
       result:=inttostr(strtoint(org)+strtoint(adt));
end;
function HexToInt(Hex : string) : Cardinal;   {Hex-->Integer}
const cHex = '0123456789ABCDEF';
var mult,i,loop : integer;
begin
result := 0;
mult := 1;
for loop := length(Hex) downto 1 do begin
i := pos(Hex[loop],cHex)-1;
if (i < 0) then i := 0;
inc(result,(i*mult));
mult := mult * 16;
end;
end;
function GetItemOption(const part1:string;const part2:string;const part3:string;const part4:string;const part5:string;const itemName:string):itemoption; {Ler Op��es do Item}
var n,x,y,z,a,b,c,p15,aff,pex:integer;
    iserr:boolean;
    sexopt,exctype,ancient:string;
    numitemancient:string;
begin
  iserr:=true;
  for n:=0 to 1 do
    for x:=0 to 15 do
      for y:=0 to 1 do
        for z:=0 to 3 do
          for a:=0 to 1 do
          begin
            if 128*n+8*x+4*y+z+a*108=hextoint(part1) then
              begin
                result.lvl:=leveltext+'+'+inttostr(x);
                level2:=x;
                result.opt:=optiontext+'+'+inttostr(z*4);
                result.dur:=durationtext+inttostr(hextoint(part2));
                if n=1 then result.skill:=skilltext else result.skill:=withoutskill;
                if y=1 then result.lucky:=lucktext else result.lucky:=withoutluck;
                iserr:=false;
                if 1=1 then result.anc:=ancienttext else result.Anc:=withoutancient;
                p15:=hextoint(part3[1]);
                aff:=z*4;
                if p15>=12 then
                  begin
                    result.opt:=optiontext+'+'+(inttostr(aff+16));
                    pex:=p15-12;
                  end
                    else if p15>=8 then
                      begin
                        pex:=p15-8;
                      end
                        else if p15>=4 then
                          begin
                            result.opt:=optiontext+'+'+(inttostr(aff+16));
                            pex:=p15-4;
                          end
                            else
                              begin
                                pex:=p15;
                              end;
              end;
          end;
  ancient:=part4;
  result.anc:=withoutancient;
  Ancient2:='';
  if (vs)='MG' then
    begin
      if (hextoint(ancient)<4096) and (hextoint(ancient)>2303) then result.anc:=ancienttext else result.anc:=withoutancient;
      if (hextoint(ancient)<4096) and (hextoint(ancient)>2303) then Ancient2:='Ancient' else Ancient2:='';
    end;
  if (vs)='MX' then
    begin
      if strtoint(ancient)>=5 then result.anc:=Ancienttext else result.anc:=withoutancient;
      if strtoint(ancient)>=5 then Ancient2:='Ancient' else Ancient2:='';
    end;
  if (vs)='CMT' then
    begin
      if (ancient[1]+ancient[2]=ancientnum5) then begin
        result.anc:=ancient5;
        Ancient2:='Ancient';
      end
        else if (ancient[1]+ancient[2]=ancientnum10) then begin
          result.anc:=ancient10;
          Ancient2:='Ancient';
        end
          else begin
            result.anc:=withoutancient;
            Ancient2:='';
          end;

      result.ser:=serialtext+part5[3]+part5[4]+part5[5]+part5[6]+part5[7]+part5[8];
    end;
  if vs<>'CMT' then
    result.ser:=serialtext+part5;
  if iserr=true then
    begin
      result.lvl :='error';
      exit;
    end;
 
  with invform do
    begin
      itemquery.SQL.Clear;
      itemquery.SQL.Add('select excoptiontype from muitem where name='''+combobox4.Text+'''');
      itemquery.Open;
      exctype:=itemquery.Fields[0].asstring;
      itemquery.Close;
      pex:=hextoint(inttostr(pex)+part3[2]);
      for a:=0 to 1 do
        for b:=0 to 1 do
          for c:=0 to 1 do
            for x:=0 to 1 do
              for y:=0 to 1 do
                for z:=0 to 1 do
                  if a+2*b+4*c+8*x+16*y+32*z=pex then
                    if exctype='we' then
                      begin
                         if a<>0 then sexopt:=#13+wemode1;
                         if b<>0 then sexopt:=sexopt+#13+wemode2;
                         if c<>0 then sexopt:=sexopt+#13+wemode3;
                         if x<>0 then sexopt:=sexopt+#13+wemode4;
                         if y<>0 then sexopt:=sexopt+#13+wemode5;
                         if z<>0 then sexopt:=sexopt+#13+wemode6;
                      end
                        else
                          if exctype='ar' then
                            begin
                              if a<>0 then sexopt:=#13+armode1;
                              if b<>0 then sexopt:=sexopt+#13+armode2;
                              if c<>0 then sexopt:=sexopt+#13+armode3;
                              if x<>0 then sexopt:=sexopt+#13+armode4;
                              if y<>0 then sexopt:=sexopt+#13+armode5;
                              if z<>0 then sexopt:=sexopt+#13+armode6;
                            end
                              else
                                if exctype='fen' then
                                  begin
                                    if a<>0 then sexopt:=#13+fenmode1;
                                    if b<>0 then sexopt:=#13+fenmode2;
                                  end
                                    else if exctype='wi' then
                                      begin
                                        if a<>0 then sexopt:=#13+wimode1;
                                        if b<>0 then sexopt:=sexopt+#13+wimode2;
                                        if c<>0 then sexopt:=sexopt+#13+wimode3;
                                        if x<>0 then sexopt:=sexopt+#13+wimode4;
                                        if y<>0 then sexopt:=sexopt+#13+wimode5;
                                      end
                                        else
                                          begin
                                            if a<>0 then sexopt:=#13+ormode1;
                                            if b<>0 then sexopt:=sexopt+#13+ormode2;
                                            if c<>0 then sexopt:=sexopt+#13+ormode3;
                                            if x<>0 then sexopt:=sexopt+#13+ormode4;
                                            if y<>0 then sexopt:=sexopt+#13+ormode5;
                                            if z<>0 then sexopt:=sexopt+#13+ormode6;
                                          end;
     end;
  if sexopt='' then result.exopt:=withoutexcopts else result.ExOpt:=excopts+sexopt;
  sexopt2:=sexopt;
end;
function GetTag(const I:integer):integer ;  {Pega qual numero retorna para quantidade de excs marcados}
begin
 case i of
 1:result:=1;
 2:result:=2;
 3:result:=4;
 4:result:=8;
 5:result:=16;
 6:result:=32;
 end;
end;
function bytetohex(src: byte): string;   {byte-->hex}
begin
  setlength(result, 2);
  asm
  mov edi, [result]
  mov edi, [edi]
  mov al, src
  mov ah, al
  shr al, 4
  add al, '0'
  cmp al, '9'
  jbe @@outcharlo
  add al, 'a'-'9'-1
@@outcharlo:
  and ah, $f
  add ah, '0'
  cmp ah, '9'
  jbe @@outchar
  add ah, 'a'-'9'-1
@@outchar:
  stosw
  end;
end;
function GetItemProp(ID:string;Unique:string;Unique2:string):itemproperty;   {Pega propiedas do item}
begin
  with invform.itemQuery do begin
       sql.Clear;
       sql.Add('select name,x,y from muitem where id='''+id+''' and unique='+unique+' and unique2='+unique2+'');
       open;
       if eof and bof then
          result.Name:='miss'
       else begin
         result.Name :=fields[0].AsString;
         result.X:=fields[1].AsInteger;
         result.Y:=fields[2].AsInteger;
       end;
       close;
  end;
end;
function Getlblindex(const S:string):integer; {Limpa items do INV da memoria}
var i,lblindex:integer;
begin
  lblindex:=121;
  if s='all' then
    begin
      for i:=0 to invform.Panel2.ControlCount-1 do
         begin
           if lowercase(invform.Panel2.Controls[i].ClassName)='tpanel' then begin
              lblindex:=i;
              break;
           end;
         end;
    end
  else begin
    for i:=0 to invform.Panel2.ControlCount-1 do begin
      if uppercase(invform.Panel2.Controls[i].Name)=s then begin
         lblindex:=i;
         break;
      end;
    end;
  end;
  result:=lblindex;
end;
function Getlblindexps(const S:string):integer; {Limpa items do PS da memoria}
var i,lblindex:integer;
begin
  lblindex:=121;
  if s='all' then
    begin
      for i:=0 to invform.Panel1.ControlCount-1 do
         begin
           if lowercase(invform.Panel1.Controls[i].ClassName)='tpanel' then begin
              lblindex:=i;
              break;
           end;
         end;
    end
  else begin
    for i:=0 to invform.Panel1.ControlCount-1 do begin
      if uppercase(invform.Panel1.Controls[i].Name)=s then begin
         lblindex:=i;
         break;
      end;
    end;
  end;
  result:=lblindex;
end;
function To2Char(const I:integer):string ;   {tranform um integer em um string de 2 letras}
var S:string;
begin
  s:=inttostr(i);
  if length(s)=1 then s:='0'+s;
  result:=s;
end;
function IntoInvGrid(const X:integer;const Y:integer;const itempropertyIn:itemproperty;const itemoptionIn:itemoption):boolean;{Adiciona Iamgem dos items no INV}
var i,t:integer;
    CanInsert:boolean;
    itemlabel:tpanel;
begin
  caninsert:=true;
  if ((x+itempropertyin.y-1)>7) or ((y+itempropertyin.x-1)>7) then caninsert:=false;
  if caninsert=false then begin
     application.MessageBox(pchar(Error1Part1+' '+itempropertyin.Name +' '+Error1Part2+' '+inttostr(itempropertyin.X)+'x'+inttostr(itempropertyin.Y)+' '+Error1Part3+#13+#13+
     Error1Part4+' '+inttostr(itempropertyin.X)+'x'+inttostr(itempropertyin.Y))  ,Pchar(ErrorCaption),mb_ok+mb_iconwarning);
     result:=false;
     exit;
  end;
  caninsert:=true;
  for i:=x to (x+itempropertyin.y-1) do begin
      for t:=y to (y+itempropertyin.x-1) do begin
          if invcells[i,t].Flat then
             caninsert:=false;
      end;
  end;
  if caninsert=false then begin
     application.MessageBox(pchar(Error1Part1+' '+itempropertyin.Name +' '+Error1Part2+' '+inttostr(itempropertyin.X)+'x'+inttostr(itempropertyin.Y)+' '+Error1Part3+#13+#13+
     Error1Part4+' '+inttostr(itempropertyin.X)+'x'+inttostr(itempropertyin.Y))  ,Pchar(ErrorCaption),mb_ok+mb_iconwarning);
     result:=false;
     exit;
  end;
  for i:=x to (x+itempropertyin.y-1) do
      for t:=y to (y+itempropertyin.x-1) do begin
         invcells[i,t].Name:='C'+to2char(x)+to2char(y)+to2char(i)+to2char(t);
         invcells[i,t].Flat:=true;
      end;
  itemlabel:=tpanel.Create(invform);
  itemlabel.Parent:=invform.Panel2;
  itemlabel.Name:='L'+to2char(x)+to2char(y);
  itemlabel.BevelOuter:=bvlowered;
  itemlabel.BevelInner:=bvnone;
  itemlabel.Color:=clteal;
  itemlabel.Font.Name:='MS Serif';
  itemlabel.Font.Size:=7;
  if (sexopt2='') and (ancient2='') then
    begin
      itemlabel.Font.Color:=clblack;
      itemlabel.color:=cl3dlight;
    end
      else
        if (sexopt2='') and (ancient2<>'') then
          begin
            itemlabel.color:=clmoneyGreen;
            itemlabel.Font.Color:=clblack;
          end
            else
              if (sexopt2<>'') and (ancient2='') then
                begin
                  itemlabel.color:=clGreen;
                  itemlabel.Font.Color:=clblack;
                end
                  else
                    if (sexopt2<>'') and (ancient2<>'') then
                      begin
                        itemlabel.color:=$6AFF9B ;
                        itemlabel.Font.Color:=clblack;
                      end;
  itemlabel.Left:=y*26;
  itemlabel.Top :=x*26;
  itemlabel.Caption :=itempropertyin.Name;
  itemlabel.Width:=itempropertyin.X*26;
  itemlabel.Height:=itempropertyin.Y*26;
  itemlabel.Cursor:=crhandpoint;
  itemlabel.PopupMenu:=invform.popMenuitem;
  itemlabel.ShowHint:=false;
  itemlabel.Hint:='Nome:'+itempropertyin.Name+#13+itemoptionin.lvl+#13
                            +itemoptionin.opt+#13+itemoptionin.dur +#13+itemoptionin.skill
                            +#13+itemoptionin.lucky+#13+itemoptionin.anc+#13+itemoptionin.ExOpt+#13+#13+itemoptionin.ser;
  itemlabel.OnMouseDown:=invform.lblmousedowninv;
  itemlabel.OnClick:=invform.lblClick;
  itemlabel.OnMouseMove:=invform.lblMouseMoveinv;
  result:=true;
end;
function IntoPSGrid(const X:integer;const Y:integer;const itempropertyIn:itemproperty;const itemoptionIn:itemoption):boolean;{Adiciona Imagem dos items no PS}
var i,t:integer;
    CanInsert:boolean;
    itemlabel:tpanel;
begin
  caninsert:=true;
  if ((x+itempropertyin.y-1)>3) or ((y+itempropertyin.x-1)>7) then caninsert:=false;
  if caninsert=false then begin
     application.MessageBox(pchar(Error1Part1+' '+itempropertyin.Name +' '+Error1Part2+' '+inttostr(itempropertyin.X)+'x'+inttostr(itempropertyin.Y)+' '+Error1Part3+#13+#13+
     Error1Part4+' '+inttostr(itempropertyin.X)+'x'+inttostr(itempropertyin.Y))  ,Pchar(ErrorCaption),mb_ok+mb_iconwarning);
     result:=false;
     exit;
  end;
  caninsert:=true;
  for i:=x to (x+itempropertyin.y-1) do begin
      for t:=y to (y+itempropertyin.x-1) do begin
          if pscells[i,t].Flat then
             caninsert:=false;
      end;
  end;
  if caninsert=false then begin
     application.MessageBox(pchar(Error1Part1+' '+itempropertyin.Name +' '+Error1Part2+' '+inttostr(itempropertyin.X)+'x'+inttostr(itempropertyin.Y)+' '+Error1Part3+#13+#13+
     Error1Part4+' '+inttostr(itempropertyin.X)+'x'+inttostr(itempropertyin.Y))  ,Pchar(ErrorCaption),mb_ok+mb_iconwarning);
     result:=false;
     exit;
  end;
  for i:=x to (x+itempropertyin.y-1) do
      for t:=y to (y+itempropertyin.x-1) do begin
         pscells[i,t].Name:='C'+to2char(x+9)+to2char(y+9)+to2char(i)+to2char(t);
         pscells[i,t].Flat:=true;
      end;
  itemlabel:=tpanel.Create(invform);
  itemlabel.Parent:=invform.Panel1;
  itemlabel.Name:='L'+to2char(x+9)+to2char(y+9);
  itemlabel.BevelOuter:=bvlowered;
  itemlabel.BevelInner:=bvnone;
  itemlabel.Color:=clteal;
  itemlabel.Font.Name:='MS Serif';
  itemlabel.Font.Size:=7;
  if (sexopt2='') and (ancient2='') then
    begin
      itemlabel.Font.Color:=clblack;
      itemlabel.color:=cl3dlight;
    end
      else
        if (sexopt2='') and (ancient2<>'') then
          begin
            itemlabel.color:=clmoneyGreen;
            itemlabel.Font.Color:=clblack;
          end
            else
              if (sexopt2<>'') and (ancient2='') then
                begin
                  itemlabel.color:=clGreen;
                  itemlabel.Font.Color:=clblack;
                end
                  else
                    if (sexopt2<>'') and (ancient2<>'') then
                      begin
                        itemlabel.color:=$6AFF9B ;
                        itemlabel.Font.Color:=clblack;
                      end;
  itemlabel.Left:=y*26;
  itemlabel.Top :=x*26;
  itemlabel.Caption :=itempropertyin.Name;
  itemlabel.Width:=itempropertyin.X*26;
  itemlabel.Height:=itempropertyin.Y*26;
  itemlabel.Cursor:=crhandpoint;
  itemlabel.PopupMenu:=invform.popMenuitem;
  itemlabel.ShowHint:=false;
  itemlabel.Hint:=itemtext+itempropertyin.Name+#13+itemoptionin.lvl+#13
                            +itemoptionin.opt+#13+itemoptionin.dur +#13+itemoptionin.skill
                            +#13+itemoptionin.lucky+#13+itemoptionin.anc+#13+itemoptionin.ExOpt+#13+#13+itemoptionin.ser;
  itemlabel.OnMouseDown:=invform.lblmousedownps;
  itemlabel.OnClick:=invform.lblClick;
  itemlabel.OnMouseMove:=invform.lblMouseMoveps;
  result:=true;
end;
function IntoEqpGrid(const X:integer;const itempropertyIn:itemproperty;const itemoptionIn:itemoption):boolean;  {Adiciona os EQP na imagem}
var CanInsert:boolean;
    itemlabel:tpanel;
begin
  caninsert:=true;
  if eqpcells[x].flat=true then caninsert:=false;
  if caninsert=false then
    begin
      application.MessageBox(pchar(Error11Part1+' '+itempropertyin.Name +' '+Error11Part2)  ,pchar(ErrorCaption),mb_ok+mb_iconwarning);
      result:=false;
      exit;
    end;
  eqpcells[x].Name:='C0'+inttostr(x)+'080101';
  eqpcells[x].Flat:=true;
  itemlabel:=tpanel.Create(invform);
  case x of
    0 : begin
         itemlabel.Parent:=invform.Panel12;
         itemlabel.Width:=invform.Panel12.Width;
         itemlabel.Height:=invform.Panel12.Height;
         end;
    1 : begin
          itemlabel.Parent:=invform.Panel11;
          itemlabel.Width:=invform.Panel11.Width;
          itemlabel.Height :=invform.Panel11.Height;
        end;
    2 : begin
          itemlabel.Parent:=invform.Panel8;
          itemlabel.Width:=invform.Panel8.Width;
          itemlabel.Height:=invform.Panel8.Height;
        end;
    3 : begin
          itemlabel.Parent:=invform.Panel4;
          itemlabel.Width:=invform.Panel4.Width;
          itemlabel.Height :=invform.Panel4.Height;
        end;
    4 : begin
          itemlabel.Parent:=invform.Panel6;
          itemlabel.Width:=invform.Panel6.Width;;
          itemlabel.Height:=invform.Panel6.Height;
        end;
    5 : begin
          itemlabel.Parent:=invform.Panel5;
          itemlabel.Width:=invform.Panel5.Width;
          itemlabel.Height:=invform.Panel5.Height;
        end;
    6 : begin
          itemlabel.Parent:=invform.Panel7;
          itemlabel.Width:=invform.Panel7.Width;
          itemlabel.Height :=invform.Panel7.Height;
        end;
    7 : begin
          itemlabel.Parent:=invform.Panel15;
          itemlabel.Width:=invform.Panel15.Width;
          itemlabel.Height:=invform.Panel15.Height;
        end;
    8 : begin
          itemlabel.Parent:=invform.Panel14;
          itemlabel.Width:=invform.Panel14.Width;
          itemlabel.Height :=invform.Panel14.Height;
        end;
    9 : begin
          itemlabel.Parent:=invform.Panel13;
          itemlabel.Width:=invform.Panel13.Width;
          itemlabel.Height :=invform.Panel13.Height;
        end;
   10 : begin
          itemlabel.Parent:=invform.Panel10;
          itemlabel.Width:=invform.Panel10.Width;
          itemlabel.Height :=invform.Panel10.Height;
        end;
   11 : begin
          itemlabel.Parent:=invform.Panel9;
          itemlabel.Width:=invform.Panel9.Width;
          itemlabel.Height :=invform.Panel9.Height;
        end;
  end;

  itemlabel.Name:='L0'+inttostr(x)+'08';
  itemlabel.BevelOuter:=bvlowered;
  itemlabel.BevelInner:=bvnone;
  itemlabel.Color:=clteal;
  itemlabel.Font.Name:='MS Serif';
  itemlabel.Font.Size:=7;
  if (sexopt2='') and (ancient2='') then
    begin
      itemlabel.Font.Color:=clblack;
      itemlabel.color:=cl3dlight;
    end
      else
        if (sexopt2='') and (ancient2<>'') then
          begin
            itemlabel.color:=clmoneyGreen;
            itemlabel.Font.Color:=clblack;
          end
            else
              if (sexopt2<>'') and (ancient2='') then
                begin
                  itemlabel.color:=clGreen;
                  itemlabel.Font.Color:=clblack;
                end
                  else
                    if (sexopt2<>'') and (ancient2<>'') then
                      begin
                        itemlabel.color:=$6AFF9B ;
                        itemlabel.Font.Color:=clblack;
                      end;
  itemlabel.Caption :=itempropertyin.Name;
  itemlabel.Cursor:=crhandpoint;
  itemlabel.PopupMenu:=invform.popMenuitem;
  itemlabel.ShowHint:=false;
  itemlabel.Hint:=itemtext+itempropertyin.Name+#13+itemoptionin.lvl+#13
                            +itemoptionin.opt+#13+itemoptionin.dur +#13+itemoptionin.skill
                            +#13+itemoptionin.lucky+#13+itemoptionin.anc+#13+itemoptionin.ExOpt+#13+#13+itemoptionin.ser;
  itemlabel.OnMouseDown:=invform.lblmousedowneqp;
  itemlabel.OnClick:=invform.lblClick;
  itemlabel.OnMouseMove:=invform.lblMouseMoveeqp;
  result:=true;
end;
function Getbtnindex(const S:string):integer ; {Pega o Index do botao do Inv}
var i,btnindex:integer;
begin
    btnindex:=121;
    for i:=0 to invform.Panel2.ControlCount-1 do begin
      if leftstr(uppercase(invform.Panel2.Controls[i].Name),5)='C'+s then begin
         btnindex:=i;
         break;
      end;
    end;
    result:=btnindex;
end;
function Getbtnindexps(const S:string):integer ; {Pega o index do botao do PS}
var i,btnindex:integer;
begin
    btnindex:=121;
    for i:=0 to invform.Panel1.ControlCount-1 do begin
      if leftstr(uppercase(invform.Panel1.Controls[i].Name),5)='C'+s then begin
         btnindex:=i;
         break;
      end;
    end;
    result:=btnindex;
end;
function warehouseCommit():boolean;  {�ύ����}
var sSql,sSqlSub,psSql,psSqlSub:string;
    i,t:integer;
begin
  screen.Cursor:=-11;
  application.ProcessMessages;
  ssql:='update '+character+' set '+inventory+'=0x';
  for i:=0 to 11 do ssqlsub:=ssqlsub+eqphexa[i];
  for i:=0 to 7 do
    for t:=0 to 7 do ssqlsub:=ssqlsub+invhexa[i,t];
  if  (tamanho=1080) and (psind=false) then
    for i:=0 to 3 do
      for t:=0 to 7 do ssqlsub:=ssqlsub+pshexa[i,t];
  ssql:=ssql+ssqlsub+' where '+nome+'='''+invform.combobox2.Text+'''' ;
  if (pson=true) and (psind=true) then
    begin
      psSql:='update '+character+' set '+shopitem+'=0x';
      for i:=0 to 7 do
        for t:=0 to 7 do psSqlSub:=psSqlSub+pshexa[i,t];
      psSql:=psSql+psSqlSub+' where '+nome+'='''+invform.combobox2.Text+'''' ;
    end
      else psSQL:='';

  if invform.CheckBox5.Checked then begin
    if application.MessageBox(pchar(ssql+#13+psSQL),'Query',mb_yesno+mb_iconinformation)=mrno then begin
       screen.Cursor:=0;
       result:=false;
       exit;
    end;
  end;
  if invform.CheckBox6.Checked then begin
     invform.richedit1.Lines.Clear;
     invform.richedit1.Lines.Add(ssql+#13+psSQL);
     invform.richedit1.SelectAll;
     invform.richedit1.CopyToClipboard;
  end;

  screen.Cursor:=0;
  with invform.itemupdate do begin
  commandtext:=ssql;
  try
  execute;
  if (pson=true) and (psind=true) then
    begin
      commandtext:=psSql;
      execute;
    end;
  result:=true;
  except
  on e:exception do begin
  application.MessageBox(pchar(e.Message),pchar(ErrorCaption),mb_ok+mb_iconerror);
  result:=false;
  end;
  end;
  end;
end;
{Procedures fora do Form}
procedure Typechange(const S:string); {Mostrar lista de items quando um tipo for selecionado}
var i:integer;
any:string;
begin

   with invform do
     begin
       try
         any:='any';
         if (tipoantigo<>combobox3.text) then begin
           itemspc:=nil;
          combobox4.Items.Clear;
         itemquery.SQL.Clear;
         itemquery.SQL.Add('select name,x,y,setnumber from muitem where type='''+s+'''');
         itemquery.Open;
         if not (itemquery.Eof and itemquery.Bof) then begin
            setlength(itemspc,itemquery.RecordCount);
            for i:=0 to itemquery.RecordCount-1 do begin
              combobox4.Items.Add(itemquery.Fields[0].asstring);
              itemspc[i]:=itemquery.Fields[1].AsString+'x'+itemquery.Fields[2].AsString ;
              itemquery.Next;
            end;

         end;
         combobox4.ItemIndex:=0;
           itemquery.Close ;
           itemquery.SQL.Clear;
           itemquery.SQL.Add('select name,setnumber from muitem where type='''+s+'''');
           itemquery.Open;
           itemquery.next;
           for i:=1 to itemquery.recordcount-1 do begin
             if (itemquery.Fields[1].asinteger=numordem) and (itemquery.Fields[1].asinteger<>0) then combobox4.itemindex:=i;
             itemquery.next;
           end;
           label10.Caption :=itemspc[numordem];
         end;
       finally
         itemquery.Close ;
       end;
      lerexc;
    end;
end;
procedure initInv();
var i,t,szcell:integer;
    name1,name2:string;
begin
with invform do
  begin
{inventario}
    szcell:=26;
    for i:=0 to 7 do
      for t:=0 to 7 do
        begin
          name1:=inttostr(i+1);
          name2:=inttostr(t+1);
          if length(name1)=1 then name1:='0'+name1;
          if length(name2)=1 then name2:='0'+name2;
          invcells[i,t]:=tspeedbutton.Create(invform);
          invcells[i,t].parent:=Panel2 ;
          invcells[i,t].left:=t*szcell+1;
          invcells[i,t].top:=i*szcell+1;
          invcells[i,t].height:=szcell;
          invcells[i,t].width:=szcell;
          invcells[i,t].Name:='';
          //invcells[i,t].ShowHint:=true;
          invcells[i,t].Hint:=name1+'  '+name2;
          invcells[i,t].OnClick:=cellClickinv;
        end;
{PS}
    for i:=0 to 3 do
      for t:=0 to 7 do
        begin
          name1:=inttostr(i+10);
          name2:=inttostr(t+10);
          if length(name1)=1 then name1:='0'+name1;
          if length(name2)=1 then name2:='0'+name2;
          pscells[i,t]:=tspeedbutton.Create(invform);
          pscells[i,t].parent:=Panel1 ;
          pscells[i,t].left:=t*szcell+1;
          pscells[i,t].top:=i*szcell+1;
          pscells[i,t].height:=szcell;
          pscells[i,t].width:=szcell;
          pscells[i,t].Name:='';
     //     pscells[i,t].ShowHint:=true;
          pscells[i,t].Hint:=name1+'  '+name2;
          pscells[i,t].OnClick:=cellClickps;
        end;
{usando}
    for I := 0 to 11 do
      begin
        eqpcells[i]:=tspeedbutton.Create(InvForm);
        eqpcells[i].Name:='';
     //   eqpcells[i].ShowHint:=true;
        eqpcells[i].OnClick:=cellClickeqp;
    
      end;
{weapon left}
    eqpcells[0].parent:=Panel12 ;
    eqpcells[0].height:=Panel12.Height;
    eqpcells[0].width:=Panel12.Width;
    eqpcells[0].Hint:=WeaponLeft;
{weapon right}
    eqpcells[1].parent:=Panel11 ;
    eqpcells[1].height:=Panel11.Height;
    eqpcells[1].width:=Panel11.Width;
    eqpcells[1].Hint:=WeaponRight;
{helm}
    eqpcells[2].parent:=Panel8 ;
    eqpcells[2].height:=Panel8.Height;
    eqpcells[2].width:=Panel8.Width;
    eqpcells[2].Hint:=Helm;
{armor}
    eqpcells[3].parent:=Panel4 ;
    eqpcells[3].height:=Panel4.Height;
    eqpcells[3].width:=Panel4.Width;
    eqpcells[3].Hint:=Armor;
{pants}
    eqpcells[4].parent:=Panel6 ;
    eqpcells[4].height:=Panel6.Height;
    eqpcells[4].width:=Panel6.Width;
    eqpcells[4].Hint:=Pants;
{gloves}
    eqpcells[5].parent:=Panel5 ;
    eqpcells[5].height:=Panel5.Height;
    eqpcells[5].width:=Panel5.Width;
    eqpcells[5].Hint:=Gloves;
{boots}
    eqpcells[6].parent:=Panel7 ;
    eqpcells[6].height:=Panel7.Height;
    eqpcells[6].width:=Panel7.Width;
    eqpcells[6].Hint:=Boots;
{wings}
    eqpcells[7].parent:=Panel15 ;
    eqpcells[7].height:=Panel15.Height;
    eqpcells[7].width:=Panel15.Width;
    eqpcells[7].Hint:=Wings;
{angel/satan}
    eqpcells[8].parent:=Panel14 ;
    eqpcells[8].height:=Panel14.Height;
    eqpcells[8].width:=Panel14.Width;
    eqpcells[8].Hint:=Pet;
{pendant}
    eqpcells[9].parent:=Panel13 ;
    eqpcells[9].height:=Panel13.Height;
    eqpcells[9].width:=Panel13.Width;
    eqpcells[9].Hint:=Pendant;
{ring left}
    eqpcells[10].parent:=Panel10 ;
    eqpcells[10].height:=Panel10.Height;
    eqpcells[10].width:=Panel10.Width;
    eqpcells[10].Hint:=RingLeft;
{ring right}
    eqpcells[11].parent:=Panel9 ;
    eqpcells[11].height:=Panel9.Height;
    eqpcells[11].width:=Panel9.Width;
    eqpcells[11].Hint:=RingRight;
  end;
end;
procedure editlock(); {Bloquiar uso do editor}
var i:integer;
begin
  for i:=0 to InvForm.GroupBox1.ControlCount  -1 do
    InvForm.GroupBox1.Controls[i].Enabled:=false;
  for i:=0 to InvForm.GroupBox3.ControlCount  -1 do
    InvForm.GroupBox3.Controls[i].Enabled:=false;
  for i:=0 to InvForm.GroupBox4.ControlCount  -1 do
    InvForm.GroupBox4.Controls[i].Enabled:=false;
  for i:=0 to InvForm.GroupBox8.ControlCount  -1 do
    InvForm.GroupBox8.Controls[i].Enabled:=false;
  for i:=0 to InvForm.GroupBox7.ControlCount  -1 do
    InvForm.GroupBox7.Controls[i].Enabled:=false;
  for i:=0 to InvForm.GroupBox5.ControlCount  -1 do
    InvForm.GroupBox5.Controls[i].Enabled:=false;
  invform.groupbox6.enabled:=true;
  InvForm.bitbtn1.Enabled:=false;
  InvForm.bitbtn2.Enabled:=false;
end;
procedure editunlock(); {Desbloquiar uso do editor}
var i:integer;
begin
  for i:=0 to InvForm.GroupBox1.ControlCount  -1 do
    InvForm.GroupBox1.Controls[i].Enabled:=true;
  for i:=0 to InvForm.GroupBox3.ControlCount  -1 do
    InvForm.GroupBox3.Controls[i].Enabled:=true;
  for i:=0 to InvForm.GroupBox4.ControlCount  -1 do
    InvForm.GroupBox4.Controls[i].Enabled:=true;
  for i:=0 to InvForm.GroupBox8.ControlCount  -1 do
    InvForm.GroupBox8.Controls[i].Enabled:=true;
  for i:=0 to InvForm.GroupBox7.ControlCount  -1 do
    InvForm.GroupBox7.Controls[i].Enabled:=true;
  for i:=0 to InvForm.GroupBox5.ControlCount  -1 do
    InvForm.GroupBox5.Controls[i].Enabled:=true;
  invform.groupbox6.enabled:=true;
  InvForm.bitbtn1.Enabled:=true;
  InvForm.bitbtn2.Enabled:=true;
end;
procedure Tinvform.ResetInv(); {Dexa em branco todos os espa�os de items e limpa items da memoria}
var i,t:integer;
begin
  for i:=0 to invform.Panel14.ControlCount-1 do
    if lowercase(invform.Panel14.Controls[i].ClassName)='tpanel' then
      invform. Panel14.Controls[i].free;
  for i:=0 to invform.Panel8.ControlCount-1 do
    if lowercase(invform.Panel8.Controls[i].ClassName)='tpanel' then
      invform. Panel8.Controls[i].free;
  for i:=0 to invform.Panel15.ControlCount-1 do
    if lowercase(invform.Panel15.Controls[i].ClassName)='tpanel' then
      invform. Panel15.Controls[i].free;
  for i:=0 to invform.Panel13.ControlCount-1 do
    if lowercase(invform.Panel13.Controls[i].ClassName)='tpanel' then
      invform. Panel13.Controls[i].free;
  for i:=0 to invform.Panel11.ControlCount-1 do
    if lowercase(invform.Panel11.Controls[i].ClassName)='tpanel' then
      invform. Panel11.Controls[i].free;
  for i:=0 to invform.Panel4.ControlCount-1 do
    if lowercase(invform.Panel4.Controls[i].ClassName)='tpanel' then
      invform. Panel4.Controls[i].free;
  for i:=0 to invform.Panel12.ControlCount-1 do
    if lowercase(invform.Panel12.Controls[i].ClassName)='tpanel' then
      invform. Panel12.Controls[i].free;
  for i:=0 to invform.Panel5.ControlCount-1 do
    if lowercase(invform.Panel5.Controls[i].ClassName)='tpanel' then
      invform. Panel5.Controls[i].free;
  for i:=0 to invform.Panel9.ControlCount-1 do
    if lowercase(invform.Panel9.Controls[i].ClassName)='tpanel' then
      invform. Panel9.Controls[i].free;
  for i:=0 to invform.Panel6.ControlCount-1 do
    if lowercase(invform.Panel6.Controls[i].ClassName)='tpanel' then
      invform. Panel6.Controls[i].free;
  for i:=0 to invform.Panel10.ControlCount-1 do
    if lowercase(invform.Panel10.Controls[i].ClassName)='tpanel' then
      invform. Panel10.Controls[i].free;
  for i:=0 to invform.Panel7.ControlCount-1 do
    if lowercase(invform.Panel7.Controls[i].ClassName)='tpanel' then
      invform. Panel7.Controls[i].free;
  cbox2:=8;
  cboy2:=8;
  eqpsel:='';
  for i:=0 to 7 do
    for t := 0 to 7 do
      begin
        Invcells[i,t].flat:=false;
        Invcells[i,t].Name:='';
        invHexa[i,t]:='FFFFFFFFFFFFFFFFFFFF';
      end;
  for i:=0 to 3 do
    for t := 0 to 7 do
      begin
        pscells[i,t].flat:=false;
        pscells[i,t].Name:='';
        psHexa[i,t]:='FFFFFFFFFFFFFFFFFFFF';
      end;
  for i := 0 to 11 do
    begin
      eqpcells[i].Flat:=false;
      eqpcells[i].Name:='';
      eqphexa[i]:='FFFFFFFFFFFFFFFFFFFF';
    end;
  while getlblindex('all')<>121 do
        invform.Panel2.Controls[getlblindex('all')].Free;
  while getlblindexps('all')<>121 do
        invform.Panel1.Controls[getlblindexps('all')].Free;
end;
procedure FillHexInv(item:TField); {le todos os items}
type Tcharset=set of char;
var A:tcharset;
    itemblock:array of byte;
    sWS,sItem,sUni:string;
    wsrow,wscol,i,panelcount:integer;
    itemnow:itemproperty;
    itemoptnow:itemoption;
    u2:string; //unique2
begin
  a:=['0'..'7'];
  with item do
    begin
      setlength(itemblock,datasize);
      try
        getdata(itemblock);
        for i:=2 to high(itemblock) do
          sws:=sws+uppercase(bytetohex(itemblock[i]));
        panelcount:=0;
        for wsrow := 0 to 11 do
          begin
            sitem:=midstr(sws,20*wsrow+1,20);
            if (sitem<>'FFFFFFFFFFFFFFFFFFFF') and (sitem<>'FF000000000000000000') and (sitem<>'00000000000000000000') then inc(panelcount);
          end;
        for wsrow:=0 to 7 do
          for wscol:=0 to 7 do
            begin
              sitem:=midstr(sws,160*(wsrow)+20*(wscol)+1+240,20);
              if (sitem<>'FFFFFFFFFFFFFFFFFFFF') and (sitem<>'FF000000000000000000') and (sitem<>'00000000000000000000') then inc(panelcount);
            end;
        if tamanho=1080 then
          for wsrow:=0 to 3 do
            for wscol:=0 to 7 do
              begin
                sitem:=midstr(sws,160*(wsrow)+20*(wscol)+1+1520,20);
                if (sitem<>'FFFFFFFFFFFFFFFFFFFF') and (sitem<>'FF000000000000000000') and (sitem<>'00000000000000000000') then inc(panelcount);
              end;
      if panelcount=0 then exit;

      for wsrow := 0 to 11 do
        begin
          sitem:=midstr(sws,20*wsrow+1,20);
          EqpHexa[wsrow]:=sitem;
          if (sitem='FFFFFFFFFFFFFFFFFFFF') or (sitem='FF000000000000000000') or (sitem='00000000000000000000') then sitem:='';
          if sitem<>'' then
            begin
              if sitem[15] in a then suni:='0' else suni:='8';
              if sitem[7]+sitem[8]='F9' then u2:='1' else u2:='0';
              itemnow:=getitemprop(leftstr(sitem,2),suni,u2);
              if itemnow.Name='miss' then
                begin
                  showmessage(Error2+' '+InvName[wsrow]);
                  continue;
                end;
              itemoptnow:=getitemoption(sitem[3]+sitem[4],sitem[5]+sitem[6],sitem[15]+sitem[16],sitem[17]+sitem[18]+sitem[19]+sitem[20],sitem[7]+sitem[8]+sitem[9]+sitem[10]+sitem[11]+sitem[12]+sitem[13]+sitem[14],itemnow.name);
              if itemnow.Name='miss' then
                if application.MessageBox(pchar(Error3Part1+' '+sitem+#13+Error3Part2),pchar(ErrorCaption),mb_yesno+mb_iconwarning)=id_no then
                  continue;
              tipo:='eqp';
              if intoeqpgrid(wsrow,itemnow,itemoptnow)=false then application.MessageBox(pchar(Error4Part1+' '+sitem+#13+Error4Part2+' '+InvName[wsrow]),pchar(ErrorCaption),mb_ok+mb_iconwarning);
            end;
        end;
      for wsrow:=0 to 7 do
        for wscol:=0 to 7 do
          begin
            sitem:=midstr(sws,160*(wsrow)+20*(wscol)+1+240,20);
            InvHexa[wsrow,wscol]:=sitem;
            if (sitem='FFFFFFFFFFFFFFFFFFFF') or (sitem='FF000000000000000000') or (sitem='00000000000000000000') then sitem:='';
            if sitem<>'' then
              begin
                if sitem[15] in a then suni:='0' else suni:='8';
                if sitem[7]+sitem[8]='F9' then u2:='1' else u2:='0';
                itemnow:=getitemprop(leftstr(sitem,2),suni,u2);
                if itemnow.Name='miss' then
                  begin
                    showmessage(Error2+' '+inttostr(wsrow)+','+inttostr(wscol));
                    continue;
                  end;
                itemoptnow:=getitemoption(sitem[3]+sitem[4],sitem[5]+sitem[6],sitem[15]+sitem[16],sitem[17]+sitem[18]+sitem[19]+sitem[20],sitem[7]+sitem[8]+sitem[9]+sitem[10]+sitem[11]+sitem[12]+sitem[13]+sitem[14],itemnow.name);
                if itemnow.Name='miss' then
                  if application.MessageBox(pchar(Error3Part1+' '+sitem+#13+Error3Part2),pchar(ErrorCaption),mb_yesno+mb_iconwarning)=id_no then
                    continue;
                tipo:='inv';
                if intoinvgrid(wsrow,wscol,itemnow,itemoptnow)=false then application.MessageBox(pchar(Error4Part1+' '+sitem+#13+Error4Part2+' '+inttostr(wsrow+1)+','+inttostr(wscol+1)),Pchar(ErrorCaption),mb_ok+mb_iconwarning);
              end;
          end;
      if tamanho=1080 then
        for wsrow:=0 to 3 do
          for wscol:=0 to 7 do
            begin
              sitem:=midstr(sws,160*(wsrow)+20*(wscol)+1+1520,20);
              PSHexa[wsrow,wscol]:=sitem;
              if (sitem='FFFFFFFFFFFFFFFFFFFF') or (sitem='FF000000000000000000') or (sitem='00000000000000000000') then sitem:='';
              if sitem<>'' then
                begin
                  if sitem[15] in a then suni:='0' else suni:='8';
                  if sitem[7]+sitem[8]='F9' then u2:='1' else u2:='0';
                  itemnow:=getitemprop(leftstr(sitem,2),suni,u2);
                  if itemnow.Name='miss' then
                    begin
                      showmessage(Error2+' '+inttostr(wsrow)+','+inttostr(wscol));
                      continue;
                    end;
                  itemoptnow:=getitemoption(sitem[3]+sitem[4],sitem[5]+sitem[6],sitem[15]+sitem[16],sitem[17]+sitem[18]+sitem[19]+sitem[20],sitem[7]+sitem[8]+sitem[9]+sitem[10]+sitem[11]+sitem[12]+sitem[13]+sitem[14],itemnow.name);
                  if itemnow.Name='miss' then
                    if application.MessageBox(pchar(Error3Part1+' '+sitem+#13+Error3Part2),pchar(ErrorCaption),mb_yesno+mb_iconwarning)=id_no then
                      continue;
                  tipo:='ps';
                  if intoPSgrid(wsrow,wscol,itemnow,itemoptnow)=false then application.MessageBox(pchar(Error4Part1+' '+sitem+#13+Error4part2+' '+inttostr(wsrow+1)+','+inttostr(wscol+1)),Pchar(ErrorCaption),mb_ok+mb_iconwarning);
                end;
            end;
      except
      on E:exception do application.MessageBox(pchar(e.Message),Pchar(ErrorCaption),mb_ok+mb_iconerror);
      end;
  end;
end;
procedure FillHexPS(item:TField); {le personal store se for separado do inventory}
type Tcharset=set of char;
var A:tcharset;
    itemblock:array of byte;
    sWS,sItem,sUni:string;
    wsrow,wscol,i,panelcount:integer;
    itemnow:itemproperty;
    itemoptnow:itemoption;
    u2:string; //unique2
begin
  a:=['0'..'7'];
  with item do
    begin
      setlength(itemblock,datasize);
      try
        getdata(itemblock);
        for i:=2 to high(itemblock) do
          sws:=sws+uppercase(bytetohex(itemblock[i]));
        panelcount:=0;
        for wsrow:=0 to 3 do
          for wscol:=0 to 7 do
            begin
              sitem:=midstr(sws,160*(wsrow)+20*(wscol)+1,20);
              if (sitem<>'FFFFFFFFFFFFFFFFFFFF') and (sitem<>'FF000000000000000000') and (sitem<>'00000000000000000000') then inc(panelcount);
            end;
      if panelcount=0 then exit;
      for wsrow:=0 to 3 do
        for wscol:=0 to 7 do
          begin
            sitem:=midstr(sws,160*(wsrow)+20*(wscol)+1,20);
            PSHexa[wsrow,wscol]:=sitem;
            if (sitem='FFFFFFFFFFFFFFFFFFFF') or (sitem='FF000000000000000000') or (sitem='00000000000000000000') then sitem:='';
            if sitem<>'' then
              begin
                if sitem[15] in a then suni:='0' else suni:='8';
                if sitem[7]+sitem[8]='F9' then u2:='1' else u2:='0';
                itemnow:=getitemprop(leftstr(sitem,2),suni,u2);
                if itemnow.Name='miss' then
                  begin
                    showmessage(Error2+' '+inttostr(wsrow)+','+inttostr(wscol));
                    continue;
                  end;
                itemoptnow:=getitemoption(sitem[3]+sitem[4],sitem[5]+sitem[6],sitem[15]+sitem[16],sitem[17]+sitem[18]+sitem[19]+sitem[20],sitem[7]+sitem[8]+sitem[9]+sitem[10]+sitem[11]+sitem[12]+sitem[13]+sitem[14],itemnow.name);
                if itemnow.Name='miss' then                                                 
                  if application.MessageBox(pchar(Error3Part1+' '+sitem+#13+Error3Part2),Pchar(ErrorCaption),mb_yesno+mb_iconwarning)=id_no then
                    continue;
                tipo:='ps';
                if intoPSgrid(wsrow,wscol,itemnow,itemoptnow)=false then application.MessageBox(pchar(Error4Part1+' '+sitem+#13+Error4Part2+' '+inttostr(wsrow+1)+','+inttostr(wscol+1)),Pchar(ErrorCaption),mb_ok+mb_iconwarning);
              end;
          end;
      except
      on E:exception do application.MessageBox(pchar(e.Message),Pchar(ErrorCaption),mb_ok+mb_iconerror);
      end;
  end;
end;
procedure killitem(const itemflag:string); {Excluir item do Inv}
begin
  while getbtnindex(itemflag)<>121 do begin
    (invform.Panel2.Controls[getbtnindex(itemflag)] as tspeedbutton).Flat:=false;
    invform.Panel2.Controls[getbtnindex(itemflag)].Name:='';
  end;
end;
procedure killitemps(const itemflag:string); {Excluir item do PS}
begin
  while getbtnindexps(itemflag)<>121 do begin
    (invform.Panel1.Controls[getbtnindexps(itemflag)] as tspeedbutton).Flat:=false;
    invform.Panel1.Controls[getbtnindexps(itemflag)].Name:='';
  end;
end;
{Procedures do Form}
procedure TInvForm.BitBtn11Click(Sender: TObject); {Adicionar Item por botao EQP/INV ok}
begin
  if combobox5.Visible=true then
    itemaddinv;
  if combobox8.Visible=true then
    begin
      xhint:=combobox8.text;
      itemaddeqp;
    end;
 if combobox9.Visible=true then
   itemaddps;
end;
procedure TInvForm.BitBtn12Click(Sender: TObject);  {Mostrar PS}
begin
if pson=true then
  begin
    groupbox8.Left:=606;
    bitbtn12.Left:=812;
    invform.clientwidth:=830;
    pson:=false;
    bitbtn12.Caption:='<';
  end
    else
      begin
        groupbox8.Left:=620;
        bitbtn12.Left:=600;
        invform.clientwidth:=619;
        pson:=true;
        bitbtn12.Caption:='>';
      end;
end;
procedure TInvForm.BitBtn1Click(Sender: TObject);
begin
 if application.MessageBox(Pchar(Question4),pchar(Programname),mb_yesno+mb_iconquestion)=id_no then exit;
 if warehousecommit then application.MessageBox(Pchar(Confirm2),pchar(Programname),mb_ok+mb_iconinformation) else
 application.MessageBox(Pchar(Error12),Pchar(ErrorCaption),mb_ok+mb_iconwarning);
end;

procedure TInvForm.BitBtn2Click(Sender: TObject);  {Apagar Inventory}

begin
 if application.MessageBox(Pchar(Question5),pchar(Programname),mb_yesno+mb_iconwarning)=idno then exit;
 resetinv;
end;
procedure TInvForm.BitBtn3Click(Sender: TObject); {Abrir form de editar muitem.mdb}
begin
  frmsd.ShowModal;
end;
procedure TInvForm.BitBtn4Click(Sender: TObject); {Fechar Programa}
begin
  application.Terminate;
end;
procedure TInvForm.BitBtn5Click(Sender: TObject);
begin
 cfgform.iniciar;
 configtype:='using';
 cfgform.Button4.Visible:=false;
 cfgform.showmodal;
end;

procedure TInvForm.BitBtn6Click(Sender: TObject);  {Mostrar Creditos}
begin
  form3.Caption:=creditstext;
  form3.Label2.Caption:=OtherFiles;
  form3.Label4.Caption:=translate;
  form3.showmodal;
end;
{
procedure TInvForm.Button1Click(Sender: TObject);
var t:boolean;
begin
accquery.SQL.clear;
accquery.SQL.Add('Select memb_guid from MEMB_INFO');
accquery.active:=true;
t:=accquery.Fields[0].CanModify;
if t=true  then label1.caption:='sim' else label1.Caption:='nao';
accquery.Fields[0].CanModify:=true;
t:= accquery.Fields[0].CanModify;
if t=true  then label2.caption:='sim' else label2.Caption:='nao';
accquery.active:=false;
end;
        }
procedure TInvForm.CheckBox4Click(Sender: TObject);  {Randomizar Serial}
var i:integer;
valor:string;
begin
  if edit2.enabled=true then
    begin
      muquery.sql.Clear;
      muquery.SQL.Add('select '+itemcount+' from '+gameserverinfo+'');
      muquery.Open;
      for i:=0 to muquery.RecordCount-1 do
        begin
          if vs<>'CMT' then
            valor:=inttohex(muquery.Fields[0].asinteger+1,8)
              else valor:=inttohex(muquery.Fields[0].asinteger+1,6);
          muquery.Next;
        end;
      muquery.Close;
      edit2.Text:=(valor);
      edit2.Enabled:=false;
    end
      else edit2.enabled:=true;
end;

procedure TInvForm.ComboBox1Change(Sender: TObject); {Selecionar Account}
begin
  CharacterMostrar;
end;
procedure TInvForm.ComboBox2Click(Sender: TObject);  {Selecionar Char}
begin
  screen.Cursor:=-11;
  editlock;
  application.ProcessMessages;
  try
    ResetInv;
    muquery.SQL.Clear;
    muquery.SQL.Add('select '+inventory+' from '+Character+' where '+nome+'='''+combobox2.text+'''');
    muquery.Open ;
    if (muquery.Eof) and (muquery.Bof) then
      begin
        application.MessageBox(pchar(Error13),pchar(ErrorCaption),mb_ok+mb_iconerror);
        screen.Cursor:=0;
        muquery.Close;
        exit;
      end;

    fillhexinv(muquery.Fields[0]);
    muquery.Close;

    if (psind=true) and (pson=true) then
      begin
        muquery.SQL.Clear;
        muquery.SQL.Add('select '+shopitem+' from '+Character+' where '+nome+'='''+combobox2.text+'''');
        muquery.Open ;
        if (muquery.Eof) and (muquery.Bof) then
          begin
            application.MessageBox(pchar(Error14),Pchar(ErrorCaption),mb_ok+mb_iconerror);
            screen.Cursor:=0;
            muquery.Close;
            exit;
          end;
        fillhexps(muquery.Fields[0]);
        muquery.Close;
      end;
      editunlock;
  finally
  screen.Cursor:=0;
  end;
end;
procedure TInvForm.ComboBox3Change(Sender: TObject); {Selecionar Tipo do item}
var i:integer;
any:string  ;
begin

  typechange(combobox3.Text );
  any:='any';
 // tipoantigo:=combobox3.text;
 { itemquery.SQL.Clear;
  if wearto<>'' then itemquery.SQL.Add('select name,setnumber from muitem where type='''+combobox3.text+''' and '+wearto+' or type='''+combobox3.text+''' and wearto='''+any+'''')
   else itemquery.SQL.Add('select name,setnumber from muitem where type='''+combobox3.text+'''');
  itemquery.Open;
  for i:=1 to itemquery.recordcount-1 do
    begin
      if (itemquery.Fields[1].asinteger=numordem) and (itemquery.Fields[1].asinteger<>0) then combobox4.text:=itemquery.Fields[0].asstring;
      itemquery.next;
    end;
  itemquery.Close ;     }
end;

procedure tinvform.lerexc;
var exctype:string;
begin
 label10.Caption:=itemspc[combobox4.itemindex];
 itemquery.SQL.Clear;
 itemquery.SQL.Add('select excoptiontype,setnumber from muitem where name='''+combobox4.Text+'''');
 itemquery.Open;
 exctype:=itemquery.Fields[0].asstring;
 numordem:=itemquery.Fields[1].asinteger;
 itemquery.Close;
 if exctype='we' then
    begin
      zy1.Caption:=wemode1;
      zy2.Caption:=wemode2;
      zy3.Caption:=wemode3;
      zy4.Caption:=wemode4;
      zy5.Caption:=wemode5;
      zy6.Caption:=wemode6;
      zy1.Enabled:=true;
      zy2.Enabled:=true;
      zy3.Enabled:=true;
      zy4.Enabled:=true;
      zy5.Enabled:=true;
      zy6.Enabled:=true;
    end
      else
        if exctype='any' then
          begin
            zy1.Caption:=anymode;
            zy2.Caption:=anymode;
            zy3.Caption:=anymode;
            zy4.Caption:=anymode;
            zy5.Caption:=anymode;
            zy6.Caption:=anymode;
            zy1.Enabled:=false;
            zy2.Enabled:=false;
            zy3.Enabled:=false;
            zy4.Enabled:=false;
            zy5.Enabled:=false;
            zy6.Enabled:=false;
          end
            else
              if exctype='ar' then
                begin
                  zy1.Caption:=armode1;
                  zy2.Caption:=armode2;
                  zy3.Caption:=armode3;
                  zy4.Caption:=armode4;
                  zy5.Caption:=armode5;
                  zy6.Caption:=armode6;
                  zy1.Enabled:=true;
                  zy2.Enabled:=true;
                  zy3.Enabled:=true;
                  zy4.Enabled:=true;
                  zy5.Enabled:=true;
                  zy6.Enabled:=true;
                end
                  else
                    if exctype='fen' then
                      begin
                        zy1.Caption:=fenmode1;
                        zy2.Caption:=fenmode2;
                        zy3.Caption:=fenmode3;
                        zy4.Caption:=fenmode4;
                        zy5.Caption:=fenmode5;
                        zy6.Caption:=fenmode6;
                        zy1.Enabled:=true;
                        zy2.Enabled:=true;
                        zy3.Enabled:=false;
                        zy4.Enabled:=false;
                        zy5.Enabled:=false;
                        zy6.Enabled:=false;
                      end
                        else if exctype='wi' then
                          begin
                            zy1.Caption:=wimode1;
                            zy2.Caption:=wimode2;
                            zy3.Caption:=wimode3;
                            zy4.Caption:=wimode4;
                            zy5.Caption:=wimode5;
                            zy6.Caption:=anymode;
                            zy1.Enabled:=true;
                            zy2.Enabled:=true;
                            zy3.Enabled:=true;
                            zy4.Enabled:=true;
                            zy5.Enabled:=true;
                            zy6.Enabled:=false;
                          end
                            else
                              begin
                                zy1.Caption:=ormode1;
                                zy2.Caption:=ormode2;
                                zy3.Caption:=ormode3;
                                zy4.Caption:=ormode4;
                                zy5.Caption:=ormode5;
                                zy6.Caption:=ormode6;
                                zy1.Enabled:=true;
                                zy2.Enabled:=true;
                                zy3.Enabled:=true;
                                zy4.Enabled:=true;
                                zy5.Enabled:=true;
                                zy6.Enabled:=true;
                             end;
end;

procedure TInvForm.ComboBox4Change(Sender: TObject);  {Varia descri��o dos items ancients e o setnumber}
begin

  lerexc;
end;

procedure TInvForm.ComboBox7Change(Sender: TObject); {Muda op��es da posi��o EQP/INV/PS Ok}
var affname:array[0..12] of string;
begin
if combobox7.text=Equips then
  begin
    affname[0]:='OL';
    affname[1]:='OR';
    affname[2]:='OB';
    affname[3]:='TR';
    affname[4]:='helm';
    affname[5]:='armor';
    affname[6]:='pants';
    affname[7]:='gloves';
    affname[8]:='boots';
    affname[9]:='wings';
    affname[10]:='guardian';
    affname[11]:='pendant';
    affname[12]:='rings';
    if ComboBox8.itemindex=0 then wearto:='wearto='''+affname[0]+''' or wearto='''+affname[2]+''' or wearto='''+affname[3]+'''';
    if ComboBox8.itemindex=1 then wearto:='wearto='''+affname[1]+''' or wearto='''+affname[2]+''' or wearto='''+affname[3]+'''';
    if ComboBox8.itemindex=2 then wearto:='wearto='''+affname[4]+'''';
    if ComboBox8.itemindex=3 then wearto:='wearto='''+affname[5]+'''';
    if ComboBox8.itemindex=4 then wearto:='wearto='''+affname[6]+'''';
    if ComboBox8.itemindex=5 then wearto:='wearto='''+affname[7]+'''';
    if ComboBox8.itemindex=6 then wearto:='wearto='''+affname[8]+'''';
    if ComboBox8.itemindex=7 then wearto:='wearto='''+affname[9]+'''';
    if ComboBox8.itemindex=8 then wearto:='wearto='''+affname[10]+'''';
    if ComboBox8.itemindex=9 then wearto:='wearto='''+affname[11]+'''';
    if (ComboBox8.itemindex=10) or (ComboBox8.itemindex=11)  then wearto:='wearto='''+affname[12]+'''';
    lertipo;

    combobox8.visible:=true;
    combobox8.itemindex:=0;

    label14.Visible:=false;
    label15.visible:=false;
    combobox5.visible:=false;
    combobox6.visible:=false;
    combobox9.visible:=false;
    combobox10.visible:=false;
    combobox5.text:='9';
    combobox6.text:='9';
    combobox9.text:='9';
    combobox10.text:='9';
  end;
if combobox7.text=NoEquips then
  begin
    combobox8.visible:=false;
    combobox8.text:='semitem';
    label14.Visible:=true;
    label15.visible:=true;
    combobox5.visible:=true;
    combobox6.visible:=true;
    combobox9.visible:=false;
    combobox10.visible:=false;
    combobox9.text:='9';
    combobox10.text:='9';
    combobox5.text:='1';
    combobox6.text:='1';
  end;
if combobox7.text=PS then
  begin
    combobox8.visible:=false;
    combobox8.text:='semitem';
    label14.Visible:=true;
    label15.visible:=true;
    combobox5.visible:=false;
    combobox6.visible:=false;
    combobox9.visible:=true;
    combobox10.visible:=true;
    combobox5.text:='9';
    combobox6.text:='9';
    combobox9.text:='1';
    combobox10.text:='1';
  end;
end;
procedure TInvForm.ComboBox8Change(Sender: TObject);
var affname: array[0..12] of string;
begin
affname[0]:='OL';
    affname[1]:='OR';
    affname[2]:='OB';
    affname[3]:='TR';
    affname[4]:='helm';
    affname[5]:='armor';
    affname[6]:='pants';
    affname[7]:='gloves';
    affname[8]:='boots';
    affname[9]:='wings';
    affname[10]:='guardian';
    affname[11]:='pendant';
    affname[12]:='rings';
    if ComboBox8.itemindex=0 then wearto:='wearto='''+affname[0]+''' or wearto='''+affname[2]+''' or wearto='''+affname[3]+'''';
    if ComboBox8.itemindex=1 then wearto:='wearto='''+affname[1]+''' or wearto='''+affname[2]+''' or wearto='''+affname[3]+'''';
    if ComboBox8.itemindex=2 then wearto:='wearto='''+affname[4]+'''';
    if ComboBox8.itemindex=3 then wearto:='wearto='''+affname[5]+'''';
    if ComboBox8.itemindex=4 then wearto:='wearto='''+affname[6]+'''';
    if ComboBox8.itemindex=5 then wearto:='wearto='''+affname[7]+'''';
    if ComboBox8.itemindex=6 then wearto:='wearto='''+affname[8]+'''';
    if ComboBox8.itemindex=7 then wearto:='wearto='''+affname[9]+'''';
    if ComboBox8.itemindex=8 then wearto:='wearto='''+affname[10]+'''';
    if ComboBox8.itemindex=9 then wearto:='wearto='''+affname[11]+'''';
    if (ComboBox8.itemindex=10) or (ComboBox8.itemindex=11)  then wearto:='wearto='''+affname[12]+'''';
    lertipo;
end;

procedure TInvForm.Edit1Exit(Sender: TObject);   {Limita 255 no campo de durabilidade}
begin
if (strtoint(edit1.text)>255) or (strtoint(edit1.text)<0) then edit1.text:='255';
end;
procedure TInvForm.Edit1KeyPress(Sender: TObject; var Key: Char); {Limita apenas numeros no campo de durabilidade}
begin
If Not (Key in ['0'..'9',#8,#0]) then
Key:=#0;
end;
procedure TInvForm.Edit2KeyPress(Sender: TObject; var Key: Char);  {Limita apenas escrever numeros hexas no campo de serial}
begin
key:=AnsiUpperCase(key)[1];
If Not (Key in ['0'..'9',#8,#0,'A','B','C','D','E','F']) then
Key:=#0;
end;
procedure TInvForm.FormClose(Sender: TObject; var Action: TCloseAction);  {Fecha o programa quando fechar o form}
begin
  application.Terminate;
end;
procedure TInvForm.N1Click(Sender: TObject);  {Informa��es do item EQP/INV ok}
var i:byte;
begin
if tipo='inv' then
  begin
    i:=getlblindex('L'+currentitem);
    application.MessageBox (pchar(panel2.Controls[i].Hint),Pchar(Info),mb_ok+mb_iconinformation);
  end;
if tipo='eqp' then
  begin
    application.MessageBox (pchar(tpanelname.Hint),Pchar(Info),mb_ok+mb_iconinformation);
  end;
if tipo='ps' then
  begin
    i:=getlblindexps('L'+currentitem);
    application.MessageBox (pchar(panel1.Controls[i].Hint),Pchar(Info),mb_ok+mb_iconinformation);
  end;
end;
procedure TInvForm.N3Click(Sender: TObject);   {Botao Excluir [EQP/INV Ok]}
var i,t,j,l:integer;
begin
  if application.MessageBox(Pchar(Question3),Pchar(Question3Caption),mb_yesno+mb_iconquestion)=id_no then exit;
  if tipo='eqp' then
    begin
      l:=0;
      for j := 0 to panel14.ControlCount-1 do
        if (panel14.Controls[j].name=tpanelname.Name) and (lowercase(Panel14.Controls[j].ClassName)='tpanel')  then
          begin
            panel14.Controls[j].free;
            l:=8
          end;
      for j := 0 to panel8.ControlCount-1 do
        if (panel8.Controls[j].name=tpanelname.Name) and (lowercase(Panel8.Controls[j].ClassName)='tpanel')  then
          begin
            panel8.Controls[j].free;
            l:=2
          end;
      for j := 0 to panel15.ControlCount-1 do
        if (panel15.Controls[j].name=tpanelname.Name) and (lowercase(Panel15.Controls[j].ClassName)='tpanel')  then
          begin
            panel15.Controls[j].free;
            l:=7
          end;
      for j := 0 to panel13.ControlCount-1 do
        if (panel13.Controls[j].name=tpanelname.Name) and (lowercase(Panel13.Controls[j].ClassName)='tpanel')  then
          begin
            panel13.Controls[j].free;
            l:=9
          end;
      for j := 0 to panel11.ControlCount-1 do
        if (panel11.Controls[j].name=tpanelname.Name) and (lowercase(Panel11.Controls[j].ClassName)='tpanel')  then
          begin
            panel11.Controls[j].free;
            l:=1
          end;
      for j := 0 to panel4.ControlCount-1 do
        if (panel4.Controls[j].name=tpanelname.Name) and (lowercase(Panel4.Controls[j].ClassName)='tpanel')  then
          begin
            panel4.Controls[j].free;
            l:=3
          end;
      for j := 0 to panel12.ControlCount-1 do
        if (panel12.Controls[j].name=tpanelname.Name) and (lowercase(Panel12.Controls[j].ClassName)='tpanel')  then
          begin
            panel12.Controls[j].free;
            l:=0
          end;
      for j := 0 to panel5.ControlCount-1 do
        if (panel5.Controls[j].name=tpanelname.Name) and (lowercase(Panel5.Controls[j].ClassName)='tpanel')  then
          begin
            panel5.Controls[j].free;
            l:=5
          end;
      for j := 0 to panel9.ControlCount-1 do
        if (panel9.Controls[j].name=tpanelname.Name) and (lowercase(Panel9.Controls[j].ClassName)='tpanel')  then
          begin
            panel9.Controls[j].free;
            l:=11
          end;
      for j := 0 to panel6.ControlCount-1 do
        if (panel6.Controls[j].name=tpanelname.Name) and (lowercase(Panel6.Controls[j].ClassName)='tpanel')  then
          begin
            panel6.Controls[j].free;
            l:=4
          end;
      for j := 0 to panel10.ControlCount-1 do
        if (panel10.Controls[j].name=tpanelname.Name) and (lowercase(Panel10.Controls[j].ClassName)='tpanel')  then
          begin
            panel10.Controls[j].free;
            l:=10
          end;
      for j := 0 to panel7.ControlCount-1 do
        if (panel7.Controls[j].name=tpanelname.Name) and (lowercase(Panel7.Controls[j].ClassName)='tpanel')  then
          begin
            panel7.Controls[j].free;
            l:=6
          end;
      eqphexa[l]:='FFFFFFFFFFFFFFFFFFFF';
      eqpcells[l].flat:=false;
      eqpcells[l].Name:='';
    end ;
  if tipo='inv' then
    begin
      i:=getlblindex('L'+currentitem);
      invform.Panel2.Controls[i].Free;
      i:=strtoint(leftstr(currentitem,2));
      t:=strtoint(rightstr(currentitem,2));
      invhexa[i,t]:='FFFFFFFFFFFFFFFFFFFF';
      killitem(currentitem);
    end;
 if tipo='ps' then
    begin
      i:=getlblindexps('L'+currentitem);
      invform.Panel1.Controls[i].Free;
      i:=(strtoint(leftstr(currentitem,2))-9);
      t:=(strtoint(rightstr(currentitem,2))-9);
      pshexa[i,t]:='FFFFFFFFFFFFFFFFFFFF';
      killitemps(currentitem);
    end;

end;
procedure TInvForm.TrackBar1Change(Sender: TObject); {Alterar o Label do TrackBar de level}
begin
label5.caption:='+'+inttostr(trackbar1.position);
end;
procedure TInvForm.TrackBar2Change(Sender: TObject); {Alterar o Label do TrackBar de option}
begin
label6.caption:='z'+inttostr(trackbar2.position*4);
end;
procedure TInvForm.zy1Click(Sender: TObject); {Click nas op��es excelentes}
begin
 with (sender as Tcheckbox) do begin
   if (name<>'jn') and (name<>'xy') then begin
      if checked then tag:=gettag(strtoint(name[3])) else tag:=0;
   end;
 end;
end;
procedure tinvform.lblClick(sender:tobject); {Ver Informa��es nos items clicando neles }
begin
  application.MessageBox (pchar((sender as tpanel).Hint),Pchar(Info),mb_ok+mb_iconinformation);
end;
procedure tinvform.lblMouseDownINV(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); {salva items do INV para fun��es de deletar e informa��es}
begin
  currentitem:=midstr((sender as tpanel).Name,2,4);
  tipo:='inv';
end;
procedure Tinvform.lblMouseMoveINV(Sender: TObject; Shift: TShiftState; X,Y: Integer); {Mostra Hexa dos items do INV}
var wsPos:string;
    iName:string;
begin
  wspos:=midstr((sender as tpanel).Name,2,4);
  iname:=(sender as tpanel).Caption ;
  edit3.Text :=iname+':'+invhexa[strtoint(leftstr(wspos,2)),strtoint(rightstr(wspos,2))];
end;
procedure tinvform.lblMouseDownEQP(Sender: TObject; Button: TMouseButton;   Shift: TShiftState; X, Y: Integer);  {salva items do EQP para fun��es de deletar e informa��es}
begin
  currentitem:=midstr((sender as tpanel).Name,2,4);
  tipo:='eqp';
  tpanelname:=(sender as tpanel);
end;
procedure Tinvform.lblMouseMoveEQP(Sender: TObject; Shift: TShiftState; X,Y: Integer);  {Mostra Hexa do Item do EQP}
var wsPos:string;
    iName:string;
begin
  wspos:=midstr((sender as tpanel).Name,2,2);
  iname:=(sender as tpanel).Caption ;
  edit3.Text :=iname+':'+eqphexa[strtoint(wspos)];
end;
procedure tinvform.lblMouseDownPS(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); {salva items do INV para fun��es de deletar e informa��es}
begin
  currentitem:=midstr((sender as tpanel).Name,2,4);
  tipo:='ps';
end;
procedure Tinvform.lblMouseMovePS(Sender: TObject; Shift: TShiftState; X,Y: Integer); {Mostra Hexa dos items do INV}
var wsPos:string;
    iName:string;
begin
  wspos:=midstr((sender as tpanel).Name,2,4);
  iname:=(sender as tpanel).Caption ;
  edit3.Text :=iname+':'+pshexa[strtoint(leftstr(wspos,2))-9,strtoint(rightstr(wspos,2))-9];
end;
procedure tinvform.CellClickEQP(sender:tobject); {Clique em um espa�o vazio no EQP}
var sHint:string;
i:byte;
affname:array[0..12] of string ;
begin
  if label16.Enabled=true then
    begin
      combobox7.itemindex:=1;
      combobox5.Visible:=false;
      combobox6.Visible:=false;
      combobox9.visible:=false;
      combobox10.visible:=false;
      label14.visible:=false;
      label15.visible:=false;
      combobox8.Visible:=true;
      cbox2:=17;
      cboy2:=17;
      cbox2:=11;
      cboy2:=11;
      affname[0]:='OL';
      affname[1]:='OR';
      affname[2]:='OB';
      affname[3]:='TR';
      affname[4]:='helm';
      affname[5]:='armor';
      affname[6]:='pants';
      affname[7]:='gloves';
      affname[8]:='boots';
      affname[9]:='wings';
      affname[10]:='guardian';
      affname[11]:='pendant';
      affname[12]:='rings';
      shint:=(sender as tspeedbutton).Hint ;
      if shint=WeaponLeft then wearto:='wearto='''+affname[0]+''' or wearto='''+affname[2]+''' or wearto='''+affname[3]+'''';
      if shint=WeaponRight then wearto:='wearto='''+affname[1]+''' or wearto='''+affname[2]+''' or wearto='''+affname[3]+'''';
      if shint=Helm then wearto:='wearto='''+affname[4]+'''';
      if shint=Armor then wearto:='wearto='''+affname[5]+'''';
      if shint=Pants then wearto:='wearto='''+affname[6]+'''';
      if shint=Gloves then wearto:='wearto='''+affname[7]+'''';
      if shint=Boots then wearto:='wearto='''+affname[8]+'''';
      if shint=Wings then wearto:='wearto='''+affname[9]+'''';
      if shint=Pet then wearto:='wearto='''+affname[10]+'''';
      if shint=Pendant then wearto:='wearto='''+affname[11]+'''';
      if (shint=RingLeft) or (shint=RingRight) then wearto:='wearto='''+affname[12]+'''';
      lertipo;
      query:='eqp';
      for i := 0 to 12 do
        if combobox8.items[i]=shint then combobox8.ItemIndex:=i;
      xhint:='';
      tipo:='eqp';
      if (combobox8.text=eqpsel) then
        begin
        xhint:=shint;
          itemaddeqp;

        end;
      eqpsel:=combobox8.text;
    end;
end;
procedure tinvform.CellClickINV(sender:tobject); {Clique em um espa�o vazio no INV}
var sHint,itemsel,tiposel:string;
begin
tipoantigo:=combobox3.text;
  if label16.Enabled=true then
    begin
      combobox5.Visible:=true;
      combobox6.Visible:=true;
      combobox9.visible:=false;
      combobox10.visible:=false;
      label14.visible:=true;
      label15.visible:=true;
      combobox8.Visible:=false;
      cbox3:=11;
      cboy3:=11;
      eqpsel:='null';
      combobox7.itemindex:=0;
      shint:=(sender as tspeedbutton).Hint ;
      combobox5.ItemIndex:=strtoint(leftstr(shint,2))-1;
      combobox6.ItemIndex:=strtoint(rightstr(shint,2))-1;

      tipo:='inv';
      if query<>'normal' then
        begin
          tiposel:=combobox3.text;
          itemsel:=combobox4.text;
          wearto:='';

          lertipo;
          combobox3.text:=tiposel;
          typechange(combobox3.text);
          itemsel:=combobox4.text;
          query:='normal';
        end;
      if (combobox5.ItemIndex=cbox2) and (combobox6.itemindex=cboy2) then
        begin
          itemaddinv;
        end;

      cbox2:=combobox5.itemindex;
      cboy2:=combobox6.itemindex;
    end;
end;
procedure tinvform.CellClickPS(sender:tobject); {Clique em um espa�o vazio no PS}
var sHint,itemsel,tiposel:string;
begin
 combobox3.text:=tiposel;
  if label16.Enabled=true then
    begin
      combobox7.itemindex:=2;
      combobox5.Visible:=false;
      combobox6.Visible:=false;
      combobox9.visible:=true;
      combobox10.visible:=true;
      label14.visible:=true;
      label15.visible:=true;
      combobox8.Visible:=false;
      eqpsel:='null';
      cbox2:=11;
      cboy2:=11;
      shint:=(sender as tspeedbutton).Hint ;
      combobox9.ItemIndex:=strtoint(leftstr(shint,2))-10;
      combobox10.ItemIndex:=strtoint(rightstr(shint,2))-10;
      if query<>'normal' then
        begin
          tiposel:=combobox3.text;
          itemsel:=combobox4.text;
          wearto:='';
          tipoantigo:=combobox3.text;
          lertipo;

          typechange(combobox3.text);
          itemsel:=combobox4.text;
          query:='normal';
        end;
      tipo:='ps';
      if (combobox9.ItemIndex=cbox3) and (combobox10.itemindex=cboy3) then
        begin
          itemaddps;
        end;
      cbox3:=combobox9.itemindex;
      cboy3:=combobox10.itemindex;
    end;
end;
{Custom no form}
procedure TInvForm.CharacterMostrar; {Mostra Lista de Characters}
var i:byte;
begin
  Combobox2.Items.Clear;
  AccountSave:=Combobox1.Text;
  muquery.SQL.Clear;
  muquery.SQL.Add('select '+GameID1+','+GameID2+','+GameID3+','+GameID4+','+GameID5+' from '+AccountCharacter+' where '+Id+'='''+AccountSave+'''');
  muquery.Open;
  for i:=0 to 4 do
    begin
     if muquery.Fields[i].asstring<>'' then Combobox2.Items.Add(muquery.Fields[i].asstring);
    end;
  muquery.Close;
end;
procedure TInvForm.Iniciar;  {Configura��es Iniciais}
var
  i:byte;
  filename : string;
  f : textfile;
  ch : char;
  esc: boolean;
  s:array[1..15] of string;
  g,g2,caption,cap2:string;
begin

  combobox1.items.Clear;
  combobox2.items.Clear;
  caption:='AHsY69JuG7ozJuy7x7KO6u97S�iV';
  for I := 0 to length(caption) do
    begin
      if caption[i]='A' then cap2:=cap2+'CM';
      if caption[i]='H' then cap2:=cap2+'T ';
      if caption[i]='s' then cap2:=cap2+'I';
      if caption[i]='Y' then cap2:=cap2+'nv';
      if caption[i]='6' then cap2:=cap2+'e';
      if caption[i]='9' then cap2:=cap2+'n';
      if caption[i]='O' then cap2:=cap2+'nn';
      if caption[i]='o' then cap2:=cap2+'E';
      if caption[i]='J' then cap2:=cap2+'t';
      if caption[i]='u' then cap2:=cap2+'o';
      if caption[i]='G' then cap2:=cap2+'ry';
      if caption[i]='z' then cap2:=cap2+'di';
      if caption[i]='y' then cap2:=cap2+'r';
      if caption[i]='7' then cap2:=cap2+' ';
      if caption[i]='K' then cap2:=cap2+'U';
      if caption[i]='�' then cap2:=cap2+'Be';
      if caption[i]='�' then cap2:=cap2+'1.';
      if caption[i]='i' then cap2:=cap2+'1a';
      if caption[i]='.' then cap2:=cap2+'a';
      if caption[i]='S' then cap2:=cap2+'[';
      if caption[i]='V' then cap2:=cap2+']';
      if caption[i]='x' then cap2:=cap2+'by';
    end;
  invform.caption:=cap2;
  caption:='J hxukpHgnkpgzHgLjdt';
  cap2:='';
  for I := 0 to length(caption) do
    begin
      if caption[i]='J' then cap2:=cap2+'C';
      if caption[i]=' ' then cap2:=cap2+'MT ';
      if caption[i]='g' then cap2:=cap2+' ';
      if caption[i]='h' then cap2:=cap2+'In';
      if caption[i]='x' then cap2:=cap2+'v';
      if caption[i]='u' then cap2:=cap2+'en';
      if caption[i]='k' then cap2:=cap2+'t';
      if caption[i]='p' then cap2:=cap2+'or';
      if caption[i]='H' then cap2:=cap2+'y';
      if caption[i]='n' then cap2:=cap2+'Edi';
      if caption[i]='G' then cap2:=cap2+'ry';
      if caption[i]='z' then cap2:=cap2+'b';
      if caption[i]='y' then cap2:=cap2+'r';
      if caption[i]='L' then cap2:=cap2+'Un';
      if caption[i]='j' then cap2:=cap2+'n';
      if caption[i]='d' then cap2:=cap2+'e';
      if caption[i]='t' then cap2:=cap2+'on';
    end;
  statusbar1.Panels[0].Text:=cap2;
  frmsd.Caption:=cap2;
  caption:='19gIxubk66ht';
  cap2:='';
  for I := 0 to length(caption) do
    begin
      if caption[i]='1' then cap2:=cap2+'P';
      if caption[i]='9' then cap2:=cap2+'r';
      if caption[i]='g' then cap2:=cap2+'og';
      if caption[i]='I' then cap2:=cap2+'ra';
      if caption[i]='x' then cap2:=cap2+'m';
      if caption[i]='u' then cap2:=cap2+' ';
      if caption[i]='b' then cap2:=cap2+'by ';
      if caption[i]='k' then cap2:=cap2+'U';
      if caption[i]='6' then cap2:=cap2+'n';
      if caption[i]='h' then cap2:=cap2+'e';
      if caption[i]='t' then cap2:=cap2+'on';
    end;
  form3.label3.caption:=cap2;
  caption:='QergomybmHI�\8';
  cap2:='';
  for I := 0 to length(caption) do
    begin
      if caption[i]='Q' then cap2:=cap2+'L';
      if caption[i]='e' then cap2:=cap2+'oa';
      if caption[i]='r' then cap2:=cap2+'d';
      if caption[i]='g' then cap2:=cap2+'i';
      if caption[i]='o' then cap2:=cap2+'ng';
      if caption[i]='m' then cap2:=cap2+' ';
      if caption[i]='y' then cap2:=cap2+'b';
      if caption[i]='b' then cap2:=cap2+'y';
      if caption[i]='H' then cap2:=cap2+'S';
      if caption[i]='I' then cap2:=cap2+'tr';
      if caption[i]='�' then cap2:=cap2+'i';
      if caption[i]='\' then cap2:=cap2+'k';
      if caption[i]='8' then cap2:=cap2+'er';
    end;
  form3.label5.caption:=cap2;
  caption:='QergomybHI�\';
  cap2:='';
  for I := 0 to length(caption) do
    begin
      if caption[i]='Q' then cap2:=cap2+'I';
      if caption[i]='e' then cap2:=cap2+'n';
      if caption[i]='r' then cap2:=cap2+'v';
      if caption[i]='g' then cap2:=cap2+'en';
      if caption[i]='o' then cap2:=cap2+'t';
      if caption[i]='m' then cap2:=cap2+'ory';
      if caption[i]='y' then cap2:=cap2+' ';
      if caption[i]='b' then cap2:=cap2+'E';
      if caption[i]='H' then cap2:=cap2+'d';
      if caption[i]='I' then cap2:=cap2+'it';
      if caption[i]='�' then cap2:=cap2+'o';
      if caption[i]='\' then cap2:=cap2+'r';
    end;
  form3.label1.caption:=cap2;
  programname:=cap2;
  combobox7.Items.Clear;
  combobox7.items.add(noequips);
  combobox7.Items.add(equips);
  combobox7.itemindex:=0;
{Config Espa�os}
  InvName[0]:=WeaponLeft;
  InvName[1]:=WeaponRight;
  InvName[2]:=Helm;
  InvName[3]:=Armor;
  InvName[4]:=Pants;
  InvName[5]:=Gloves;
  InvName[6]:=Boots;
  InvName[7]:=Wings;
  InvName[8]:=Pet;
  InvName[9]:=Pendant;
  InvName[10]:=RingLeft;
  InvName[11]:=RingRight ;
  combobox8.Items.Clear;
  combobox8.Items.Add(WeaponLeft);
  combobox8.Items.Add(WeaponRight);
  combobox8.Items.Add(Helm);
  combobox8.Items.Add(Armor);
  combobox8.Items.Add(Pants);
  combobox8.Items.Add(Gloves);
  combobox8.Items.Add(Boots);
  combobox8.Items.Add(Wings);
  combobox8.Items.Add(Pet);
  combobox8.Items.Add(Pendant);
  combobox8.Items.Add(RingLeft);
  combobox8.Items.Add(RingRight);

{Config Conexao}
  muquery.ConnectionString:='Provider=MSDASQL.1;Password='+mupwd+';Persist Security Info=True;User ID='+muid+';Data Source='+mudsn+';Initial Catalog='+catalog;
  itemquery.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.ExeName)+'muitem.mdb'+';Mode=ReadWrite;Persist Security Info=False';
  itemupdate.connectionstring:=muquery.connectionstring;
  accquery.connectionstring:='Provider=MSDASQL.1;Password='+memupwd+';Persist Security Info=True;User ID='+memuid+';Data Source='+memudsn+';Initial Catalog='+mecatalog;
{Config PS}
  label1.caption:=inventory;
  if shopitem='' then
    begin
      bitbtn12.Visible:=false;
      pson:=false;
    end
      else
        begin
          pson:=true;
          combobox7.Items.Add(PS);
        end;
  if shopitem=inventory then psind:=false
    else psind:=true;

  muquery.sql.clear;
  muquery.SQL.Add('select '+inventory+' from '+character+'');
  muquery.open;
  tamanho:=(muquery.Fields[0].Size);
  muquery.Close;
{Iniciar}
  editlock;
  initinv;
  accountmostrar;
  serialbool:=true;
{Carregar Items}
  wearto:='';
  lertipo;
 // tipoantigo:=combobox3.Items[combobox3.itemindex];
  //Unique2
  edit2.Text:='00000000';
  edit2.MaxLength:=8;
  invform.caption:= invform.caption+' ('+vs+')';
  if vs='CMT' then
    begin

      edit2.MaxLength:=6;
      checkbox2.Visible:=false;
      label17.Visible:=true;
      combobox11.Visible:=true;
      combobox11.Items.Clear;
      combobox11.Items.add(Ancientnormal);
      combobox11.Items.add(Ancient5);
      combobox11.Items.add(Ancient10);
      combobox11.ItemIndex:=0;
      edit2.Text:='000000';
    end
      else
        begin
           edit2.Text:='00000000';
           edit2.MaxLength:=8;
           checkbox2.Visible:=true;
           label17.Visible:=false;
           combobox11.Visible:=false;
        end;
  //Unique2 end
  //lang
  label9.caption:=accounttext;
  label12.caption:=charactertext;



  label1.Caption:=typetext;
  label2.Caption:=itemtext;
  label3.Caption:=leveltext;
  label4.caption:=optiontext;
  label7.caption:=durationtext;
  checkbox1.caption:=skilltext;
  checkbox3.Caption:=lucktext;
  checkbox2.Caption:=ancienttext;
  label8.caption:=serialtext;
  checkbox4.caption:=autoserialtext;
  label17.Caption:=ancient3;

  zy1.caption:=wemode1;
  zy2.caption:=wemode2;
  zy3.caption:=wemode3;
  zy4.caption:=wemode4;
  zy5.caption:=wemode5;
  zy6.caption:=wemode6;

  label16.caption:=itemsizetext;
  label11.caption:=inventorypos;
  label13.caption:=vaultpostext;
  bitbtn11.Caption:=itemaddtext;
  bitbtn1.Caption:=inventoryedit;
  bitbtn2.Caption:=inventoryclear;
  bitbtn3.Caption:=mdbedittext;
  bitbtn4.Caption:=closetext;
  bitbtn6.Caption:=creditstext;
  checkbox5.Caption:=seequerytext;
  checkbox6.Caption:=copyquerytext;
  bitbtn5.Caption:=editcmtedit;

  groupbox2.Caption:=SelectAcc;
  groupbox1.Caption:=SelectItem;
  groupbox5.Caption:=ExcOpts;
  groupbox3.Caption:=CharacterItems;

  n1.caption:=information;
  n3.Caption:=deletetext;
  //lang end
  invform.Update;
  cap2:=ParamStr(1);
  caption:=ParamStr(2);
  if (cap2<>'') and (cap2[1]='$') and (caption<>'') and (caption[1]='$')  then
  begin
    g:='';
    g2:='';
    for i:=2 to length(cap2) do
      g:=g+cap2[i];
    for i:=2 to length(caption) do
      g2:=g2+caption[i];
    for i:=0 to Combobox1.Items.Count-1 do
      if Combobox1.Items[i]=g then
      begin
        Combobox1.ItemIndex:=i;
        invform.ComboBox1Change(Combobox1);
      end;
    for i:=0 to Combobox2.Items.Count-1 do
      if Combobox2.Items[i]=g2 then
      begin
        Combobox2.ItemIndex:=i;
        invform.ComboBox2Click(Combobox2);
      end;
  end;

end;
procedure Tinvform.accountmostrar; {Mostrar Lista de Accounts}
var
i:integer;
begin
  ComboBox1.Items.clear;
  accquery.SQL.Clear;
  accquery.SQL.Add('select '+memb___id+' from '+MEMB_INFO+'');
  accquery.Open;
  for i:=0 to accquery.RecordCount-1 do begin
      ComboBox1.Items.Add(accquery.Fields[0].asstring);
      accquery.Next;
    end;
  accquery.Close;
end;
procedure Tinvform.lertipo; {Ler tipo que deve aparecer quando selecionar um espa�o no EQP}
var any:string;
i:integer;
begin
  tipoantigo:=combobox3.text;
  any:='any';
  combobox3.Items.Clear;
  itemquery.SQL.clear;
  if wearto<>'' then itemquery.SQL.Add('select distinct type from muitem where '+wearto+' or wearto='''+any+''' ')
    else itemquery.SQL.Add('select distinct type from muitem');
  itemquery.Open;
  while not itemquery.Eof do
    begin
      combobox3.Items.Add(itemquery.Fields[0].asstring);
      itemquery.Next;
    end;
  itemquery.Close;

  combobox3.ItemIndex:=0;
  for i:=0 to combobox3.Items.count-1 do
    if combobox3.Items[i]=tipoantigo then combobox3.ItemIndex:=i;

  typechange(combobox3.Text );
  invform.Update;
end;
procedure tinvform.ItemAddINV;   {Adiciona item no INV}
var sthisitem,smain,sopt,sdur,spos15,ancient
,sex:string;
    ixy,izj:integer;
    insProp:itemproperty;
    insOpt:itemoption;
    lvlaff:byte;
    i,j:byte;
    valor:string;
    //unique2
    tipo:boolean;
    u2:string;
    u2serial:string;
    aff:string;
    //unique2 end
begin
   valor:=edit2.text;
   if checkbox4.Checked then
     begin
       itemupdate.commandtext:=('Update '+gameserverinfo+' set '+itemcount+'='+itemcount+'+1');
       itemupdate.Execute;
       muquery.sql.Clear;
       muquery.SQL.Add('select '+itemcount+' from '+gameserverinfo+'');
       muquery.Open;
       for i:=0 to muquery.RecordCount-1 do
        begin
          if vs<>'CMT' then
            valor:=inttohex(muquery.Fields[0].asinteger+1,8)
              else valor:=inttohex(muquery.Fields[0].asinteger+1,6);
          muquery.Next;
        end;
       muquery.Close;
     end
       else begin
         if (vs<>'CMT') then begin
           if (length(edit2.text)<8) then begin
             i:=8-length(edit2.text);
             for j := 1 to i do
               edit2.text:='0'+edit2.text;
           end;
         end
           else begin
             if (length(edit2.text)<6) then begin
               i:=6-length(edit2.text);
             for j := 1 to i do
               edit2.text:='0'+edit2.text;
             end;
           end;
       end;
   if trim(combobox4.Text)='' then begin
      application.MessageBox(pchar(Error7),pchar(ErrorCaption),mb_ok+mb_iconwarning);
      exit;
   end;
   insprop.Name:=combobox4.Text ;
   insprop.X:=strtoint(label10.Caption[pos('x',label10.Caption)-1]);
   insprop.y:=strtoint(label10.caption[pos('x',label10.Caption)+1]);
   itemquery.SQL.Clear;
   itemquery.SQL.Add('select id,unique,x,y,ExcOptionType,unique2 from muitem where name='''+combobox4.Text +'''');
   itemquery.Open ;
   smain:=itemquery.Fields[0].AsString ;
   spos15:=itemquery.Fields[1].AsString ;
   if itemquery.Fields[5].AsString='0' then tipo:=false else tipo:=true;
   itemquery.Close ;
   randomize;
   u2:='00';
   if checkbox3.Checked then ixy:=4 else ixy:=0;
   if (vs)='MG' then
    begin
      if checkbox2.checked=true then ancient:='09'+inttostr(random(10))+inttostr(random(10)) else  ancient:='80'+inttostr(random(10))+inttostr(random(10)) ;
    end;
   if ((vs)='MX') then
    begin
      if tipo=true then
        if checkbox2.checked=true then ancient:='0085' else  ancient:='0080'
          else if checkbox2.checked=true then ancient:='0005' else  ancient:='0000'
    end;
   if vs='CMT' then
     begin
       if tipo=true then u2:='F9'
         else u2:='00';
       u2serial:=u2+edit2.Text;
       if combobox11.ItemIndex=0 then ancient:='0000' ;
       if combobox11.ItemIndex=1 then ancient:=ancientnum5+'00' ;
       if combobox11.ItemIndex=2 then ancient:=ancientnum10+'00' ;
     end
       else u2serial:=edit2.Text;
   if (vs<>'MG') and (vs<>'MX')  and (vs<>'CMT') then ancient:='80'+inttostr(random(10))+inttostr(random(10)) ;


   if trackbar2.position=4 then
     begin
      izj:=0;
      if spos15='0' then spos15:='4' else spos15:='C';
     end
   else
     if trackbar2.position=5 then
       begin
        izj:=1;
        if spos15='0' then spos15:='4' else spos15:='C';
       end
     else
       if trackbar2.position=6 then
         begin
           izj:=2;
           if spos15='0' then spos15:='4' else spos15:='C';
         end
       else
         if trackbar2.position=7 then
           begin
             izj:=3;
             if spos15='0' then spos15:='4' else spos15:='C';
           end
         else
           izj:=trackbar2.Position;
   lvlaff:=trackbar1.Position;
   sopt:=inttohex(128*abs(strtoint(booltostr(checkbox1.checked)))+ixy+izj+8*lvlaff,2);
   sdur:=inttohex(strtoint(edit1.Text ),2);
   sex:=inttohex(zy1.Tag+zy2.Tag+zy3.Tag+zy4.Tag+zy5.Tag+zy6.Tag,2);
   if sex[1]='0' then sex:=sex[2];
   if length(sex)=2 then begin
      spos15:=getpos15(spos15,sex[1]);
      sex:=sex[2];
   end;
   insopt:=getitemoption(sopt,sdur,spos15+sex,ancient,u2serial,combobox4.Text);
   sthisitem:=smain+sopt+sdur+u2serial+spos15+sex+ancient;
   if intoinvgrid(strtoint(combobox5.Text )-1,strtoint(combobox6.Text )-1,insprop,insopt) then
   InvHexa[strtoint(combobox5.Text)-1,strtoint(combobox6.Text )-1]:=sthisitem;
   edit2.Text:=(valor);
end;
procedure tinvform.ItemaddEQP;  {Adiciona item no EQP}
var sthisitem,smain,sopt,sdur,spos15,ancient
,sex:string;
    ixy,izj:integer;
    insProp:itemproperty;
    insOpt:itemoption;
    lvlaff:byte;
    poseqp:byte;
    i,j:byte;
    valor:string;
    //unique2
    tipo:boolean;
    u2:string;
    u2serial:string;
    aff:string;
    //unique2 end
begin
   valor:=edit2.text;
   if checkbox4.Checked then
     begin
       itemupdate.commandtext:=('Update '+gameserverinfo+' set '+itemcount+'='+itemcount+'+1');
       itemupdate.Execute;
       muquery.sql.Clear;
       muquery.SQL.Add('select '+itemcount+' from '+gameserverinfo+'');
       muquery.Open;
       for i:=0 to muquery.RecordCount-1 do
        begin
          if vs<>'CMT' then
            valor:=inttohex(muquery.Fields[0].asinteger+1,8)
              else valor:=inttohex(muquery.Fields[0].asinteger+1,6);
          muquery.Next;
        end;
       muquery.Close;
     end
       else begin
         if (vs<>'CMT') then begin
           if (length(edit2.text)<8) then begin
             i:=8-length(edit2.text);
             for j := 1 to i do
               edit2.text:='0'+edit2.text;
           end;
         end
           else begin
             if (length(edit2.text)<6) then begin
               i:=6-length(edit2.text);
             for j := 1 to i do
               edit2.text:='0'+edit2.text;
             end;
           end;
       end;
   if trim(combobox4.Text)='' then begin
      application.MessageBox(pchar(Error7),pchar(ErrorCaption),mb_ok+mb_iconwarning);
      exit;
   end;
   insprop.Name:=combobox4.Text ;
   insprop.X:=strtoint(label10.Caption[pos('x',label10.Caption)-1]);
   insprop.y:=strtoint(label10.caption[pos('x',label10.Caption)+1]);
   itemquery.SQL.Clear;
   itemquery.SQL.Add('select id,unique,x,y,ExcOptionType,unique2 from muitem where name='''+combobox4.Text +'''');
   itemquery.Open ;
   smain:=itemquery.Fields[0].AsString ;
   spos15:=itemquery.Fields[1].AsString ;
    if itemquery.Fields[5].AsString='0' then tipo:=false else tipo:=true;
   itemquery.Close ;
   randomize;
  u2:='00';
   if checkbox3.Checked then ixy:=4 else ixy:=0;
   if (vs)='MG' then
    begin
      if checkbox2.checked=true then ancient:='09'+inttostr(random(10))+inttostr(random(10)) else  ancient:='80'+inttostr(random(10))+inttostr(random(10)) ;
    end;
   if ((vs)='MX') then
    begin
      if tipo=true then
        if checkbox2.checked=true then ancient:='0085' else  ancient:='0080'
          else if checkbox2.checked=true then ancient:='0005' else  ancient:='0000'
    end;
   if vs='CMT' then
     begin
       if tipo=true then u2:='F9'
         else u2:='00';
       u2serial:=u2+edit2.Text;
       if combobox11.ItemIndex=0 then ancient:='0000' ;
       if combobox11.ItemIndex=1 then ancient:=ancientnum5+'00' ;
       if combobox11.ItemIndex=2 then ancient:=ancientnum10+'00' ;
     end
       else u2serial:=edit2.Text;
   if (vs<>'MG') and (vs<>'MX') and (vs<>'CMT')  then ancient:='80'+inttostr(random(10))+inttostr(random(10)) ;
   if trackbar2.position=4 then
     begin
      izj:=0;
      if spos15='0' then spos15:='4' else spos15:='C';
     end
   else
     if trackbar2.position=5 then
       begin
        izj:=1;
        if spos15='0' then spos15:='4' else spos15:='C';
       end
     else
       if trackbar2.position=6 then
         begin
           izj:=2;
           if spos15='0' then spos15:='4' else spos15:='C';
         end
       else
         if trackbar2.position=7 then
           begin
             izj:=3;
             if spos15='0' then spos15:='4' else spos15:='C';
           end
         else
           izj:=trackbar2.Position;
   lvlaff:=trackbar1.Position;
   sopt:=inttohex(128*abs(strtoint(booltostr(checkbox1.checked)))+ixy+izj+8*lvlaff,2);
   sdur:=inttohex(strtoint(edit1.Text ),2);
   sex:=inttohex(zy1.Tag+zy2.Tag+zy3.Tag+zy4.Tag+zy5.Tag+zy6.Tag,2);
   if sex[1]='0' then sex:=sex[2];
   if length(sex)=2 then begin
      spos15:=getpos15(spos15,sex[1]);
      sex:=sex[2];
   end;
   if xhint=WeaponLeft then poseqp:=0;
   if xhint=WeaponRight then poseqp:=1;
   if xhint=Helm then poseqp:=2;
   if xhint=Armor then poseqp:=3;
   if xhint=Pants then poseqp:=4;
   if xhint=Gloves then poseqp:=5;
   if xhint=Boots then poseqp:=6;
   if xhint=Wings then poseqp:=7;
   if xhint=Pet then poseqp:=8;
   if xhint=Pendant then poseqp:=9;
   if xhint=RingLeft then poseqp:=10;
   if xhint=RingRight then poseqp:=11;
   insopt:=getitemoption(sopt,sdur,spos15+sex,ancient,u2serial,combobox4.Text);
   sthisitem:=smain+sopt+sdur+u2serial+spos15+sex+ancient;
   if intoeqpgrid(poseqp,insprop,insopt) then
   eqphexa[poseqp]:=sthisitem;
   edit2.Text:=(valor);
end;
procedure tinvform.ItemAddPS;   {Adiciona item no INV}
var sthisitem,smain,sopt,sdur,spos15,ancient
,sex:string;
    ixy,izj:integer;
    insProp:itemproperty;
    insOpt:itemoption;
    lvlaff:byte;
    i,j:byte;
    valor:string;
    //unique2
    tipo:boolean;
    u2:string;
    u2serial:string;
    aff:string;
    //unique2 end
begin
   valor:=edit2.text;
   if checkbox4.Checked then
     begin
       itemupdate.commandtext:=('Update '+gameserverinfo+' set '+itemcount+'='+itemcount+'+1');
       itemupdate.Execute;
       muquery.sql.Clear;
       muquery.SQL.Add('select '+itemcount+' from '+gameserverinfo+'');
       muquery.Open;
       for i:=0 to muquery.RecordCount-1 do
        begin
          if vs<>'CMT' then
            valor:=inttohex(muquery.Fields[0].asinteger+1,8)
              else valor:=inttohex(muquery.Fields[0].asinteger+1,6);
          muquery.Next;
        end;
       muquery.Close;

     end
       else begin
         if (vs<>'CMT') then begin
           if (length(edit2.text)<8) then begin
             i:=8-length(edit2.text);
             for j := 1 to i do
               edit2.text:='0'+edit2.text;
           end;
         end
           else begin
             if (length(edit2.text)<6) then begin
               i:=6-length(edit2.text);
             for j := 1 to i do
               edit2.text:='0'+edit2.text;
             end;
           end;
       end;
   if trim(combobox4.Text)='' then begin
      application.MessageBox(pchar(error7),pchar(ErrorCaption),mb_ok+mb_iconwarning);
      exit;
   end;
   insprop.Name:=combobox4.Text ;
   insprop.X:=strtoint(label10.Caption[pos('x',label10.Caption)-1]);
   insprop.y:=strtoint(label10.caption[pos('x',label10.Caption)+1]);
   itemquery.SQL.Clear;
   itemquery.SQL.Add('select id,unique,x,y,ExcOptionType,unique2 from muitem where name='''+combobox4.Text +'''');
   itemquery.Open ;
   smain:=itemquery.Fields[0].AsString ;
   spos15:=itemquery.Fields[1].AsString ;
   if itemquery.Fields[5].AsString='0' then tipo:=false else tipo:=true;
   itemquery.Close ;
   randomize;
   u2:='00';
   if checkbox3.Checked then ixy:=4 else ixy:=0;
   if (vs)='MG' then
    begin
      if checkbox2.checked=true then ancient:='09'+inttostr(random(10))+inttostr(random(10)) else  ancient:='80'+inttostr(random(10))+inttostr(random(10)) ;
    end;
   if ((vs)='MX') then
    begin
      if tipo=true then
        if checkbox2.checked=true then ancient:='0085' else  ancient:='0080'
          else if checkbox2.checked=true then ancient:='0005' else  ancient:='0000'
    end;
   if vs='CMT' then
     begin
       if tipo=true then u2:='F9'
         else u2:='00';
       u2serial:=u2+edit2.Text;
       if combobox11.ItemIndex=0 then ancient:='0000' ;
       if combobox11.ItemIndex=1 then ancient:=ancientnum5+'00' ;
       if combobox11.ItemIndex=2 then ancient:=ancientnum10+'00' ;
     end
       else u2serial:=edit2.Text;
   if (vs<>'MG') and (vs<>'MX') and (vs<>'CMT')  then ancient:='80'+inttostr(random(10))+inttostr(random(10)) ;



   if trackbar2.position=4 then
     begin
      izj:=0;
      if spos15='0' then spos15:='4' else spos15:='C';
     end
   else
     if trackbar2.position=5 then
       begin
        izj:=1;
        if spos15='0' then spos15:='4' else spos15:='C';
       end
     else
       if trackbar2.position=6 then
         begin
           izj:=2;
           if spos15='0' then spos15:='4' else spos15:='C';
         end
       else
         if trackbar2.position=7 then
           begin
             izj:=3;
             if spos15='0' then spos15:='4' else spos15:='C';
           end
         else
           izj:=trackbar2.Position;
   lvlaff:=trackbar1.Position;
   sopt:=inttohex(128*abs(strtoint(booltostr(checkbox1.checked)))+ixy+izj+8*lvlaff,2);
   sdur:=inttohex(strtoint(edit1.Text ),2);
   sex:=inttohex(zy1.Tag+zy2.Tag+zy3.Tag+zy4.Tag+zy5.Tag+zy6.Tag,2);
   if sex[1]='0' then sex:=sex[2];
   if length(sex)=2 then begin
      spos15:=getpos15(spos15,sex[1]);
      sex:=sex[2];
   end;
   insopt:=getitemoption(sopt,sdur,spos15+sex,ancient,u2serial,combobox4.Text);
   sthisitem:=smain+sopt+sdur+u2serial+spos15+sex+ancient;
   if intopsgrid(strtoint(combobox9.Text )-1,strtoint(combobox10.Text )-1,insprop,insopt) then
   PSHexa[strtoint(combobox9.Text)-1,strtoint(combobox10.Text )-1]:=sthisitem;
   edit2.Text:=(valor);
end;
end.
