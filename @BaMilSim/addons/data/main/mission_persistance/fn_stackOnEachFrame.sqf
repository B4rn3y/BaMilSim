_id = toLower param [0, "default", [""]];
_code = param [1, {}, [{}]];

_index=-1;
{
	if((_x select 0) isEqualTo _id)exitWith{
		_index = _foreachindex;
	};
}foreach valor_OnEachFrameScripts;

if (_index isEqualTo -1)exitWith{
	if !(_code isEqualTo {})then{
		valor_OnEachFrameScripts pushBack [_id,_code];
	};
};
if (_code isEqualTo {})then{
	valor_OnEachFrameScripts = valor_OnEachFrameScripts - [valor_OnEachFrameScripts select _index];
}else{
	valor_OnEachFrameScripts set [_index,[_id,_code]];
};
