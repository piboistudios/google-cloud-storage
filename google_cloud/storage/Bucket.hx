package google_cloud.storage;

/**
	Create a Bucket object to interact with a Cloud Storage bucket.
**/
@:jsRequire("@google-cloud/storage", "Bucket") extern class Bucket extends google_cloud.common.ServiceObject<Dynamic> {
	function new(storage:Storage, name:String, ?options:BucketOptions);
	var name : String;
	/**
		A reference to the {@link Storage} associated with this {@link Bucket}
		instance.
	**/
	var storage : Storage;
	/**
		A user project to apply to each request from this bucket.
	**/
	@:optional
	var userProject : String;
	var acl : google_cloud.storage.build.src.acl.Acl;
	var iam : Iam;
	function getFilesStream(?query:GetFilesOptions):node.stream.Readable;
	@:optional
	var signer : google_cloud.storage.build.src.signer.URLSigner;
	@:optional
	private var instanceRetryValue : Dynamic;
	@:optional
	private var instancePreconditionOpts : Dynamic;
	@:overload(function(rule:google_cloud.storage.build.src.bucket.LifecycleRule, options:google_cloud.storage.build.src.bucket.AddLifecycleRuleOptions, callback:SetBucketMetadataCallback):Void { })
	@:overload(function(rule:google_cloud.storage.build.src.bucket.LifecycleRule, callback:SetBucketMetadataCallback):Void { })
	function addLifecycleRule(rule:google_cloud.storage.build.src.bucket.LifecycleRule, ?options:google_cloud.storage.build.src.bucket.AddLifecycleRuleOptions):js.lib.Promise<SetBucketMetadataResponse>;
	@:overload(function(sources:ts.AnyOf2<Array<String>, Array<File>>, destination:ts.AnyOf2<String, File>, options:CombineOptions, callback:CombineCallback):Void { })
	@:overload(function(sources:ts.AnyOf2<Array<String>, Array<File>>, destination:ts.AnyOf2<String, File>, callback:CombineCallback):Void { })
	function combine(sources:ts.AnyOf2<Array<String>, Array<File>>, destination:ts.AnyOf2<String, File>, ?options:CombineOptions):js.lib.Promise<CombineResponse>;
	@:overload(function(id:String, config:CreateChannelConfig, callback:CreateChannelCallback):Void { })
	@:overload(function(id:String, config:CreateChannelConfig, options:CreateChannelOptions, callback:CreateChannelCallback):Void { })
	function createChannel(id:String, config:CreateChannelConfig, ?options:CreateChannelOptions):js.lib.Promise<CreateChannelResponse>;
	@:overload(function(topic:String, options:CreateNotificationOptions, callback:CreateNotificationCallback):Void { })
	@:overload(function(topic:String, callback:CreateNotificationCallback):Void { })
	function createNotification(topic:String, ?options:CreateNotificationOptions):js.lib.Promise<CreateNotificationResponse>;
	@:overload(function(callback:DeleteFilesCallback):Void { })
	@:overload(function(query:DeleteFilesOptions, callback:DeleteFilesCallback):Void { })
	function deleteFiles(?query:DeleteFilesOptions):js.lib.Promise<ts.Undefined>;
	@:overload(function(callback:SetLabelsCallback):Void { })
	@:overload(function(labels:ts.AnyOf2<String, Array<String>>, callback:SetLabelsCallback):Void { })
	function deleteLabels(?labels:ts.AnyOf2<String, Array<String>>):js.lib.Promise<DeleteLabelsResponse>;
	@:overload(function(callback:DisableRequesterPaysCallback):Void { })
	function disableRequesterPays():js.lib.Promise<DisableRequesterPaysResponse>;
	@:overload(function(config:google_cloud.storage.build.src.bucket.EnableLoggingOptions, callback:SetBucketMetadataCallback):Void { })
	function enableLogging(config:google_cloud.storage.build.src.bucket.EnableLoggingOptions):js.lib.Promise<SetBucketMetadataResponse>;
	@:overload(function(callback:EnableRequesterPaysCallback):Void { })
	function enableRequesterPays():js.lib.Promise<EnableRequesterPaysResponse>;
	/**
		Create a {@link File} object. See {@link File} to see how to handle
		the different use cases you may have.
	**/
	function file(name:String, ?options:FileOptions):File;
	@:overload(function(query:GetFilesOptions, callback:GetFilesCallback):Void { })
	@:overload(function(callback:GetFilesCallback):Void { })
	function getFiles(?query:GetFilesOptions):js.lib.Promise<GetFilesResponse>;
	@:overload(function(callback:GetLabelsCallback):Void { })
	@:overload(function(options:GetLabelsOptions, callback:GetLabelsCallback):Void { })
	function getLabels(?options:GetLabelsOptions):js.lib.Promise<GetLabelsResponse>;
	@:overload(function(callback:GetNotificationsCallback):Void { })
	@:overload(function(options:GetNotificationsOptions, callback:GetNotificationsCallback):Void { })
	function getNotifications(?options:GetNotificationsOptions):js.lib.Promise<GetNotificationsResponse>;
	@:overload(function(cfg:GetBucketSignedUrlConfig, callback:GetSignedUrlCallback):Void { })
	function getSignedUrl(cfg:GetBucketSignedUrlConfig):js.lib.Promise<GetSignedUrlResponse>;
	@:overload(function(metageneration:ts.AnyOf2<String, Float>, callback:BucketLockCallback):Void { })
	function lock(metageneration:ts.AnyOf2<String, Float>):js.lib.Promise<BucketLockResponse>;
	@:overload(function(callback:MakeBucketPrivateCallback):Void { })
	@:overload(function(options:MakeBucketPrivateOptions, callback:MakeBucketPrivateCallback):Void { })
	function makePrivate(?options:MakeBucketPrivateOptions):js.lib.Promise<MakeBucketPrivateResponse>;
	@:overload(function(callback:MakeBucketPublicCallback):Void { })
	@:overload(function(options:MakeBucketPublicOptions, callback:MakeBucketPublicCallback):Void { })
	function makePublic(?options:MakeBucketPublicOptions):js.lib.Promise<MakeBucketPublicResponse>;
	/**
		Get a reference to a Cloud Pub/Sub Notification.
	**/
	function notification(id:String):Notification;
	@:overload(function(callback:SetBucketMetadataCallback):Void { })
	function removeRetentionPeriod():js.lib.Promise<SetBucketMetadataResponse>;
	/**
		Make an authenticated API request.
		
		Make an authenticated API request.
	**/
	@:overload(function(reqOpts:google_cloud.common.DecorateRequestOptions, callback:google_cloud.common.BodyResponseCallback):Void { })
	function request(reqOpts:google_cloud.common.DecorateRequestOptions):js.lib.Promise<ts.Tuple2<Dynamic, Dynamic>>;
	@:overload(function(labels:Labels, callback:SetLabelsCallback):Void { })
	@:overload(function(labels:Labels, options:SetLabelsOptions, callback:SetLabelsCallback):Void { })
	function setLabels(labels:Labels, ?options:SetLabelsOptions):js.lib.Promise<SetLabelsResponse>;
	@:overload(function(duration:Float, callback:SetBucketMetadataCallback):Void { })
	function setRetentionPeriod(duration:Float):js.lib.Promise<SetBucketMetadataResponse>;
	@:overload(function(corsConfiguration:Array<google_cloud.storage.build.src.storage.Cors>, callback:SetBucketMetadataCallback):Void { })
	function setCorsConfiguration(corsConfiguration:Array<google_cloud.storage.build.src.storage.Cors>):js.lib.Promise<SetBucketMetadataResponse>;
	@:overload(function(storageClass:String, callback:SetBucketStorageClassCallback):Void { })
	@:overload(function(storageClass:String, options:SetBucketStorageClassOptions, callback:SetBucketStorageClassCallback):Void { })
	function setStorageClass(storageClass:String, ?options:SetBucketStorageClassOptions):js.lib.Promise<SetBucketMetadataResponse>;
	/**
		Set a user project to be billed for all requests made from this Bucket
		object and any files referenced from this Bucket object.
	**/
	function setUserProject(userProject:String):Void;
	@:overload(function(pathString:String, options:UploadOptions, callback:UploadCallback):Void { })
	@:overload(function(pathString:String, callback:UploadCallback):Void { })
	function upload(pathString:String, ?options:UploadOptions):js.lib.Promise<UploadResponse>;
	@:overload(function(callback:MakeAllFilesPublicPrivateCallback):Void { })
	@:overload(function(options:google_cloud.storage.build.src.bucket.MakeAllFilesPublicPrivateOptions, callback:MakeAllFilesPublicPrivateCallback):Void { })
	function makeAllFilesPublicPrivate_(?options:google_cloud.storage.build.src.bucket.MakeAllFilesPublicPrivateOptions):js.lib.Promise<MakeAllFilesPublicPrivateResponse>;
	function getId():String;
	function disableAutoRetryConditionallyIdempotent_(coreOpts:Dynamic, methodType:google_cloud.storage.build.src.bucket.AvailableServiceObjectMethods):Void;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Bucket;
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
	function on(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Bucket;
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
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Bucket;
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
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Bucket;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Bucket;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Bucket;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):Bucket;
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
	function prependListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Bucket;
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
	function prependOnceListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Bucket;
	static var prototype : Bucket;
}