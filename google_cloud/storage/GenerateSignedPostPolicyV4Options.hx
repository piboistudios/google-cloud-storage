package google_cloud.storage;

typedef GenerateSignedPostPolicyV4Options = {
	var expires : ts.AnyOf3<String, Float, js.lib.Date>;
	@:optional
	var bucketBoundHostname : String;
	@:optional
	var virtualHostedStyle : Bool;
	@:optional
	var conditions : Array<Dynamic>;
	@:optional
	var fields : PolicyFields;
};