package google_cloud.storage;

typedef SetStorageClassOptions = {
	@:optional
	var userProject : String;
	@:optional
	var preconditionOpts : google_cloud.storage.build.src.storage.PreconditionOptions;
};