/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_sessionID","_parameters","_netID","_player"];
_sessionID = _this select 0;
_parameters = _this select 1;
_netID = _parameters select 0;
try 
{
	_player = objectFromNetId _netID;
	if (isNull _player) then
	{
		throw "Cannot update session for unknown network ID!";
	};
	[_sessionID, _player] call ExileServer_system_session_update;
}
catch
{
	_exception call ExileServer_util_log;
};
true