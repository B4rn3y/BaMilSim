
private["_array"];
_array = param [0,"",[""]];
if(_array == "") exitWith {[]};
_array = toArray(_array);

for "_i" from 0 to (count _array)-1 do
{
	_sel = _array select _i;
	if(_sel == 96) then
	{
		_array set[_i,39];
	};
};

_array = toString(_array);
_array = call compile[format["%1", _array],true];
_array;