program ViewerSDIF;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {Form1},
  LUX in '_LIBRARY\LUXOPHIA\LUX\LUX.pas',
  LUX.Graph in '_LIBRARY\LUXOPHIA\LUX.Graph\LUX.Graph.pas',
  LUX.Graph.Tree in '_LIBRARY\LUXOPHIA\LUX.Graph\LUX.Graph.Tree.pas',
  LUX.Audio.SDIF in '_LIBRARY\LUXOPHIA\LUX.Audio.SDIF\LUX.Audio.SDIF.pas',
  LUX.Audio.SDIF.Frames in '_LIBRARY\LUXOPHIA\LUX.Audio.SDIF\LUX.Audio.SDIF.Frames.pas',
  LUX.Audio.SDIF.Matrixs in '_LIBRARY\LUXOPHIA\LUX.Audio.SDIF\LUX.Audio.SDIF.Matrixs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
