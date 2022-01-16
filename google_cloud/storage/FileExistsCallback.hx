package google_cloud.storage;

typedef FileExistsCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, exists:Bool) -> Void>;