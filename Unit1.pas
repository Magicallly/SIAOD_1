unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TBrunch =^TTree;
  TTree = record
    NumberText: integer;
    LeftButton: string[70];
    RightButton: string[70];
    Left, Right: TBrunch;
  end;
  TfMain = class(TForm)
    btnLeft: TButton;
    btnRight: TButton;
    imgMain: TImage;
    mmMain: TMemo;
    procedure FormShow(Sender: TObject);
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tree: TTree;
  Head, x:TBrunch;
  Story, Ending: textfile;
  fMain: TfMain;

implementation

{$R *.dfm}

procedure MakeFillTree;
begin
  New(x);
  head:=x;
  x^.NumberText:=1;
  x^.LeftButton:='�����';
  x^.RightButton:='�� ����';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=2;
  x^.LeftButton:='����� ������';
  x^.RightButton:='����� �������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=3;
  x^.LeftButton:='���������';
  x^.RightButton:='"� �� �� ��������� ������� ����� �������������, ���������� ���."';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=4;
  x^.LeftButton:='��������� ��������';
  x^.RightButton:='����� ������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=5;
  x^.LeftButton:='��������� � ����������� �������';
  x^.RightButton:='�������� ������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=6;
  x^.LeftButton:='���������� � �������';
  x^.RightButton:='������� �������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=7;
  x^.LeftButton:='���������� ���� � ���������';
  x^.RightButton:='������� �������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=8;
  x^.LeftButton:='End1.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Left.Left.Left.Right);
  x:=head^.Left.Left.Left.Left.Left.Left.Right;
  x^.NumberText:=9;
  x^.LeftButton:='End2.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Left.Left.Right);
  x:=head^.Left.Left.Left.Left.Left.Right;
  x^.NumberText:=9;
  x^.LeftButton:='End2.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Left.Right);
  x:=head^.Left.Left.Left.Left.Right;
  x^.NumberText:=10;
  x^.LeftButton:='End1.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Right);
  x:=head^.Left.Left.Left.Right;
  x^.NumberText:=11;
  x^.LeftButton:='"���, ������ ���������."';
  x^.RightButton:='��������� �������� � ������������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=12;
  x^.LeftButton:='������';
  x^.RightButton:='�������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=13;
  x^.LeftButton:='�������';
  x^.RightButton:='�� ���������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=14;
  x^.LeftButton:='���������� ����������';
  x^.RightButton:='����� �������������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=15;
  x^.LeftButton:='End3.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Right.Left.Left.Left.Right);
  x:=head^.Left.Left.Left.Right.Left.Left.Left.Right;
  x^.NumberText:=16;
  x^.LeftButton:='��������� ���� � �����';
  x^.RightButton:='������������';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=17;
  x^.LeftButton:='������� �������� �� ������';
  x^.RightButton:='������ �� �����';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=18;
  x^.LeftButton:='End3.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Right.Left.Left.Left.Right.Left.Right);
  x:=head^.Left.Left.Left.Right.Left.Left.Left.Right.Left.Right;
  x^.NumberText:=19;
  x^.LeftButton:='"���"';
  x^.RightButton:='"� ���� ?"';
  x^.Left:=nil;
  x^.Right:=nil;
  New(x^.Left);
  x:=x^.Left;
  x^.NumberText:=20;
  x^.LeftButton:='End4.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Right.Left.Left.Left.Right.Left.Right.Right);
  x:=head^.Left.Left.Left.Right.Left.Left.Left.Right.Left.Right.Right;
  x^.NumberText:=21;
  x^.LeftButton:='End4.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Right.Left.Left.Left.Right.Right);
  x:=head^.Left.Left.Left.Right.Left.Left.Left.Right.Right;
  x^.NumberText:=22;
  x^.LeftButton:='End3.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Right.Left.Left.Right);
  x:=head^.Left.Left.Left.Right.Left.Left.Right;
  x^.NumberText:=23;
  x^.LeftButton:='End3.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Right.Left.Right);
  x:=head^.Left.Left.Left.Right.Left.Right;
  x^.NumberText:=24;
  x^.LeftButton:='End5.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Left.Right.Right);
  x:=head^.Left.Left.Left.Right.Right;
  x^.NumberText:=25;
  x^.LeftButton:='End1.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Left.Right);
  x:=head^.Left.Left.Right;
  x^.NumberText:=26;
  x^.LeftButton:='End5.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Left.Right);
  x:=head^.Left.Right;
  x^.NumberText:=27;
  x^.LeftButton:='End6.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;
  New(head^.Right);
  x:=head^.Right;
  x^.NumberText:=28;
  x^.LeftButton:='End7.txt';
  x^.RightButton:='';
  x^.Left:=nil;
  x^.Right:=nil;


