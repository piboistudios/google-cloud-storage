package google_cloud.storage;

typedef GetHmacKeysCallback = ts.AnyOf3<(err:Null<js.lib.Error>, hmacKeys:Null<Array<HmacKey>>) -> Void, (err:Null<js.lib.Error>, hmacKeys:Null<Array<HmacKey>>, nextQuery:{ }) -> Void, (err:Null<js.lib.Error>, hmacKeys:Null<Array<HmacKey>>, nextQuery:{ }, apiResponse:Dynamic) -> Void>;