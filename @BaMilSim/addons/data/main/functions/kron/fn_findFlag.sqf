/*
	Author: Kronzk
	Datei: fn_FindFlag
	
	Beschreibung:
	Checks a mixed array (_this) for the presence of a string (_str)
	_flg=[_this,_str] call KRON_fnc_FindFlag
*/
private["_in","_flg","_arr","_out"];
_in=_this select 0;
_flg=toUpper(_this select 1);
_arr=[_in] call KRON_fnc_ArrayToUpper;
_out=_flg in _arr;
_out