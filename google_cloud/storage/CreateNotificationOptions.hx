package google_cloud.storage;

typedef CreateNotificationOptions = {
	@:optional
	var customAttributes : { };
	@:optional
	var eventTypes : Array<String>;
	@:optional
	var objectNamePrefix : String;
	@:optional
	var payloadFormat : String;
	@:optional
	var userProject : String;
};