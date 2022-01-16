package google_cloud.storage;

typedef SetPolicyCallback = ts.AnyOf4<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, acl:Policy) -> Void, (err:js.lib.Error, acl:Policy, apiResponse:Dynamic) -> Void>;