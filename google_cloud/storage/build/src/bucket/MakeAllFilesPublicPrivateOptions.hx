package google_cloud.storage.build.src.bucket;

typedef MakeAllFilesPublicPrivateOptions = {
	@:optional
	var force : Bool;
	@:optional
	@:native("private")
	var private_ : Bool;
	@:optional
	@:native("public")
	var public_ : Bool;
	@:optional
	var userProject : String;
};