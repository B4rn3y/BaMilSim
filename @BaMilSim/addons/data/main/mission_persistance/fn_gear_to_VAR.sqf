
private ["_unit","_arr"];
_unit = param[0,objNull,[objNull]];
if(isnull _unit) exitWith {};
_arr = [];
// uniform
_arr pushback (uniform _unit);
// backpack
_arr pushback (backpack _unit);
// Primary
_arr pushback (primaryWeapon _unit);
_arr pushback (primaryWeaponItems _unit);
_arr pushback (primaryWeaponMagazine _unit);
// Launcher
_arr pushback (secondaryWeapon _unit);
_arr pushback (secondaryWeaponItems _unit);
_arr pushback (secondaryWeaponMagazine _unit);
// Pistols
_arr pushback (handgunWeapon _unit);
_arr pushback (handgunItems _unit);
_arr pushback (handgunMagazine _unit);
// uniform
_arr pushback (uniformitems _unit);
// vest
_arr pushback (vest _unit);
_arr pushback (vestitems _unit);
// backpack
_arr pushback (backpack _unit);
// helmet
_arr pushback (headgear _unit);
// goggles
_arr pushback (goggles _unit);
// Map, compass, watch, NVG, binocular and such things
_arr pushback (assigneditems _unit);
// Backpack Items
_arr pushback (backpackitems _unit);

_arr