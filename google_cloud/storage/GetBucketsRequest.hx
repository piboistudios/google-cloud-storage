package google_cloud.storage;

typedef GetBucketsRequest = {
	@:optional
	var prefix : String;
	@:optional
	var project : String;
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