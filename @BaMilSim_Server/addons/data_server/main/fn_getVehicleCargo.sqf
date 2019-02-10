

private ["_vehicle","_array","_ret"];

_vehicle = param [0,Objnull,[Objnull]];
if(isNull _vehicle) exitWith {};

_array = [];

_array pushback getMagazineCargo _vehicle;
_array pushback getBackpackCargo _vehicle;
_array pushback getWeaponCargo _vehicle;
_array pushback getItemCargo _vehicle;

_ret = [_array] call BaMilSim_fnc_mresarray;

_ret