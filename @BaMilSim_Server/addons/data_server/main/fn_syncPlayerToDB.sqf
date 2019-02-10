

private ["_side","_values","_query"];
_side = param[0,sideUnknown,[west]];
_uid = param[1,"",[""]];
_values = param[2,[],[[]]];

if(_uid isEqualTo "" || _side isEqualTo sideUnknown || _values isEqualTo []) exitWith {diag_log "Valor :: Error @ complete sync"};
_query = "";


_query = format["Update players set gear = '%1', stats = '%2', alive = '%3', position = '%4', playtime = '%5' where pid = '%9'",_values select 0,_values select 1,_values select 2,_values select 3,_values select 4,_uid];


if!(_query isEqualTo "") then {
	[_query,1] call BaMilSim_fnc_db_sync;
};