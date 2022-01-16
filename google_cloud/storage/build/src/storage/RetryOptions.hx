package google_cloud.storage.build.src.storage;

typedef RetryOptions = {
	@:optional
	var retryDelayMultiplier : Float;
	@:optional
	var totalTimeout : Float;
	@:optional
	var maxRetryDelay : Float;
	@:optional
	var autoRetry : Bool;
	@:optional
	var maxRetries : Float;
	@:optional
	dynamic function retryableErrorFn(err:google_cloud.common.ApiError):Bool;
	@:optional
	var idempotencyStrategy : IdempotencyStrategy;
};