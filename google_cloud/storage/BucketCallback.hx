package google_cloud.storage;

typedef BucketCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, bucket:Bucket) -> Void, (err:Null<js.lib.Error>, bucket:Bucket, apiResponse:Dynamic) -> Void>;