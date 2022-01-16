package google_cloud.storage;

typedef MakeBucketPublicCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, files:Array<File>) -> Void>;