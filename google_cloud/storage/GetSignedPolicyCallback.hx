package google_cloud.storage;

typedef GetSignedPolicyCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, policy:PolicyDocument) -> Void>;