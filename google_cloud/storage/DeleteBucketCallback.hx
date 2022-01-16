package google_cloud.storage;

typedef DeleteBucketCallback = ts.AnyOf3<(err:Null<js.lib.Error>, apiResponse:Dynamic) -> Void, (err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, apiResponse:teeny_request.Response<Dynamic>) -> Void>;