end;


procedure CleanTree(var brunch: TBrunch);
begin
  if brunch^.Right <> nil then
    CleanTree(brunch^.Right)
  else
    if brunch^.Left <> nil then
      CleanTree(brunch^.Left)
    else
      Dispose(brunch);
end;


procedure TfMain.FormShow(Sender: TObject);
var
  str:string;
begin
  MakeFillTree;
  AssignFile(Story, 'Story.txt');
  Reset(Story);
  x:=head;
  readln(Story, str);
  mmMain.Text:=str;
  imgMain.Picture.LoadFromFile('Pic1.bmp');
  btnLeft.Caption:=x^.LeftButton;
  btnRight.Caption:=x^.RightButton;
  CloseFile(Story);
end;

procedure TfMain.btnLeftClick(Sender: TObject);
var
  i:integer;
  str: string;
begin
  x:=x^.Left;
  if length(x^.RightButton)=0then
  begin
    Reset(Story);
    i:=1;
    while i<x^.NumberText do
    begin
      readln(Story);
      inc(i);
    end;
    imgMain.Picture.LoadFromFile('Pic'+IntToStr(i)+'.bmp');
    Readln(Story, str);
    mmMain.Text:= str;
    AssignFile(Ending, x^.LeftButton);
    Reset(Ending);
    readln(Ending, str);
    mmMain.Text:=mmMain.Text+ str;
    btnLeft.Visible:=false;
    btnRight.Visible:=false;
    CloseFile(Ending);
  end
  else
  begin
    Reset(Story);
    i:=1;
    while i<x^.NumberText do
    begin
      readln(Story);
      inc(i);
    end;
    imgMain.Picture.LoadFromFile('Pic'+IntToStr(i)+'.bmp');
    readln(Story, str);
    mmMain.Text:=str;
    btnLeft.Caption:=x^.LeftButton;
    btnRight.Caption:=x^.RightButton;
    CloseFile(Story);
  end;
end;

procedure TfMain.btnRightClick(Sender: TObject);
var
  i:integer;
  str: string;
begin
  x:=x^.Right;
  if length(x^.RightButton)=0then
  begin
    Reset(Story);
    i:=1;
    while i<x^.NumberText do
    begin
      readln(Story);
      inc(i);
    end;
    imgMain.Picture.LoadFromFile('Pic'+IntToStr(i)+'.bmp');
    Readln(Story, str);
    mmMain.Text:= str;
    AssignFile(Ending, x^.LeftButton);
    Reset(Ending);
    readln(Ending, str);
    mmMain.Text:=mmMain.Text+ str;
    btnLeft.Visible:=false;
    btnRight.Visible:=false;
    CloseFile(Ending);
  end
  else
  begin
    Reset(Story);
    i:=1;
    while i<x^.NumberText do
    begin
      readln(Story);
      inc(i);
    end;
    imgMain.Picture.LoadFromFile('Pic'+IntToStr(i)+'.bmp');
    readln(Story, str);
    mmMain.Text:=str;
    btnLeft.Caption:=x^.LeftButton;
    btnRight.Caption:=x^.RightButton;
    CloseFile(Story);
  end;

end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CleanTree(Head);
end;

end.
