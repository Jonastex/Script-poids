/**
 * @author John life is dev 
 * @email Jonastex#2733
 * @create date 2020-11-28
 * @modify date 2020-11-28
 * @desc [description]
 */
_choix = param [0];
switch (_choix)
	do {
		case 0 : {
			_id = param [1];
			_ret = param [2];

			_query = format ["SELECT poids FROM players WHERE pid='%1'", _id];

			private _queryResult = [_query,2] call DB_fnc_asyncCall;

			[4, _queryResult] remoteExec ["john_fnc_recuppoids",(_ret = owner _ret)];

		};

		case 1 : {
			_id = param [1];
			_poids = param [2];

			_query = format ["UPDATE players SET poids='%1' WHERE pid='%2'", _poids, _id];

			[_query,1] call DB_fnc_asyncCall;
		};
	};