package google_cloud.storage;

typedef GetHmacKeysOptions = {
	@:optional
	var projectId : String;
	@:optional
	var serviceAccountEmail : String;
	@:optional
	var showDeletedKeys : Bool;
	@:optional
	var autoPaginate : Bool;
	@:optional
	var maxApiCalls : Float;
	@:optional
	var maxResults : Float;
	@:optional
	var pageToken : String;
	@:optional
	var userProject : String;
};