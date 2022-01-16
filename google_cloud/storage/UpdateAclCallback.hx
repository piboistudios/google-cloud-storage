package google_cloud.storage;

typedef UpdateAclCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, acl:AccessControlObject) -> Void, (err:Null<js.lib.Error>, acl:AccessControlObject, apiResponse:Dynamic) -> Void>;