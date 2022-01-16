package google_cloud.storage;

typedef CopyOptions = {
	@:optional
	var cacheControl : String;
	@:optional
	var contentEncoding : String;
	@:optional
	var contentType : String;
	@:optional
	var contentDisposition : String;
	@:optional
	var destinationKmsKeyName : String;
	@:optional
	var metadata : Dynamic;
	@:optional
	var predefinedAcl : String;
	@:optional
	var token : String;
	@:optional
	var userProject : String;
	@:optional
	var preconditionOpts : google_cloud.storage.build.src.storage.PreconditionOptions;
};