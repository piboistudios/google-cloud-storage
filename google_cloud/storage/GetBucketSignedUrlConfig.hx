package google_cloud.storage;

typedef GetBucketSignedUrlConfig = {
	var action : String;
	@:optional
	var version : String;
	@:optional
	var cname : String;
	@:optional
	var virtualHostedStyle : Bool;
	var expires : ts.AnyOf3<String, Float, js.lib.Date>;
	@:optional
	var extensionHeaders : node.http.OutgoingHttpHeaders;
	@:optional
	var queryParams : google_cloud.storage.build.src.signer.Query;
};