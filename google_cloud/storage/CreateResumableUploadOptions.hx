package google_cloud.storage;

typedef CreateResumableUploadOptions = {
	@:optional
	var configPath : String;
	@:optional
	var metadata : Dynamic;
	@:optional
	var origin : String;
	@:optional
	var offset : Float;
	@:optional
	var predefinedAcl : PredefinedAcl;
	@:optional
	@:native("private")
	var private_ : Bool;
	@:optional
	@:native("public")
	var public_ : Bool;
	@:optional
	var uri : String;
	@:optional
	var userProject : String;
	@:optional
	var preconditionOpts : google_cloud.storage.build.src.storage.PreconditionOptions;
};