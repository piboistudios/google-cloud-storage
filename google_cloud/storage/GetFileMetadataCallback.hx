package google_cloud.storage;

typedef GetFileMetadataCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, metadata:Dynamic) -> Void, (err:Null<js.lib.Error>, metadata:Dynamic, apiResponse:Dynamic) -> Void>;