package google_cloud.storage;

typedef GetFileCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, file:File) -> Void, (err:Null<js.lib.Error>, file:File, apiResponse:Dynamic) -> Void>;