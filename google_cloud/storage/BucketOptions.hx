package google_cloud.storage;

typedef BucketOptions = {
	@:optional
	var kmsKeyName : String;
	@:optional
	var userProject : String;
	@:optional
	var preconditionOpts : google_cloud.storage.build.src.storage.PreconditionOptions;
};