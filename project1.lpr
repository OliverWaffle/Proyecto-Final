program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { Las units va abajo de esto };

{ Constantes principales del sistema de scoring }
const
N = 20;
rutaInfracciones: 'c:\infracciones.dat';
rutaConductores: 'c:\conductores.dat';



type
  t_conductores = RECORD
    dni:integer[7];
    apynom:string;
    nacimiento:string[8];
    telefono:integer[20];
    email:string;
    scoring:word;
    enabled:boolean;
    fecha_habilitacion:string[10];
    cant_reincidencias:0..N;
    end;

  t_infracciones = RECORD
    dni: integer[7];
    fecha_infraccion:string[10];
    tipo_infraccion:string;
    puntos_descontar:word;
    end;

  t_archConductores = FILE OF t_conductores;
  t_archInfractores = FILE OF t_infracciones


var

  conductores: t_archConductores;
  infracciones: t_archInfractores;

begin


end.

