package google_cloud.storage;

typedef HmacKeyMetadata = {
	var accessId : String;
	@:optional
	var etag : String;
	@:optional
	var id : String;
	@:optional
	var projectId : String;
	@:optional
	var serviceAccountEmail : String;
	@:optional
	var state : String;
	@:optional
	var timeCreated : String;
	@:optional
	var updated : String;
};