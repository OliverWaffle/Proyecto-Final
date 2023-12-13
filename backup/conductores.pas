unit Conductores;

interface

const
MAX_POINTS = 20;
rutaConductores = 'c:\conductores.dat';

type
  T_Conductores = Record
    dni:integer;
    apynom:string[100];
    nacimiento:string[8];
    telefono:integer;
    email:string[100];
    scoring:word;
    enabled:boolean;
    fecha_habilitacion:string[10];
    cant_reincidencias:1..MAX_POINTS;
  end;

  T_ArchConductores = File Of T_Conductores;

Implementation

Procedure CrarArchConductores(var ARCH:T_ArchConductores);
  begin
    Assign(ARCH,rutaConductores);
    Rewrite(ARCH);
  end;

Procedure AbrirArchConductores(var ARCH:T_ArchConductores);
  begin
    Assign(ARCH,rutaConductores);
    Reset(ARCH);
  end;

Procedure CerrarArchConductores(var ARCH:T_ArchConductores);
  begin
    Close(ARCH);
  end;
end.

