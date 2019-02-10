/*
	Author: Kronzk
	Datei: fn_StrLeft 
	
	Beschreibung:
	Returns l characters from the left side of the string
	_left=[_str,l] call KRON_fnc_StrLeft
*/
private["_in","_len","_arr","_out"];
_in=_this select 0;
_len=(_this select 1)-1;
_arr=[_in] call KRON_fnc_StrToArray;
_out="";
if (_len>=(count _arr)) then {
	_out=_in;
} else {
	for "_i" from 0 to _len do {
		_out=_out + (_arr select _i);
	};
};
_out