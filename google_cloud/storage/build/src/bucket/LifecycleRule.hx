package google_cloud.storage.build.src.bucket;

typedef LifecycleRule = {
	var action : ts.AnyOf2<String, {
		var type : String;
		@:optional
		var storageClass : String;
	}>;
	var condition : { };
	@:optional
	var storageClass : String;
};