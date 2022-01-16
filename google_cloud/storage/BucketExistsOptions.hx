package google_cloud.storage;

typedef BucketExistsOptions = {
	@:optional
	var userProject : String;
	/**
		Create the object if it doesn't already exist.
	**/
	@:optional
	var autoCreate : Bool;
};