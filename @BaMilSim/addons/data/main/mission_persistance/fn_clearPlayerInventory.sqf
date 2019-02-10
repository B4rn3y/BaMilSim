
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
{
	player removeMagazine _x;
} foreach (magazines player);

if!(hmd player isEqualTo "") then {
	player unlinkItem (hmd player);
};

{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

removeHeadGear player;
RemoveAllWeapons player;


