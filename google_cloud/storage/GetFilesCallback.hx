package google_cloud.storage;

typedef GetFilesCallback = ts.AnyOf4<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, files:Array<File>) -> Void, (err:Null<js.lib.Error>, files:Array<File>, nextQuery:{ }) -> Void, (err:Null<js.lib.Error>, files:Array<File>, nextQuery:{ }, apiResponse:Dynamic) -> Void>;