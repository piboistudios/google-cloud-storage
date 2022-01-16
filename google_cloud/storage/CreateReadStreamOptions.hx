package google_cloud.storage;

typedef CreateReadStreamOptions = {
	@:optional
	var userProject : String;
	@:optional
	var validation : ts.AnyOf2<Bool, String>;
	@:optional
	var start : Float;
	@:optional
	var end : Float;
	@:optional
	var decompress : Bool;
};