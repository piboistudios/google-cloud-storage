package google_cloud.storage;

typedef GetAclOptions = {
	var entity : String;
	@:optional
	var generation : Float;
	@:optional
	var userProject : String;
};