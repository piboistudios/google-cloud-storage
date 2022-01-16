package google_cloud.storage.build.src.acl;

/**
	Cloud Storage uses access control lists (ACLs) to manage object and
	bucket access. ACLs are the mechanism you use to share objects with other
	users and allow other users to access your buckets and objects.
	
	An ACL consists of one or more entries, where each entry grants permissions
	to an entity. Permissions define the actions that can be performed against an
	object or bucket (for example, `READ` or `WRITE`); the entity defines who the
	permission applies to (for example, a specific user or group of users).
	
	Where an `entity` value is accepted, we follow the format the Cloud Storage
	API expects.
	
	Refer to
	https://cloud.google.com/storage/docs/json_api/v1/defaultObjectAccessControls
	for the most up-to-date values.
	
	   - `user-userId`
	   - `user-email`
	   - `group-groupId`
	   - `group-email`
	   - `domain-domain`
	   - `project-team-projectId`
	   - `allUsers`
	   - `allAuthenticatedUsers`
	
	Examples:
	
	   - The user "liz@example.com" would be `user-liz@example.com`.
	   - The group "example@googlegroups.com" would be
	     `group-example@googlegroups.com`.
	   - To refer to all members of the Google Apps for Business domain
	     "example.com", the entity would be `domain-example.com`.
	
	For more detailed information, see
	{@link http://goo.gl/6qBBPO| About Access Control Lists}.
**/
@:jsRequire("@google-cloud/storage/build/src/acl", "Acl") extern class Acl extends AclRoleAccessorMethods {
	function new(options:google_cloud.storage.AclOptions);
	@:native("default")
	var default_ : Acl;
	var pathPrefix : String;
	dynamic function request_(reqOpts:google_cloud.common.DecorateRequestOptions, callback:google_cloud.common.BodyResponseCallback):Void;
	@:overload(function(options:google_cloud.storage.AddAclOptions, callback:google_cloud.storage.AddAclCallback):Void { })
	function add(options:google_cloud.storage.AddAclOptions):js.lib.Promise<google_cloud.storage.AddAclResponse>;
	@:overload(function(options:google_cloud.storage.RemoveAclOptions, callback:google_cloud.storage.RemoveAclCallback):Void { })
	function delete(options:google_cloud.storage.RemoveAclOptions):js.lib.Promise<google_cloud.storage.RemoveAclResponse>;
	@:overload(function(options:google_cloud.storage.GetAclOptions, callback:google_cloud.storage.GetAclCallback):Void { })
	@:overload(function(callback:google_cloud.storage.GetAclCallback):Void { })
	function get(?options:google_cloud.storage.GetAclOptions):js.lib.Promise<google_cloud.storage.GetAclResponse>;
	@:overload(function(options:google_cloud.storage.UpdateAclOptions, callback:google_cloud.storage.UpdateAclCallback):Void { })
	function update(options:google_cloud.storage.UpdateAclOptions):js.lib.Promise<google_cloud.storage.UpdateAclResponse>;
	/**
		Transform API responses to a consistent object format.
	**/
	function makeAclObject_(accessControlObject:google_cloud.storage.AccessControlObject):google_cloud.storage.AccessControlObject;
	/**
		Patch requests up to the bucket's request object.
	**/
	function request(reqOpts:google_cloud.common.DecorateRequestOptions, callback:google_cloud.common.BodyResponseCallback):Void;
	static var prototype : Acl;
}