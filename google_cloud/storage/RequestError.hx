package google_cloud.storage;

@jsInaccessible extern class RequestError extends js.lib.Error {
	function new();
	@:optional
	var code : String;
	@:optional
	var errors : Array<js.lib.Error>;
	static var prototype : RequestError;
}