package google_cloud.storage;

typedef MoveCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, destinationFile:File) -> Void, (err:Null<js.lib.Error>, destinationFile:File, apiResponse:Dynamic) -> Void>;