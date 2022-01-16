package google_cloud.storage;

typedef GetBucketsCallback = ts.AnyOf3<(err:Null<js.lib.Error>, buckets:Array<Bucket>) -> Void, (err:Null<js.lib.Error>, buckets:Array<Bucket>, nextQuery:{ }) -> Void, (err:Null<js.lib.Error>, buckets:Array<Bucket>, nextQuery:{ }, apiResponse:Dynamic) -> Void>;