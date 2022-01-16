package google_cloud.storage.build.src.iam;

typedef PolicyBinding = {
	var role : String;
	var members : Array<String>;
	@:optional
	var condition : Expr;
};