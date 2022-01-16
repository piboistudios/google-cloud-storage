package google_cloud.storage;

typedef AddAclOptions = {
	var entity : String;
	var role : String;
	@:optional
	var generation : Float;
	@:optional
	var userProject : String;
};