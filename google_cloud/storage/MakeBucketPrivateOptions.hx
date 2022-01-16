package google_cloud.storage;

typedef MakeBucketPrivateOptions = {
	@:optional
	var includeFiles : Bool;
	@:optional
	var force : Bool;
	@:optional
	var metadata : Dynamic;
	@:optional
	var userProject : String;
};