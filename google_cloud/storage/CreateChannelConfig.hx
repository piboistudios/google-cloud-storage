package google_cloud.storage;

typedef CreateChannelConfig = {
	var address : String;
	@:optional
	var delimiter : String;
	@:optional
	var maxResults : Float;
	@:optional
	var pageToken : String;
	@:optional
	var prefix : String;
	@:optional
	var projection : String;
	@:optional
	var userProject : String;
	@:optional
	var versions : Bool;
};