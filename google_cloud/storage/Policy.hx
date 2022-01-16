package google_cloud.storage;

typedef Policy = {
	var bindings : Array<google_cloud.storage.build.src.iam.PolicyBinding>;
	@:optional
	var version : Float;
	@:optional
	var etag : String;
};