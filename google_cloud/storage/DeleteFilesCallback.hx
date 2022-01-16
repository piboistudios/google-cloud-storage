package google_cloud.storage;

typedef DeleteFilesCallback = ts.AnyOf2<(err:Null<ts.AnyOf2<js.lib.Error, Array<js.lib.Error>>>) -> Void, (err:Null<ts.AnyOf2<js.lib.Error, Array<js.lib.Error>>>, apiResponse:Dynamic) -> Void>;