package google_cloud.storage;

typedef HmacKeyMetadataCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, metadata:HmacKeyMetadata) -> Void, (err:Null<js.lib.Error>, metadata:HmacKeyMetadata, apiResponse:Dynamic) -> Void>;