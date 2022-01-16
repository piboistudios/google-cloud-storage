package google_cloud.storage;

typedef DeleteFileOptions = {
	@:optional
	var ignoreNotFound : Bool;
	@:optional
	var userProject : String;
};