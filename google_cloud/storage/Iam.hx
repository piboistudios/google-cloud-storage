package google_cloud.storage;

/**
	Get and set IAM policies for your Cloud Storage bucket.
	
	See {@link https://cloud.google.com/storage/docs/access-control/iam#short_title_iam_management| Cloud Storage IAM Management}
	See {@link https://cloud.google.com/iam/docs/granting-changing-revoking-access| Granting, Changing, and Revoking Access}
	See {@link https://cloud.google.com/iam/docs/understanding-roles| IAM Roles}
**/
@:jsRequire("@google-cloud/storage", "Iam") extern class Iam {
	function new(bucket:Bucket);
	private var request_ : Dynamic;
	private var resourceId_ : Dynamic;
	@:overload(function(options:GetPolicyOptions, callback:GetPolicyCallback):Void { })
	@:overload(function(callback:GetPolicyCallback):Void { })
	function getPolicy(?options:GetPolicyOptions):js.lib.Promise<GetPolicyResponse>;
	@:overload(function(policy:Policy, callback:SetPolicyCallback):Void { })
	@:overload(function(policy:Policy, options:SetPolicyOptions, callback:SetPolicyCallback):Void { })
	function setPolicy(policy:Policy, ?options:SetPolicyOptions):js.lib.Promise<SetPolicyResponse>;
	@:overload(function(permissions:ts.AnyOf2<String, Array<String>>, callback:TestIamPermissionsCallback):Void { })
	@:overload(function(permissions:ts.AnyOf2<String, Array<String>>, options:TestIamPermissionsOptions, callback:TestIamPermissionsCallback):Void { })
	function testPermissions(permissions:ts.AnyOf2<String, Array<String>>, ?options:TestIamPermissionsOptions):js.lib.Promise<TestIamPermissionsResponse>;
	static var prototype : Iam;
}