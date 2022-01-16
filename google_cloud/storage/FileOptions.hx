package google_cloud.storage;

typedef FileOptions = {
	@:optional
	var encryptionKey : ts.AnyOf2<String, global.Buffer>;
	@:optional
	var generation : ts.AnyOf2<String, Float>;
	@:optional
	var kmsKeyName : String;
	@:optional
	var userProject : String;
	@:optional
	var preconditionOpts : google_cloud.storage.build.src.storage.PreconditionOptions;
};