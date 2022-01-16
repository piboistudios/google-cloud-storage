package google_cloud.storage.build.src.storage;

typedef Cors = {
	@:optional
	var maxAgeSeconds : Float;
	@:optional
	var method : Array<String>;
	@:optional
	var origin : Array<String>;
	@:optional
	var responseHeader : Array<String>;
};