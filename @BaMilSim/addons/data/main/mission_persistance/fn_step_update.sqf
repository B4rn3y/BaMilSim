
private ["_mode","_error","_set"];
_mode = param[0,-1,[1337]];
_error = false;
if(_mode isEqualTo -1) exitWith {};

_set = [_mode,getplayeruid player,playerside];


switch (_mode) do
{
	case 0:
	{
		_set pushback ([BaMilSim_gear] call BaMilSim_fnc_mresarray);
	};
	case 1:
	{
		_set pushback ([[damage player]] call BaMilSim_fnc_mresarray);
	};
	case 2:
	{
		_set pushback (if(alive player) then {1} else {0});
	};
	case 3:
	{
		_set pushback ([[getposatl player,getdir player]] call BaMilSim_fnc_mresarray);
	};
	case 4:
	{
		_set pushback BaMilSim_playtime;
	};

	default
	{
		_error = true;
	};


};

if(_error) exitWith {};



_set remoteexec["BaMilSim_fnc_step_update_db",2];