package google_cloud.storage.build.src.signer;

typedef SignerGetSignedUrlConfig = {
	var method : String;
	var expires : ts.AnyOf3<String, Float, js.lib.Date>;
	@:optional
	var accessibleAt : ts.AnyOf3<String, Float, js.lib.Date>;
	@:optional
	var virtualHostedStyle : Bool;
	@:optional
	var version : String;
	@:optional
	var cname : String;
	@:optional
	var extensionHeaders : node.http.OutgoingHttpHeaders;
	@:optional
	var queryParams : Query;
	@:optional
	var contentMd5 : String;
	@:optional
	var contentType : String;
};