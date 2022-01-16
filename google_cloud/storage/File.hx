package google_cloud.storage;

/**
	A File object is created from your {@link Bucket} object using
	{@link Bucket#file}.
**/
@:jsRequire("@google-cloud/storage", "File") extern class File extends google_cloud.common.ServiceObject<File> {
	/**
		Constructs a file object.
	**/
	function new(bucket:Bucket, name:String, ?options:FileOptions);
	var acl : google_cloud.storage.build.src.acl.Acl;
	var bucket : Bucket;
	var storage : Storage;
	@:optional
	var kmsKeyName : String;
	@:optional
	var userProject : String;
	@:optional
	var signer : google_cloud.storage.build.src.signer.URLSigner;
	var name : String;
	@:optional
	var generation : Float;
	@:optional
	private var encryptionKey : Dynamic;
	@:optional
	private var encryptionKeyBase64 : Dynamic;
	@:optional
	private var encryptionKeyHash : Dynamic;
	@:optional
	private var encryptionKeyInterceptor : Dynamic;
	@:optional
	private var instanceRetryValue : Dynamic;
	@:optional
	var instancePreconditionOpts : google_cloud.storage.build.src.storage.PreconditionOptions;
	/**
		A helper method for determining if a request should be retried based on preconditions.
		This should only be used for methods where the idempotency is determined by
		`ifGenerationMatch`
		
		A request should not be retried under the following conditions:
		- if precondition option `ifGenerationMatch` is not set OR
		- if `idempotencyStrategy` is set to `RetryNever`
	**/
	private var shouldRetryBasedOnPreconditionAndIdempotencyStrat : Dynamic;
	@:overload(function(destination:ts.AnyOf3<String, Bucket, File>, callback:CopyCallback):Void { })
	@:overload(function(destination:ts.AnyOf3<String, Bucket, File>, options:CopyOptions, callback:CopyCallback):Void { })
	function copy(destination:ts.AnyOf3<String, Bucket, File>, ?options:CopyOptions):js.lib.Promise<CopyResponse>;
	/**
		Create a readable stream to read the contents of the remote file. It can be
		piped to a writable stream or listened to for 'data' events to read a
		file's contents.
		
		In the unlikely event there is a mismatch between what you downloaded and
		the version in your Bucket, your error handler will receive an error with
		code "CONTENT_DOWNLOAD_MISMATCH". If you receive this error, the best
		recourse is to try downloading the file again.
		
		For faster crc32c computation, you must manually install
		{@link https://www.npmjs.com/package/fast-crc32c| `fast-crc32c`}:
		
		     $ npm install --save fast-crc32c
		
		NOTE: Readable streams will emit the `end` event when the file is fully
		downloaded.
	**/
	function createReadStream(?options:CreateReadStreamOptions):node.stream.Readable;
	@:overload(function(options:CreateResumableUploadOptions, callback:CreateResumableUploadCallback):Void { })
	@:overload(function(callback:CreateResumableUploadCallback):Void { })
	function createResumableUpload(?options:CreateResumableUploadOptions):js.lib.Promise<CreateResumableUploadResponse>;
	/**
		Create a writable stream to overwrite the contents of the file in your
		bucket.
		
		A File object can also be used to create files for the first time.
		
		Resumable uploads are automatically enabled and must be shut off explicitly
		by setting `options.resumable` to `false`.
		
		Resumable uploads require write access to the $HOME directory. Through
		{@link https://www.npmjs.com/package/configstore| `config-store`}, some metadata
		is stored. By default, if the directory is not writable, we will fall back
		to a simple upload. However, if you explicitly request a resumable upload,
		and we cannot write to the config directory, we will return a
		`ResumableUploadError`.
		
		<p class="notice">
		   There is some overhead when using a resumable upload that can cause
		   noticeable performance degradation while uploading a series of small
		   files. When uploading files less than 10MB, it is recommended that the
		   resumable feature is disabled.
		</p>
		
		For faster crc32c computation, you must manually install
		{@link https://www.npmjs.com/package/fast-crc32c| `fast-crc32c`}:
		
		     $ npm install --save fast-crc32c
		
		NOTE: Writable streams will emit the `finish` event when the file is fully
		uploaded.
		
		See {@link https://cloud.google.com/storage/docs/json_api/v1/how-tos/upload| Upload Options (Simple or Resumable)}
		See {@link https://cloud.google.com/storage/docs/json_api/v1/objects/insert| Objects: insert API Documentation}
	**/
	function createWriteStream(?options:CreateWriteStreamOptions):node.stream.Writable;
	/**
		Delete failed resumable upload file cache.
		
		Resumable file upload cache the config file to restart upload in case of
		failure. In certain scenarios, the resumable upload will not works and
		upload file cache needs to be deleted to upload the same file.
		
		Following are some of the scenarios.
		
		Resumable file upload failed even though the file is successfully saved
		on the google storage and need to clean up a resumable file cache to
		update the same file.
		
		Resumable file upload failed due to pre-condition
		(i.e generation number is not matched) and want to upload a same
		file with the new generation number.
	**/
	function deleteResumableCache():Void;
	@:overload(function(options:DownloadOptions, callback:DownloadCallback):Void { })
	@:overload(function(callback:DownloadCallback):Void { })
	function download(?options:DownloadOptions):js.lib.Promise<DownloadResponse>;
	/**
		The Storage API allows you to use a custom key for server-side encryption.
		
		See {@link https://cloud.google.com/storage/docs/encryption#customer-supplied| Customer-supplied Encryption Keys}
	**/
	function setEncryptionKey(encryptionKey:ts.AnyOf2<String, global.Buffer>):File;
	@:overload(function(callback:GetExpirationDateCallback):Void { })
	function getExpirationDate():js.lib.Promise<GetExpirationDateResponse>;
	@:overload(function(options:GetSignedPolicyOptions, callback:GetSignedPolicyCallback):Void { })
	@:overload(function(callback:GetSignedPolicyCallback):Void { })
	function getSignedPolicy(options:GetSignedPolicyOptions):js.lib.Promise<GetSignedPolicyResponse>;
	@:overload(function(options:GetSignedPolicyOptions, callback:GetSignedPolicyCallback):Void { })
	@:overload(function(callback:GetSignedPolicyCallback):Void { })
	function generateSignedPostPolicyV2(options:GetSignedPolicyOptions):js.lib.Promise<GetSignedPolicyResponse>;
	@:overload(function(options:GenerateSignedPostPolicyV4Options, callback:GenerateSignedPostPolicyV4Callback):Void { })
	@:overload(function(callback:GenerateSignedPostPolicyV4Callback):Void { })
	function generateSignedPostPolicyV4(options:GenerateSignedPostPolicyV4Options):js.lib.Promise<GenerateSignedPostPolicyV4Response>;
	@:overload(function(cfg:GetSignedUrlConfig, callback:GetSignedUrlCallback):Void { })
	function getSignedUrl(cfg:GetSignedUrlConfig):js.lib.Promise<GetSignedUrlResponse>;
	@:overload(function(callback:google_cloud.storage.build.src.file.IsPublicCallback):Void { })
	function isPublic():js.lib.Promise<google_cloud.storage.build.src.file.IsPublicResponse>;
	@:overload(function(callback:SetFileMetadataCallback):Void { })
	@:overload(function(options:MakeFilePrivateOptions, callback:SetFileMetadataCallback):Void { })
	function makePrivate(?options:MakeFilePrivateOptions):js.lib.Promise<MakeFilePrivateResponse>;
	@:overload(function(callback:MakeFilePublicCallback):Void { })
	function makePublic():js.lib.Promise<MakeFilePublicResponse>;
	/**
		The public URL of this File
		Use {@link File#makePublic} to enable anonymous access via the returned URL.
	**/
	function publicUrl():String;
	@:overload(function(destination:ts.AnyOf3<String, Bucket, File>, callback:MoveCallback):Void { })
	@:overload(function(destination:ts.AnyOf3<String, Bucket, File>, options:MoveOptions, callback:MoveCallback):Void { })
	function move(destination:ts.AnyOf3<String, Bucket, File>, ?options:MoveOptions):js.lib.Promise<MoveResponse>;
	@:overload(function(destinationFile:ts.AnyOf2<String, File>, callback:MoveCallback):Void { })
	@:overload(function(destinationFile:ts.AnyOf2<String, File>, options:MoveOptions, callback:MoveCallback):Void { })
	function rename(destinationFile:ts.AnyOf2<String, File>, ?options:MoveOptions):js.lib.Promise<MoveResponse>;
	/**
		Make an authenticated API request.
		
		Make an authenticated API request.
	**/
	@:overload(function(reqOpts:google_cloud.common.DecorateRequestOptions, callback:google_cloud.common.BodyResponseCallback):Void { })
	function request(reqOpts:google_cloud.common.DecorateRequestOptions):js.lib.Promise<ts.Tuple2<Dynamic, Dynamic>>;
	@:overload(function(callback:CopyCallback):Void { })
	@:overload(function(options:RotateEncryptionKeyOptions, callback:CopyCallback):Void { })
	function rotateEncryptionKey(?options:RotateEncryptionKeyOptions):js.lib.Promise<CopyResponse>;
	@:overload(function(data:ts.AnyOf2<String, global.Buffer>, callback:SaveCallback):Void { })
	@:overload(function(data:ts.AnyOf2<String, global.Buffer>, options:SaveOptions, callback:SaveCallback):Void { })
	function save(data:ts.AnyOf2<String, global.Buffer>, ?options:SaveOptions):js.lib.Promise<ts.Undefined>;
	@:overload(function(storageClass:String, options:SetStorageClassOptions, callback:SetStorageClassCallback):Void { })
	@:overload(function(storageClass:String, ?callback:SetStorageClassCallback):Void { })
	function setStorageClass(storageClass:String, ?options:SetStorageClassOptions):js.lib.Promise<SetStorageClassResponse>;
	/**
		Set a user project to be billed for all requests made from this File
		object.
	**/
	function setUserProject(userProject:String):Void;
	/**
		This creates a gcs-resumable-upload upload stream.
		
		See {@link https://github.com/googleapis/gcs-resumable-upload| gcs-resumable-upload}
	**/
	function startResumableUpload_(dup:google_cloud.common.build.src.util.Duplexify, options:CreateResumableUploadOptions):Void;
	/**
		Takes a readable stream and pipes it to a remote file. Unlike
		`startResumableUpload_`, which uses the resumable upload technique, this
		method uses a simple upload (all or nothing).
	**/
	function startSimpleUpload_(dup:google_cloud.common.build.src.util.Duplexify, ?options:CreateWriteStreamOptions):Void;
	function disableAutoRetryConditionallyIdempotent_(coreOpts:Dynamic, methodType:google_cloud.storage.build.src.bucket.AvailableServiceObjectMethods):Void;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):File;
	/**
		Adds the `listener` function to the end of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.on('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.on('foo', () => console.log('a'));
		myEE.prependListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	function on(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):File;
	/**
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):File;
	/**
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):File;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):File;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):File;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):File;
	/**
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function prependListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):File;
	/**
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function prependOnceListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):File;
	static var prototype : File;
}