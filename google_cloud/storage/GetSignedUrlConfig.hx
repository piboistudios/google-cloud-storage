package google_cloud.storage;

typedef GetSignedUrlConfig = {
	var action : String;
	@:optional
	var version : String;
	@:optional
	var virtualHostedStyle : Bool;
	@:optional
	var cname : String;
	@:optional
	var contentMd5 : String;
	@:optional
	var contentType : String;
	var expires : ts.AnyOf3<String, Float, js.lib.Date>;
	@:optional
	var accessibleAt : ts.AnyOf3<String, Float, js.lib.Date>;
	@:optional
	var extensionHeaders : node.http.OutgoingHttpHeaders;
	@:optional
	var promptSaveAs : String;
	@:optional
	var responseDisposition : String;
	@:optional
	var responseType : String;
	@:optional
	var queryParams : google_cloud.storage.build.src.signer.Query;
};