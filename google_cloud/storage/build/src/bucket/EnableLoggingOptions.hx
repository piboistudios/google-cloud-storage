package google_cloud.storage.build.src.bucket;

typedef EnableLoggingOptions = {
	@:optional
	var bucket : ts.AnyOf2<String, google_cloud.storage.Bucket>;
	var prefix : String;
};