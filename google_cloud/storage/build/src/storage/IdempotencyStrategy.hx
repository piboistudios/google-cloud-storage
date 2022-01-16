package google_cloud.storage.build.src.storage;

@:jsRequire("@google-cloud/storage/build/src/storage", "IdempotencyStrategy") @:enum extern abstract IdempotencyStrategy(Int) from Int to Int {
	var RetryAlways;
	var RetryConditional;
	var RetryNever;
}