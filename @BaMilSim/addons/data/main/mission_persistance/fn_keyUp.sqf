_code = _this select 1;
_shift = _this select 2;
_strg = _this select 3;
_alt = _this select 4;

_handle = false;

switch (_code) do
{
	case 1: //ESC
	{
	};
};

if(_code in (actionKeys "User10")) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if!(isnil "EVH_ID_Vehicles") then {
		removeMissionEventHandler ["Draw3D", EVH_ID_Vehicles];
		EVH_ID_Vehicles = nil;
	};
	true;
};

switch (true) do
{
	case (_code in (actionKeys "compass")):
	{
		["compass",{}] call BaMilSim_fnc_stackOnEachFrame;
		_handle = true;
	};
};
_handle;