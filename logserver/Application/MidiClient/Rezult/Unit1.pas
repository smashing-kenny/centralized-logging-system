unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Menus, ImgList, U_Thread;

type
  TChildForm = class(TForm)
    ListView1: TListView;
    PopupMenu1: TPopupMenu;
    Clear1: TMenuItem;
    Clear2: TMenuItem;
    N1: TMenuItem;
    ListView2: TListView;
    ImageList1: TImageList;
    ImageList2: TImageList;
    Splitter1: TSplitter;
    procedure Clear2Click(Sender: TObject);
  private
    LogSystemIP   : string;
    LogSystemPort : string;
  public
    { Public declarations }
    Procedure SetParams(Ip:String;Port:string);
  end;

var
  ChildForm: TChildForm;
implementation

{$R *.dfm}

procedure TChildForm.Clear2Click(Sender: TObject);
begin
  ListView1.Clear; 
end;

Procedure TChildForm.SetParams(Ip:String;Port:string);
begin
  TTCPEchoDaemon.Create(ip,port); 
end;

end.
