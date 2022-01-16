package google_cloud.storage;

typedef SetStorageClassCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, apiResponse:Dynamic) -> Void>;