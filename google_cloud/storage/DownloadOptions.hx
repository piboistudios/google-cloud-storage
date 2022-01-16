package google_cloud.storage;

typedef DownloadOptions = {
	@:optional
	var destination : String;
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