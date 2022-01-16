package google_cloud.storage;

typedef MakeAllFilesPublicPrivateCallback = ts.AnyOf3<() -> Void, (err:ts.AnyOf2<js.lib.Error, Array<js.lib.Error>>) -> Void, (err:ts.AnyOf2<js.lib.Error, Array<js.lib.Error>>, files:Array<File>) -> Void>;