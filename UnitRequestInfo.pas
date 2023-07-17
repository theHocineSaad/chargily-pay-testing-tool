unit UnitRequestInfo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Effects,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TrequestInfo = class(TForm)
    bg: TRectangle;
    doneBtn: TRoundRect;
    Label1: TLabel;
    footer: TLayout;
    title: TLabel;
    bottom: TLayout;
    top: TLayout;
    GridPanelLayout1: TGridPanelLayout;
    webhookUrl: TLabel;
    Label2: TLabel;
    statusCode: TLabel;
    requestContentMemo: TMemo;
    responseContentMemo: TMemo;
    procedure doneBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  requestInfo: TrequestInfo;

implementation

{$R *.fmx}

uses UnitHome;

procedure TrequestInfo.doneBtnClick(Sender: TObject);
begin
  requestInfo.Close;
end;

procedure TrequestInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  home.overlay.Visible := false;
end;

procedure TrequestInfo.FormShow(Sender: TObject);
begin
  webhookUrl.Text := home.webhookUrl.Text;
end;

end.
