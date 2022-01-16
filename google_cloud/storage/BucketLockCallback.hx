package google_cloud.storage;

typedef BucketLockCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, apiResponse:Dynamic) -> Void>;