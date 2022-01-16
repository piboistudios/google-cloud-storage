package google_cloud.storage.build.src.signer;

typedef GetSignedUrlConfigInternal = {
	var expiration : Float;
	@:optional
	var accessibleAt : js.lib.Date;
	var method : String;
	@:optional
	var extensionHeaders : node.http.OutgoingHttpHeaders;
	@:optional
	var queryParams : Query;
	@:optional
	var cname : String;
	@:optional
	var contentMd5 : String;
	@:optional
	var contentType : String;
	var bucket : String;
	@:optional
	var file : String;
};