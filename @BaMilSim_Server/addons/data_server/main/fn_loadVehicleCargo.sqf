
private ["_vehicle","_cargo","_arr","_magazines","_magazines_count","_d","_backpack","_backpack_count","_weapons","_weapons_count","_items","_items_count"];
_vehicle = param [0,Objnull,[Objnull]];
_cargo = param[1,"""[]""",["",[]]];
if(isNull _vehicle) exitWith {false};

[_vehicle] call BaMilSim_fnc_clear_vehicle;

_arr = [_cargo] call BaMilSim_fnc_mtoArray;
if(typename _arr isEqualTo "STRING") then {_arr = call compile _arr;};

if(_arr isEqualTo []) exitWith {true};

_magazines = (_arr select 0) select 0;
_magazines_count = (_arr select 0) select 1;

for "_d" from 0 to count(_magazines_count) - 1 do {
	_vehicle addMagazineCargoGlobal [_magazines select _d, _magazines_count select _d];
};

_backpack = (_arr select 1) select 0;
_backpack_count = (_arr select 1) select 1;

for "_d" from 0 to count(_backpack_count) - 1 do {
	_vehicle addBackpackCargoGlobal [_backpack select _d, _backpack_count select _d];
};

_weapons = (_arr select 2) select 0;
_weapons_count = (_arr select 2) select 1;

for "_d" from 0 to count(_weapons_count) - 1 do {
	_vehicle addWeaponCargoGlobal [_weapons select _d, _weapons_count select _d];
};

_items = (_arr select 3) select 0;
_items_count = (_arr select 3) select 1;

for "_d" from 0 to count(_items_count) - 1 do {
	_vehicle addItemCargoGlobal [_items select _d, _items_count select _d];
};


true