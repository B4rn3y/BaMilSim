/*
	Author: Kronzk
	Datei: fn_StrUpper 
	
	Beschreibung:
	Converts a string to uppercase characters
	_upper=[_str] call KRON_fnc_StrUpper
*/
private["_in","_out"];
_in=_this select 0;
_out=toUpper(_in);
_out