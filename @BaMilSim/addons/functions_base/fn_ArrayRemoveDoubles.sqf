/*
	File: fn_ArrayRemoveDoubles.sqf
	Author: Bloodwyn

	Description:
	removes doubles or tripletts or quadroples or stuff and leaves only one
*/


_array = _this;

if(typeName _array != "ARRAY") exitWith {};
if(count _array in [0,1]) exitWith {_array};

_ret = [];

{
	if !(_x in _ret)then{
		_ret pushBack _x;
	};
} forEach _array;

_ret;