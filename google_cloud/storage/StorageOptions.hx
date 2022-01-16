package google_cloud.storage;

typedef StorageOptions = {
	@:optional
	var retryOptions : google_cloud.storage.build.src.storage.RetryOptions;
	@:optional
	var autoRetry : Bool;
	@:optional
	var maxRetries : Float;
	/**
		**This option is deprecated.**
	**/
	@:optional
	var promise : js.lib.PromiseConstructor;
	/**
		The API endpoint of the service used to make requests.
		Defaults to `storage.googleapis.com`.
	**/
	@:optional
	var apiEndpoint : String;
	@:optional
	var authClient : google_auth_library.GoogleAuth;
	@:optional
	var interceptors_ : Array<google_cloud.common.Interceptor>;
	@:optional
	var email : String;
	@:optional
	var token : String;
	@:optional
	var timeout : Float;
	@:optional
	var userAgent : String;
	@:optional
	var useAuthWithCustomEndpoint : Bool;
	/**
		Path to a .json, .pem, or .p12 key file
	**/
	@:optional
	var keyFilename : String;
	/**
		Path to a .json, .pem, or .p12 key file
	**/
	@:optional
	var keyFile : String;
	/**
		Object containing client_email and private_key properties, or the
		external account client options.
	**/
	@:optional
	var credentials : ts.AnyOf3<google_auth_library.CredentialBody, google_auth_library.IdentityPoolClientOptions, google_auth_library.AwsClientOptions>;
	/**
		Options object passed to the constructor of the client
	**/
	@:optional
	var clientOptions : ts.AnyOf4<google_auth_library.JWTOptions, google_auth_library.OAuth2ClientOptions, google_auth_library.UserRefreshClientOptions, google_auth_library.ImpersonatedOptions>;
	/**
		Required scopes for the desired API request
	**/
	@:optional
	var scopes : ts.AnyOf2<String, Array<String>>;
	/**
		Your project ID.
	**/
	@:optional
	var projectId : String;
};