/*
	Author: Kronzk
	Datei: fn_StrInStr
	
	Beschreibung:
	Tests whether string b is present in string a
	_found=[a,b] call KRON_fnc_StrInStr
*/
private["_out"];
_in=_this select 0;
_out=if (([_this select 0,_this select 1] call KRON_fnc_StrIndex)==-1) then {false} else {true};
_out