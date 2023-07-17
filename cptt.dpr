program cptt;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitHome in 'UnitHome.pas' {home},
  UnitRequestInfo in 'UnitRequestInfo.pas' {requestInfo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Thome, home);
  Application.CreateForm(TrequestInfo, requestInfo);
  Application.Run;
end.
