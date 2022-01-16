package google_cloud.storage;

typedef CopyCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, file:File) -> Void, (err:Null<js.lib.Error>, file:File, apiResponse:Dynamic) -> Void>;