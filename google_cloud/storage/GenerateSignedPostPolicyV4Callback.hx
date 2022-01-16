package google_cloud.storage;

typedef GenerateSignedPostPolicyV4Callback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, output:SignedPostPolicyV4Output) -> Void>;