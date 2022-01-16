package google_cloud.storage;

typedef SetBucketMetadataCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, metadata:Dynamic) -> Void>;