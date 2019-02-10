

private ["_db_id","_query","_thread"];
_db_id = param [0,-1,[1337]];




diag_log format["BaMilSim :: Deleting Vehicle from DB %1",_db_id];
if(_db_id isEqualTo -1) exitWith {};


_query = format["UPDATE persistent_vehicles SET alive='0' WHERE id = '%1'",_db_id];

_thread = [_query,1] call BaMilSim_fnc_db_sync;

