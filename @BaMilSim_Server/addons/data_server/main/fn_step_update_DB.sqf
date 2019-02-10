

private ["_mode","_side","_query","_gear","_cash","_bankacc","_money","_stats","_alive","_pos","_arrested","_playtime"];
_mode = param[0,-1,[1]];
_uid = param[1,"",[""]];
_side = param[2,sideUnknown,[west]];

if(_mode isEqualTo -1 || _uid isEqualTo "" || _side isEqualTo sideUnknown) exitWith {diag_log format["BaMilSim :: Error @ step_update %1 - PID: %2",_mode,_uid]};

_query = "";
switch (_mode) do
{
	case 0:
	{
		_gear = param[3,"",["",[]]];
		_query = format["Update players set gear = '%1' where pid = '%2'",_gear,_uid];

	};
	case 1:
	{
		_stats = param[3,"""[100,100,12000]""",["",[]]];
		_query = format["Update players set stats = '%1' where pid = '%2'",_stats,_uid];


	};

	case 2:
	{
		_alive = param[3,1,[1]];
		_query = format["Update players set alive = '%1' where pid = '%2'",_alive,_uid];


	};

	case 3:
	{
		_pos = param[3,"""[]""",[1,"",[]]];
		_query = format["Update players set position = '%1' where pid = '%2'",_pos,_uid];


	};

	case 4:
	{
		_playtime = param[3,0,[0]];
		_query = format["Update players set playtime = '%1' where pid = '%2'",_playtime,_uid];

	};
};


if!(_query isEqualTo "") then {
	[_query,1] call BaMilSim_fnc_db_sync;
};