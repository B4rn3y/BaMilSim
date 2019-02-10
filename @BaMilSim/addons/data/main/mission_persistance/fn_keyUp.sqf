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
switch (true) do
{
	case (_code in (actionKeys "compass")):
	{
		["compass",{}] call BaMilSim_fnc_stackOnEachFrame;
		_handle = true;
	};
};
_handle;