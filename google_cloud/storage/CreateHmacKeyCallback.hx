package google_cloud.storage;

typedef CreateHmacKeyCallback = ts.AnyOf4<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, hmacKey:HmacKey) -> Void, (err:Null<js.lib.Error>, hmacKey:HmacKey, secret:String) -> Void, (err:Null<js.lib.Error>, hmacKey:HmacKey, secret:String, apiResponse:HmacKeyResourceResponse) -> Void>;