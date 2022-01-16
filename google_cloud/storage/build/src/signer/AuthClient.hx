package google_cloud.storage.build.src.signer;

typedef AuthClient = {
	function sign(blobToSign:String):js.lib.Promise<String>;
	function getCredentials():js.lib.Promise<google_cloud.storage.GetCredentialsResponse>;
};