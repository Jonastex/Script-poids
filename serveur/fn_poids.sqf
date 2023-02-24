/**
 * @author John 
 * @email Jonastex#2733
 * @create date 2020-11-28
 * @modify date 2020-11-28
 * @desc [description]
 */
private _choix = param [0];
switch (_choix)
	do {
		case 0 : {
			private _id = param [1];
			private _ret = param [2];

			private _query = format ["SELECT poids FROM players WHERE pid='%1'", _id];

			private _queryResult = [_query,2] call DB_fnc_asyncCall;

			[4, _queryResult] remoteExec ["john_fnc_gros",(owner _ret)];

		};

		case 1 : {
			private _id = param [1];
			private _poids = param [2];

			private _query = format ["UPDATE players SET poids='%1' WHERE pid='%2'", _poids, _id];

			[_query,1] call DB_fnc_asyncCall;
		};
	};
