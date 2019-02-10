

private ["_query","_res","_vehicle","_pos","_dir","_vector","_classname","_type","_alive","_spawnpos","_spawndamage","_inventory","_fuel","_damage","_shop"];

_query = "Select id, pos, classname, alive, spawnpos, spawndamage, inventory, fuel, damage from persistent_vehicles";

_res = [_query,2,true] call BaMilSim_fnc_db_sync;

//if(count _res isEqualTo 0) exitWith {diag_log "Valor :: Init Vehicles - No Vehicles"};
diag_log str _res;
diag_log typename _res;
_vehicle = objNull;
{
	//diag_log str _x;
	//diag_log typename _x;
	_id = _x select 0;
	//{diag_log format["%1/%2",typename _x,_x];} foreach _x;
	_pos = (call compile (_x select 1)) select 0;
	_dir =  (call compile (_x select 1)) select 1;
	_vector = (call compile (_x select 1)) select 2;
	_classname = _x select 2;
	_alive = _x select 3;
	_spawnpos = _x select 4;
	_spawndamage = _x select 5;
	_inventory = _x select 6;
	_fuel = _x select 7;
	_damage = _x select 8;
	_shop = _x select 9;
	_classname = call compile [_classname,true];


		//[_classname,_pos,_dir,_fuel,_damage,_inventory,_alive,_id,(_spawnpos select 0),(_spawnpos select 1),_spawndamage] spawn valor_fnc_persistent_vehicle_monitoring;

		/*
		if(_alive isEqualTo 0) then {
			waitUntil {!((nearestobjects[(_spawnpos select 0),[_classname],100]) isEqualTo [])};
			_query = format["UPDATE persistent_vehicles SET alive='1', fuel = '0' WHERE id = '%1'",_id];
		} else {
			waitUntil {!((nearestobjects[_pos,[_classname],100]) isEqualTo [])};
		};*/
		_vehicle = createVehicle[_classname,[0,0,0],[],0,"CAN_COLLIDE"];
		waitUntil {!isnull _vehicle};
		_vehicle allowDamage false;
		if(_alive isequalto 0) then {
			_vehicle setfuel 0;
			_vehicle setdir (_spawnpos select 1);
			_vehicle setposatl (_spawnpos select 0);
			_vehicle setVectorUp (_spawnpos select 2);
			[_vehicle] call BaMilSim_fnc_clear_vehicle;
			[_vehicle,_spawndamage] spawn BaMilSim_fnc_setvehicleDamage;
			[_vehicle,random [30,150,360]] spawn {sleep (_this select 1);[_this select 0] call BaMilSim_fnc_saveVehicleComplete;};
		} else {
			_vehicle setfuel _fuel;
			_vehicle setdir _dir;
			_vehicle setposatl _pos;
			_vehicle setVectorUp _vector;

			[_vehicle,_inventory] call BaMilSim_fnc_loadVehicleCargo;
			[_vehicle,_damage] spawn BaMilSim_fnc_setvehicleDamage;
		};
		_vehicle setvariable ["DBID",_id,true];
		_vehicle disableTIEquipment true;
		_vehicle disableNVGEquipment true;
		BaMilSim_vehicles_monitoring pushBackUnique [_vehicle,_id];


		[_vehicle,random [12,18,25]] spawn {sleep (_this select 1);(_this select 0) allowDamage true;};











		diag_log str [_classname,_pos,_dir,_fuel,_damage,_inventory,_alive,_id,(_spawnpos select 0),(_spawnpos select 1),_spawndamage];

		_query = format["UPDATE persistent_vehicles SET alive='1' WHERE id = '%1'",_id];

		[_query,1] call BaMilSim_fnc_db_sync;
} foreach _res;


[] spawn BaMilSim_fnc_persistent_vehicle_monitoring;









// _query = format["Insert into persistent_vehicles (pos,classname,spawnpos,inventory,fuel,damage,Spawndamage) VALUES ('%1','%2','%3','%4','%5','%6','%7')",[[10517.9,2287.32,10.7712],271.889],"CUP_B_UH1D_GER_KSK",[[[10517.9,2287.32,10.7712],271.889]],"""[[[],[]],[[],[]],[[],[]],[[],[]]]""",0,"""[0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0,0,0,0,0,0,0,0]""","""[0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0,0,0,0,0,0,0,0]"""];