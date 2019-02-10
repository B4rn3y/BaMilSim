/*
	Author: Kronzk
	Datei: fn_getArgRev
	
	Beschreibung:
	Works like getArg, but search for the part *after* the colon, and return the part in front of it
	A default value can be defined as (_d).
	_arg=[_this,_t,(_d)] call KRON_fnc_getArgRev
*/
private["_in","_flg","_fl","_def","_arr","_i","_j","_as","_aa","_org","_p","_out"];
_in=_this select 0;
_flg=toUpper(_this select 1);
_fl=[_flg] call KRON_fnc_StrLen;
_out="";
if ((count _this)>2) then {_out=_this select 2};
_arr=[_in] call KRON_fnc_ArrayToUpper;
if ((count _arr)>0) then {
	for "_i" from 0 to (count _in)-1 do {
		_as = _arr select _i;
		if (typeName _as=="STRING") then {
			_aa = [_as] call KRON_fnc_StrToArray;
			_p = _aa find ":";
			if (_p+1==(count _aa)-_fl) then {
				if (([_as,_p+1] call KRON_fnc_StrMid)==_flg) then {
					_org = _in select _i;
					_out=[_org,_p] call KRON_fnc_StrLeft;
				};
			};
		};
	};
};
_out