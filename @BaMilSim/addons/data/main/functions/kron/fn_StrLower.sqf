/*
	Author: Kronzk
	Datei: fn_StrLower
	
	Beschreibung:
	Converts a string to lowercase characters
	 _lower=[_str] call KRON_fnc_StrLower
*/
private["_in","_out"];
_in=_this select 0;
_out=toLower(_in);
_out