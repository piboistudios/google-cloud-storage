package google_cloud.storage;

typedef GetNotificationOptions = {
	/**
		Automatically create the object if it does not exist. Default: `false`.
	**/
	@:optional
	var autoCreate : Bool;
	/**
		The ID of the project which will be billed for the request.
	**/
	@:optional
	var userProject : String;
};