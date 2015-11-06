// *****************************************************************************************
// * This script is licensed under the GNU Lesser GPL v3. Copyright © 2015 A3Wasteland.com *
// *****************************************************************************************
//	@file Version: 1.0
//	@file Name: loadAdministratorMenu.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:
// bAdmin Exile by Biabock

#define adminMenu_option 50001
disableSerialization;

private ["_start","_panelOptions","_adminSelect","_displayAdmin"];
_uid = getPlayerUID player;
if ([_uid, 2] call isAdmin) then {
	_start = createDialog "AdminMenu";

	_displayAdmin = uiNamespace getVariable "AdminMenu";
	_adminSelect = _displayAdmin displayCtrl adminMenu_option;

	_panelOptions = ["Player Management",
					"Player Markers",
					"Shop Menu",
					"Add Poptabs",
	                "Add Score"
	];

	{
		_adminSelect lbAdd _x;
	} forEach _panelOptions;
};
