package google_cloud.storage;

typedef DeleteBucketOptions = {
	@:optional
	var ignoreNotFound : Bool;
	@:optional
	var userProject : String;
};