package google_cloud.storage;

typedef CombineOptions = {
	@:optional
	var kmsKeyName : String;
	@:optional
	var userProject : String;
	@:optional
	var ifGenerationMatch : Float;
	@:optional
	var ifGenerationNotMatch : Float;
	@:optional
	var ifMetagenerationMatch : Float;
	@:optional
	var ifMetagenerationNotMatch : Float;
};