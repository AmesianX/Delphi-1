unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, // Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Unit2;

procedure TForm1.FormCreate(Sender: TObject);
var
 B: TBitmap;  // <-- Winapi.Windows.TBitmap : record
begin
// H2443 La fonction inline 'InlineBitmap' n'a pas �t� �tendue car l'unit� 'Vcl.Graphics' n'est pas sp�cifi�e dans la liste USES
  InlineBitmap.Free;
end;

end.
