

private ["_itemname","_itemCount","_remove","_found","_ret","_D"];
_itemname = param[0,"",[""]];
_itemCount = param[1,1,[1]];
_remove = param[2,false,[false]];
if(_itemname isEqualTo "") exitWith {false};
_found = [];
_ret = false;
{
	if(_x isEqualTo _itemname) then {
		_found pushBack "uniform";
	};

} foreach (uniformitems player);

{
	if(_x isEqualTo _itemname) then {
		_found pushBack "vest";
	};

} foreach (vestItems player);

{
	if(_x isEqualTo _itemname) then {
		_found pushBack "backpack";
	};

} foreach (backpackitems player);


if(count _found >= _itemCount) then {
	if(_remove) then {
		for "_D" from 1 to _itemCount do {
			player removeitem _itemname;
		};
	};
	_ret = true;

};



_ret
