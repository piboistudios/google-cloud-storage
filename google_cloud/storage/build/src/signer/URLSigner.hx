package google_cloud.storage.build.src.signer;

@:jsRequire("@google-cloud/storage/build/src/signer", "URLSigner") extern class URLSigner {
	function new(authClient:AuthClient, bucket:BucketI, ?file:FileI);
	private var authClient : Dynamic;
	private var bucket : Dynamic;
	@:optional
	private var file : Dynamic;
	function getSignedUrl(cfg:SignerGetSignedUrlConfig):js.lib.Promise<String>;
	private var getSignedUrlV2 : Dynamic;
	private var getSignedUrlV4 : Dynamic;
	/**
		Create canonical headers for signing v4 url.
		
		The canonical headers for v4-signing a request demands header names are
		first lowercased, followed by sorting the header names.
		Then, construct the canonical headers part of the request:
		  <lowercasedHeaderName> + ":" + Trim(<value>) + "\n"
		  ..
		  <lowercasedHeaderName> + ":" + Trim(<value>) + "\n"
	**/
	function getCanonicalHeaders(headers:node.http.OutgoingHttpHeaders):String;
	function getCanonicalRequest(method:String, path:String, query:String, headers:String, signedHeaders:String, ?contentSha256:String):String;
	function getCanonicalQueryParams(query:Query):String;
	function getResourcePath(cname:Bool, bucket:String, ?file:String):String;
	function parseExpires(expires:ts.AnyOf3<String, Float, js.lib.Date>, ?current:js.lib.Date):Float;
	function parseAccessibleAt(?accessibleAt:ts.AnyOf3<String, Float, js.lib.Date>):Float;
	static var prototype : URLSigner;
}