package google_cloud.storage;

typedef GetAclCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, acl:ts.AnyOf2<AccessControlObject, Array<AccessControlObject>>) -> Void, (err:Null<js.lib.Error>, acl:ts.AnyOf2<AccessControlObject, Array<AccessControlObject>>, apiResponse:Dynamic) -> Void>;