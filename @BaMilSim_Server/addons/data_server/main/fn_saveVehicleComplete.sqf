

private ["_vehicle","_DB_ID","_query"];
_vehicle = param[0,objNull,[objNull]];
if (isnull _vehicle || !alive _vehicle) exitWith {};
_DB_ID = _vehicle getvariable["DBID",-1];
if (_DB_ID isequalto -1) exitWith {diag_log "BaMilSim :: Var DB ID of one Vehicle is nil"};


_query = format["Update persistent_vehicles set pos = '%1', inventory = '%2', fuel = '%3', damage = '%4' where id = '%5'",([getposatl _vehicle,getdir _vehicle,vectorUp _vehicle]),([_vehicle] call BaMilSim_fnc_getVehicleCargo),fuel _vehicle,([_vehicle] call BaMilSim_fnc_getVehicleDamage),_DB_ID];

[_query,1] call BaMilSim_fnc_db_sync;







