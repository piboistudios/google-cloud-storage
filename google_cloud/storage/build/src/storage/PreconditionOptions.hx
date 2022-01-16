package google_cloud.storage.build.src.storage;

typedef PreconditionOptions = {
	@:optional
	var ifGenerationMatch : Float;
	@:optional
	var ifGenerationNotMatch : Float;
	@:optional
	var ifMetagenerationMatch : Float;
	@:optional
	var ifMetagenerationNotMatch : Float;
};