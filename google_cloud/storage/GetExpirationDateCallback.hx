package google_cloud.storage;

typedef GetExpirationDateCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, expirationDate:js.lib.Date) -> Void, (err:Null<js.lib.Error>, expirationDate:js.lib.Date, apiResponse:Dynamic) -> Void>;