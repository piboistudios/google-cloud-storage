package google_cloud.storage;

typedef EncryptionKeyOptions = {
	@:optional
	var encryptionKey : ts.AnyOf2<String, global.Buffer>;
	@:optional
	var kmsKeyName : String;
};