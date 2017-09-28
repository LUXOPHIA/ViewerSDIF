unit Main;

interface //#################################################################### ■

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Menus, FMX.Layouts, FMX.TreeView,
  LUX.Audio.SDIF, LUX.Audio.SDIF.Frames, LUX.Audio.SDIF.Matrixs;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    TreeView1: TTreeView;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    { private 宣言 }
  public
    { public 宣言 }
    _FileSDIF :TFileSDIF;
    ///// メソッド
    procedure ShowSDIF;
  end;

var
  Form1: TForm1;

implementation //############################################################### ■

uses System.Math;

{$R *.fmx}

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

procedure TForm1.ShowSDIF;
var
   I, J, Y, X :Integer;
   F :TFrameSDIF;
   M :TMatrixSDIF;
   TF, TM, TV :TTreeViewItem;
begin
     TreeView1.Clear;

     for I := 0 to _FileSDIF.ChildsN-1 do
     begin
          F := _FileSDIF.Childs[ I ];

          TF := TTreeViewItem.Create( TreeView1 );
          with TF do
          begin
               Parent         := TreeView1;
               StyledSettings := [];
               Font.Family    := 'MS Gothic';
               Text           :=                 F.Signature
                               + '　MatrixsN:' + F.ChildsN  .ToString
                               + '　StreamID:' + F.StreamID .ToString
                               + '　Time:'     + F.Time     .ToString;
               Expand;
          end;

          for J := 0 to F.ChildsN-1 do
          begin
               M := F.Childs[ J ];

               TM := TTreeViewItem.Create( TF );
               with TM do
               begin
                    Parent         := TF;
                    StyledSettings := [];
                    Font.Family    := 'MS Gothic';
                    Text           :=                            M.Signature
                                    + '　DayaType:$' + IntToHex( M.DataType , 4 )
                                    + '　ValuesN:'   +           M.RowCount .ToString
                                               + 'x' +           M.ColCount .ToString;
                    Expand;
               end;

               for Y := 0 to M.RowCount-1 do
               begin
                    TV := TTreeViewItem.Create( TM );
                    with TV do
                    begin
                         Parent         := TM;
                         StyledSettings := [];
                         Font.Family    := 'MS Gothic';
                         Text           := M.Texts[ Y, 0 ];
                    end;

                    for X := 1 to M.ColCount-1
                    do TV.Text := TV.Text + ', ' + M.Texts[ Y, X ];
               end;
          end;
     end;
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

procedure TForm1.FormCreate(Sender: TObject);
begin
     _FileSDIF := TFileSDIF.Create;

     _FileSDIF.LoadFromFileBin( '..\..\_DATA\170918-test1.trt' );

     ShowSDIF;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
     _FileSDIF.Free;
end;


////////////////////////////////////////////////////////////////////////////////

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
     if OpenDialog1.Execute then
     begin
          _FileSDIF.LoadFromFileBin( OpenDialog1.Filename );

          ShowSDIF;
     end;
end;

end. //######################################################################### ■
