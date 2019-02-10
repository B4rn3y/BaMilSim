



private ["_vehicle","_damage","_parts"];
_vehicle = param [0,Objnull,[Objnull]];
_damage = param[1,"""[]""",["",[]]];
if(isNull _vehicle) exitWith {};

waitUntil {sleep 1; if(isnull _vehicle) exitWith {true}; isDamageAllowed _vehicle};
if(isNull _vehicle) exitWith {};
_damage = [_damage] call BaMilSim_fnc_mtoarray;
if(_damage isEqualTo []) exitWith {};

_parts = getAllHitPointsDamage _vehicle;
for "_i" from 0 to ((count _damage) - 1) do {
    _vehicle setHitPointDamage [format ["%1",((_parts select 0) select _i)],(_damage select _i)];
};
