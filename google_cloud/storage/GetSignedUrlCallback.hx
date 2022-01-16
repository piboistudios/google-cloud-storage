package google_cloud.storage;

typedef GetSignedUrlCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, url:String) -> Void>;