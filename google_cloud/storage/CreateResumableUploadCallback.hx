package google_cloud.storage;

typedef CreateResumableUploadCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, uri:String) -> Void>;