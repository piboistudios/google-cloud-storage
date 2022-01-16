package google_cloud.storage;

typedef CreateBucketRequest = {
	@:optional
	var archive : Bool;
	@:optional
	var coldline : Bool;
	@:optional
	var cors : Array<google_cloud.storage.build.src.storage.Cors>;
	@:optional
	var dra : Bool;
	@:optional
	var multiRegional : Bool;
	@:optional
	var nearline : Bool;
	@:optional
	var regional : Bool;
	@:optional
	var requesterPays : Bool;
	@:optional
	var retentionPolicy : Dynamic;
	@:optional
	var standard : Bool;
	@:optional
	var storageClass : String;
	@:optional
	var userProject : String;
	@:optional
	var location : String;
	@:optional
	var versioning : Versioning;
};