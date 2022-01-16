package google_cloud.storage;

typedef EnableRequesterPaysCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, apiResponse:Dynamic) -> Void>;