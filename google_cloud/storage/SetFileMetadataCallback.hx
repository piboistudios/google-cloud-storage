package google_cloud.storage;

typedef SetFileMetadataCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, apiResponse:Dynamic) -> Void>;