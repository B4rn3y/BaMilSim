

private ["_vehicle","_array"];
_vehicle = param [0,Objnull,[Objnull]];
if(isNull _vehicle) exitWith {};


_array = [getposatl _vehicle,getdir _vehicle,fuel _vehicle];

_array