package google_cloud.storage;

typedef GetServiceAccountCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, serviceAccount:ServiceAccount) -> Void, (err:Null<js.lib.Error>, serviceAccount:ServiceAccount, apiResponse:Dynamic) -> Void>;