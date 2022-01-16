package google_cloud.storage;

typedef TestIamPermissionsCallback = ts.AnyOf4<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, acl:{ }) -> Void, (err:js.lib.Error, acl:{ }, apiResponse:Dynamic) -> Void>;