package google_cloud.storage.build.src.signer;

/**
	Custom error type for errors related to getting signed errors and policies.
**/
@:jsRequire("@google-cloud/storage/build/src/signer", "SigningError") extern class SigningError extends js.lib.Error {
	function new();
	static var prototype : SigningError;
}