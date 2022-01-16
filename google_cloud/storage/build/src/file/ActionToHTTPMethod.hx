package google_cloud.storage.build.src.file;

@:jsRequire("@google-cloud/storage/build/src/file", "ActionToHTTPMethod") @:enum extern abstract ActionToHTTPMethod(String) from String to String {
	var read;
	var write;
	var delete;
	var resumable;
}