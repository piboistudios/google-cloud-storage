package google_cloud.storage;

typedef DeleteFilesOptions = {
	@:optional
	var force : Bool;
	@:optional
	var autoPaginate : Bool;
	@:optional
	var delimiter : String;
	@:optional
	var directory : String;
	@:optional
	var endOffset : String;
	@:optional
	var includeTrailingDelimiter : Bool;
	@:optional
	var prefix : String;
	@:optional
	var maxApiCalls : Float;
	@:optional
	var maxResults : Float;
	@:optional
	var pageToken : String;
	@:optional
	var startOffset : String;
	@:optional
	var userProject : String;
	@:optional
	var versions : Bool;
	@:optional
	var ifGenerationMatch : Float;
	@:optional
	var ifGenerationNotMatch : Float;
	@:optional
	var ifMetagenerationMatch : Float;
	@:optional
	var ifMetagenerationNotMatch : Float;
};