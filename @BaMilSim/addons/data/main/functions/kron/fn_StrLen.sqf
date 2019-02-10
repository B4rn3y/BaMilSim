/*
	Author: Kronzk
	Datei: fn_StrLen
	
	Beschreibung:
	Returns the length of the string
	_len=[_str] call KRON_fnc_StrLen
*/
private["_in","_arr","_len"];
_in=_this select 0;
_arr=[_in] call KRON_fnc_StrToArray;
_len=count (_arr);
_len