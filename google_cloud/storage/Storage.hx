package google_cloud.storage;

/**
	<h4>ACLs</h4>
	Cloud Storage uses access control lists (ACLs) to manage object and
	bucket access. ACLs are the mechanism you use to share files with other users
	and allow other users to access your buckets and files.
	
	To learn more about ACLs, read this overview on
	{@link https://cloud.google.com/storage/docs/access-control| Access Control}.
	
	See {@link https://cloud.google.com/storage/docs/overview| Cloud Storage overview}
	See {@link https://cloud.google.com/storage/docs/access-control| Access Control}
**/
@:jsRequire("@google-cloud/storage", "Storage") extern class Storage extends google_cloud.common.Service {
	/**
		Constructs the Storage client.
	**/
	function new(?options:StorageOptions);
	/**
		Reference to {@link Storage.acl}.
	**/
	var acl : {
		var OWNER_ROLE : String;
		var READER_ROLE : String;
		var WRITER_ROLE : String;
	};
	function getBucketsStream():node.stream.Readable;
	function getHmacKeysStream():node.stream.Readable;
	var retryOptions : google_cloud.storage.build.src.storage.RetryOptions;
	/**
		Get a reference to a Cloud Storage bucket.
	**/
	function bucket(name:String, ?options:BucketOptions):Bucket;
	/**
		Reference a channel to receive notifications about changes to your bucket.
	**/
	function channel(id:String, resourceId:String):Channel;
	@:overload(function(name:String, callback:BucketCallback):Void { })
	@:overload(function(name:String, metadata:CreateBucketRequest, callback:BucketCallback):Void { })
	@:overload(function(name:String, metadata:CreateBucketRequest, callback:BucketCallback):Void { })
	function createBucket(name:String, ?metadata:CreateBucketRequest):js.lib.Promise<CreateBucketResponse>;
	@:overload(function(serviceAccountEmail:String, callback:CreateHmacKeyCallback):Void { })
	@:overload(function(serviceAccountEmail:String, options:CreateHmacKeyOptions, callback:CreateHmacKeyCallback):Void { })
	function createHmacKey(serviceAccountEmail:String, ?options:CreateHmacKeyOptions):js.lib.Promise<CreateHmacKeyResponse>;
	@:overload(function(options:GetBucketsRequest, callback:GetBucketsCallback):Void { })
	@:overload(function(callback:GetBucketsCallback):Void { })
	function getBuckets(?options:GetBucketsRequest):js.lib.Promise<GetBucketsResponse>;
	/**
		Retrieves a list of HMAC keys matching the criteria.
		
		The authenticated user must have storage.hmacKeys.list permission for the project in which the key exists.
	**/
	@:overload(function(callback:GetHmacKeysCallback):Void { })
	@:overload(function(options:GetHmacKeysOptions, callback:GetHmacKeysCallback):Void { })
	function getHmacKeys(?options:GetHmacKeysOptions):js.lib.Promise<GetHmacKeysResponse>;
	@:overload(function(?options:GetServiceAccountOptions):js.lib.Promise<GetServiceAccountResponse> { })
	@:overload(function(options:GetServiceAccountOptions, callback:GetServiceAccountCallback):Void { })
	@:overload(function(callback:GetServiceAccountCallback):Void { })
	function getServiceAccount(?options:GetServiceAccountOptions):js.lib.Promise<GetServiceAccountResponse>;
	/**
		Get a reference to an HmacKey object.
		Note: this does not fetch the HMAC key's metadata. Use HmacKey#get() to
		retrieve and populate the metadata.
		
		To get a reference to an HMAC key that's not created for a service
		account in the same project used to instantiate the Storage client,
		supply the project's ID as `projectId` in the `options` argument.
	**/
	function hmacKey(accessId:String, ?options:google_cloud.storage.build.src.hmackey.HmacKeyOptions):HmacKey;
	static var prototype : Storage;
	/**
		{@link Bucket} class.
	**/
	static var Bucket : {
		var prototype : Bucket;
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			const { once, EventEmitter } = require('events');
			
			async function run() {
			   const ee = new EventEmitter();
			
			   process.nextTick(() => {
			     ee.emit('myevent', 42);
			   });
			
			   const [value] = await once(ee, 'myevent');
			   console.log(value);
			
			   const err = new Error('kaboom');
			   process.nextTick(() => {
			     ee.emit('error', err);
			   });
			
			   try {
			     await once(ee, 'myevent');
			   } catch (err) {
			     console.log('error happened', err);
			   }
			}
			
			run();
			```
			
			The special handling of the `'error'` event is only used when `events.once()`is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			   .then(([err]) => console.log('ok', err.message))
			   .catch((err) => console.log('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			   try {
			     await once(emitter, event, { signal });
			     console.log('event emitted!');
			   } catch (error) {
			     if (error.name === 'AbortError') {
			       console.error('Waiting for the event was canceled!');
			     } else {
			       console.error('There was an error', error.message);
			     }
			   }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:Storage, eventName:String, ?options:Storage):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:Storage, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Storage):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			const { on, EventEmitter } = require('events');
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo')) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			const { on, EventEmitter } = require('events');
			const ac = new AbortController();
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
		**/
		function on(emitter:global.nodejs.EventEmitter, eventName:String, ?options:Storage):js.lib.AsyncIterableIterator<Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName`registered on the given `emitter`.
			
			```js
			const { EventEmitter, listenerCount } = require('events');
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			const { getEventListeners, EventEmitter } = require('events');
			
			{
			   const ee = new EventEmitter();
			   const listener = () => console.log('Events are fun');
			   ee.on('foo', listener);
			   getEventListeners(ee, 'foo'); // [listener]
			}
			{
			   const et = new EventTarget();
			   const listener = () => console.log('Events are fun');
			   et.addEventListener('foo', listener);
			   getEventListeners(et, 'foo'); // [listener]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<global.nodejs.EventEmitter, Storage>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	/**
		{@link Channel} class.
	**/
	static var Channel : {
		var prototype : Channel;
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			const { once, EventEmitter } = require('events');
			
			async function run() {
			   const ee = new EventEmitter();
			
			   process.nextTick(() => {
			     ee.emit('myevent', 42);
			   });
			
			   const [value] = await once(ee, 'myevent');
			   console.log(value);
			
			   const err = new Error('kaboom');
			   process.nextTick(() => {
			     ee.emit('error', err);
			   });
			
			   try {
			     await once(ee, 'myevent');
			   } catch (err) {
			     console.log('error happened', err);
			   }
			}
			
			run();
			```
			
			The special handling of the `'error'` event is only used when `events.once()`is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			   .then(([err]) => console.log('ok', err.message))
			   .catch((err) => console.log('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			   try {
			     await once(emitter, event, { signal });
			     console.log('event emitted!');
			   } catch (error) {
			     if (error.name === 'AbortError') {
			       console.error('Waiting for the event was canceled!');
			     } else {
			       console.error('There was an error', error.message);
			     }
			   }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:Storage, eventName:String, ?options:Storage):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:Storage, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Storage):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			const { on, EventEmitter } = require('events');
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo')) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			const { on, EventEmitter } = require('events');
			const ac = new AbortController();
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
		**/
		function on(emitter:global.nodejs.EventEmitter, eventName:String, ?options:Storage):js.lib.AsyncIterableIterator<Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName`registered on the given `emitter`.
			
			```js
			const { EventEmitter, listenerCount } = require('events');
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			const { getEventListeners, EventEmitter } = require('events');
			
			{
			   const ee = new EventEmitter();
			   const listener = () => console.log('Events are fun');
			   ee.on('foo', listener);
			   getEventListeners(ee, 'foo'); // [listener]
			}
			{
			   const et = new EventTarget();
			   const listener = () => console.log('Events are fun');
			   et.addEventListener('foo', listener);
			   getEventListeners(et, 'foo'); // [listener]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<global.nodejs.EventEmitter, Storage>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	/**
		{@link File} class.
	**/
	static var File : {
		var prototype : File;
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			const { once, EventEmitter } = require('events');
			
			async function run() {
			   const ee = new EventEmitter();
			
			   process.nextTick(() => {
			     ee.emit('myevent', 42);
			   });
			
			   const [value] = await once(ee, 'myevent');
			   console.log(value);
			
			   const err = new Error('kaboom');
			   process.nextTick(() => {
			     ee.emit('error', err);
			   });
			
			   try {
			     await once(ee, 'myevent');
			   } catch (err) {
			     console.log('error happened', err);
			   }
			}
			
			run();
			```
			
			The special handling of the `'error'` event is only used when `events.once()`is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			   .then(([err]) => console.log('ok', err.message))
			   .catch((err) => console.log('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			   try {
			     await once(emitter, event, { signal });
			     console.log('event emitted!');
			   } catch (error) {
			     if (error.name === 'AbortError') {
			       console.error('Waiting for the event was canceled!');
			     } else {
			       console.error('There was an error', error.message);
			     }
			   }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:Storage, eventName:String, ?options:Storage):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:Storage, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Storage):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			const { on, EventEmitter } = require('events');
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo')) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			const { on, EventEmitter } = require('events');
			const ac = new AbortController();
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
		**/
		function on(emitter:global.nodejs.EventEmitter, eventName:String, ?options:Storage):js.lib.AsyncIterableIterator<Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName`registered on the given `emitter`.
			
			```js
			const { EventEmitter, listenerCount } = require('events');
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			const { getEventListeners, EventEmitter } = require('events');
			
			{
			   const ee = new EventEmitter();
			   const listener = () => console.log('Events are fun');
			   ee.on('foo', listener);
			   getEventListeners(ee, 'foo'); // [listener]
			}
			{
			   const et = new EventTarget();
			   const listener = () => console.log('Events are fun');
			   et.addEventListener('foo', listener);
			   getEventListeners(et, 'foo'); // [listener]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<global.nodejs.EventEmitter, Storage>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	/**
		{@link HmacKey} class.
	**/
	static var HmacKey : {
		var prototype : HmacKey;
		/**
			Creates a `Promise` that is fulfilled when the `EventEmitter` emits the given
			event or that is rejected if the `EventEmitter` emits `'error'` while waiting.
			The `Promise` will resolve with an array of all the arguments emitted to the
			given event.
			
			This method is intentionally generic and works with the web platform [EventTarget](https://dom.spec.whatwg.org/#interface-eventtarget) interface, which has no special`'error'` event
			semantics and does not listen to the `'error'` event.
			
			```js
			const { once, EventEmitter } = require('events');
			
			async function run() {
			   const ee = new EventEmitter();
			
			   process.nextTick(() => {
			     ee.emit('myevent', 42);
			   });
			
			   const [value] = await once(ee, 'myevent');
			   console.log(value);
			
			   const err = new Error('kaboom');
			   process.nextTick(() => {
			     ee.emit('error', err);
			   });
			
			   try {
			     await once(ee, 'myevent');
			   } catch (err) {
			     console.log('error happened', err);
			   }
			}
			
			run();
			```
			
			The special handling of the `'error'` event is only used when `events.once()`is used to wait for another event. If `events.once()` is used to wait for the
			'`error'` event itself, then it is treated as any other kind of event without
			special handling:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			
			once(ee, 'error')
			   .then(([err]) => console.log('ok', err.message))
			   .catch((err) => console.log('error', err.message));
			
			ee.emit('error', new Error('boom'));
			
			// Prints: ok boom
			```
			
			An `AbortSignal` can be used to cancel waiting for the event:
			
			```js
			const { EventEmitter, once } = require('events');
			
			const ee = new EventEmitter();
			const ac = new AbortController();
			
			async function foo(emitter, event, signal) {
			   try {
			     await once(emitter, event, { signal });
			     console.log('event emitted!');
			   } catch (error) {
			     if (error.name === 'AbortError') {
			       console.error('Waiting for the event was canceled!');
			     } else {
			       console.error('There was an error', error.message);
			     }
			   }
			}
			
			foo(ee, 'foo', ac.signal);
			ac.abort(); // Abort waiting for the event
			ee.emit('foo'); // Prints: Waiting for the event was canceled!
			```
		**/
		@:overload(function(emitter:Storage, eventName:String, ?options:Storage):js.lib.Promise<Array<Dynamic>> { })
		function once(emitter:Storage, eventName:ts.AnyOf2<String, js.lib.Symbol>, ?options:Storage):js.lib.Promise<Array<Dynamic>>;
		/**
			```js
			const { on, EventEmitter } = require('events');
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo')) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			```
			
			Returns an `AsyncIterator` that iterates `eventName` events. It will throw
			if the `EventEmitter` emits `'error'`. It removes all listeners when
			exiting the loop. The `value` returned by each iteration is an array
			composed of the emitted event arguments.
			
			An `AbortSignal` can be used to cancel waiting on events:
			
			```js
			const { on, EventEmitter } = require('events');
			const ac = new AbortController();
			
			(async () => {
			   const ee = new EventEmitter();
			
			   // Emit later on
			   process.nextTick(() => {
			     ee.emit('foo', 'bar');
			     ee.emit('foo', 42);
			   });
			
			   for await (const event of on(ee, 'foo', { signal: ac.signal })) {
			     // The execution of this inner block is synchronous and it
			     // processes one event at a time (even with await). Do not use
			     // if concurrent execution is required.
			     console.log(event); // prints ['bar'] [42]
			   }
			   // Unreachable here
			})();
			
			process.nextTick(() => ac.abort());
			```
		**/
		function on(emitter:global.nodejs.EventEmitter, eventName:String, ?options:Storage):js.lib.AsyncIterableIterator<Dynamic>;
		/**
			A class method that returns the number of listeners for the given `eventName`registered on the given `emitter`.
			
			```js
			const { EventEmitter, listenerCount } = require('events');
			const myEmitter = new EventEmitter();
			myEmitter.on('event', () => {});
			myEmitter.on('event', () => {});
			console.log(listenerCount(myEmitter, 'event'));
			// Prints: 2
			```
		**/
		function listenerCount(emitter:global.nodejs.EventEmitter, eventName:ts.AnyOf2<String, js.lib.Symbol>):Float;
		/**
			Returns a copy of the array of listeners for the event named `eventName`.
			
			For `EventEmitter`s this behaves exactly the same as calling `.listeners` on
			the emitter.
			
			For `EventTarget`s this is the only way to get the event listeners for the
			event target. This is useful for debugging and diagnostic purposes.
			
			```js
			const { getEventListeners, EventEmitter } = require('events');
			
			{
			   const ee = new EventEmitter();
			   const listener = () => console.log('Events are fun');
			   ee.on('foo', listener);
			   getEventListeners(ee, 'foo'); // [listener]
			}
			{
			   const et = new EventTarget();
			   const listener = () => console.log('Events are fun');
			   et.addEventListener('foo', listener);
			   getEventListeners(et, 'foo'); // [listener]
			}
			```
		**/
		function getEventListeners(emitter:ts.AnyOf2<global.nodejs.EventEmitter, Storage>, name:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
		/**
			This symbol shall be used to install a listener for only monitoring `'error'`
			events. Listeners installed using this symbol are called before the regular
			`'error'` listeners are called.
			
			Installing a listener using this symbol does not change the behavior once an
			`'error'` event is emitted, therefore the process will still crash if no
			regular `'error'` listener is installed.
		**/
		final errorMonitor : js.lib.Symbol;
		final captureRejectionSymbol : js.lib.Symbol;
		/**
			Sets or gets the default captureRejection value for all emitters.
		**/
		var captureRejections : Bool;
		var defaultMaxListeners : Float;
	};
	@:native("acl")
	static var acl_ : {
		var OWNER_ROLE : String;
		var READER_ROLE : String;
		var WRITER_ROLE : String;
	};
	private static var sanitizeEndpoint : Dynamic;
}