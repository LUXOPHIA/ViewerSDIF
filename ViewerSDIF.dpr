program ViewerSDIF;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {Form1},
  LUX in '_LIBRARY\LUXOPHIA\LUX\LUX.pas',
  LUX.Audio.SDIF in '_LIBRARY\LUXOPHIA\LUX.Audio.SDIF\LUX.Audio.SDIF.pas',
  LUX.Audio.SDIF.Frames in '_LIBRARY\LUXOPHIA\LUX.Audio.SDIF\LUX.Audio.SDIF.Frames.pas',
  LUX.Audio.SDIF.Frames.ASO1 in '_LIBRARY\LUXOPHIA\LUX.Audio.SDIF\LUX.Audio.SDIF.Frames.ASO1.pas',
  LUX.Audio.SDIF.Matrixs in '_LIBRARY\LUXOPHIA\LUX.Audio.SDIF\LUX.Audio.SDIF.Matrixs.pas',
  LUX.Lattice.T3 in '_LIBRARY\LUXOPHIA\LUX\LUX.Lattice.T3.pas',
  LUX.M2 in '_LIBRARY\LUXOPHIA\LUX\LUX.M2.pas',
  LUX.M3 in '_LIBRARY\LUXOPHIA\LUX\LUX.M3.pas',
  LUX.M4 in '_LIBRARY\LUXOPHIA\LUX\LUX.M4.pas',
  LUX.Tree in '_LIBRARY\LUXOPHIA\LUX\LUX.Tree.pas',
  LUX.D1 in '_LIBRARY\LUXOPHIA\LUX\LUX.D1.pas',
  LUX.D2.M4 in '_LIBRARY\LUXOPHIA\LUX\LUX.D2.M4.pas',
  LUX.D2 in '_LIBRARY\LUXOPHIA\LUX\LUX.D2.pas',
  LUX.D2.V4 in '_LIBRARY\LUXOPHIA\LUX\LUX.D2.V4.pas',
  LUX.D3.M4 in '_LIBRARY\LUXOPHIA\LUX\LUX.D3.M4.pas',
  LUX.D3 in '_LIBRARY\LUXOPHIA\LUX\LUX.D3.pas',
  LUX.D3.V4 in '_LIBRARY\LUXOPHIA\LUX\LUX.D3.V4.pas',
  LUX.D4.M4 in '_LIBRARY\LUXOPHIA\LUX\LUX.D4.M4.pas',
  LUX.D4 in '_LIBRARY\LUXOPHIA\LUX\LUX.D4.pas',
  LUX.D4.V4 in '_LIBRARY\LUXOPHIA\LUX\LUX.D4.V4.pas',
  LUX.D5 in '_LIBRARY\LUXOPHIA\LUX\LUX.D5.pas',
  LUX.DN in '_LIBRARY\LUXOPHIA\LUX\LUX.DN.pas',
  LUX.Lattice.T1 in '_LIBRARY\LUXOPHIA\LUX\LUX.Lattice.T1.pas',
  LUX.Lattice.T2 in '_LIBRARY\LUXOPHIA\LUX\LUX.Lattice.T2.pas',
  LUX.FMX.Forms in '_LIBRARY\LUXOPHIA\LUX\FMX\LUX.FMX.Forms.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
