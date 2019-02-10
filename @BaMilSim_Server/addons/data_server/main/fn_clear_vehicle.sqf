private["_vehicle"];
_vehicle = param [0,Objnull,[Objnull]];
if(isNull _vehicle) exitWith {};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargo _vehicle;