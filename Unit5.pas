unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls,
  System.ImageList, FMX.ImgList;

type
  TfrmMain = class(TForm)
    layListView: TLayout;
    layButton: TLayout;
    livTest: TListView;
    cb3D: TCheckBox;
    StyleBook1: TStyleBook;
    chbEditMode: TCheckBox;
    ImageControl1: TImageControl;
    imlTransportTypeColor: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure cb3DChange(Sender: TObject);
    procedure chbEditModeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.cb3DChange(Sender: TObject);
begin
  if cb3D.IsChecked then
    livTest.StyleLookup := 'livTestStyle3D'
  else
    livTest.StyleLookup := '';
end;

procedure TfrmMain.chbEditModeClick(Sender: TObject);
begin
  if chbEditMode.IsChecked then
    livTest.EditMode := False
  else
    livTest.EditMode := True;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  i: Integer;
  AItem: TListViewItem;
  imgSize: TSizeF;
begin
  imgSize.Create(40, 40); // Velikost slike tipa transporta
  for i := 0 to 20 do
  begin
    AItem := livTest.Items.Add;
    if i mod 5 = 0 then
    begin
      AItem.Text := 'Header ' + FloatToStr(i / 5);
      AItem.Purpose := TListItemPurpose.Header;
    end else
    begin
      AItem.Data['Text1'] := ' Item' + IntToStr(i);
      AItem.Data['Image2'] := imlTransportTypeColor.Bitmap(imgSize, 5);  // prikaži sliko tipa transporta
    end;

  end;
end;

end.
