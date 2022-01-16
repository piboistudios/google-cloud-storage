package google_cloud.storage;

typedef AclOptions = {
	var pathPrefix : String;
	dynamic function request(reqOpts:google_cloud.common.DecorateRequestOptions, callback:google_cloud.common.BodyResponseCallback):Void;
};