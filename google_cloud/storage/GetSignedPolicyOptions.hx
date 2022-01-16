package google_cloud.storage;

typedef GetSignedPolicyOptions = {
	@:optional
	var equals : ts.AnyOf2<Array<String>, Array<Array<String>>>;
	var expires : ts.AnyOf3<String, Float, js.lib.Date>;
	@:optional
	var startsWith : ts.AnyOf2<Array<String>, Array<Array<String>>>;
	@:optional
	var acl : String;
	@:optional
	var successRedirect : String;
	@:optional
	var successStatus : String;
	@:optional
	var contentLengthRange : {
		@:optional
		var min : Float;
		@:optional
		var max : Float;
	};
};