/*
    File: fn_igniteCheck.sqf
    Author: Bloodwyn

    Description:
    returns true if the given array is filed with only null
*/

_ret = true;
{
	if !(isNull _x) exitWith{_ret = false;};
}
foreach _this;
_ret;