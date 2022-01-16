package google_cloud.storage;

typedef SaveOptions = {
	@:optional
	dynamic function onUploadProgress(progressEvent:Dynamic):Void;
	@:optional
	var contentType : String;
	@:optional
	var gzip : ts.AnyOf2<String, Bool>;
	@:optional
	var resumable : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var validation : ts.AnyOf2<String, Bool>;
	@:optional
	var configPath : String;
	@:optional
	var metadata : Dynamic;
	@:optional
	var origin : String;
	@:optional
	var offset : Float;
	@:optional
	var predefinedAcl : PredefinedAcl;
	@:optional
	@:native("private")
	var private_ : Bool;
	@:optional
	@:native("public")
	var public_ : Bool;
	@:optional
	var uri : String;
	@:optional
	var userProject : String;
	@:optional
	var preconditionOpts : google_cloud.storage.build.src.storage.PreconditionOptions;
};