package google_cloud.storage;

typedef MakeFilePublicCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, apiResponse:Dynamic) -> Void>;