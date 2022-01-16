package google_cloud.storage.build.src.acl;

/**
	Attach functionality to a {@link Storage.acl} instance. This will add an
	object for each role group (owners, readers, and writers), with each object
	containing methods to add or delete a type of entity.
	
	As an example, here are a few methods that are created.
	
	   myBucket.acl.readers.deleteGroup('groupId', function(err) {});
	
	   myBucket.acl.owners.addUser('email@example.com', function(err, acl) {});
	
	   myBucket.acl.writers.addDomain('example.com', function(err, acl) {});
**/
@:jsRequire("@google-cloud/storage/build/src/acl", "AclRoleAccessorMethods") extern class AclRoleAccessorMethods {
	function new();
	var owners : { };
	var readers : { };
	var writers : { };
	function _assignAccessMethods(role:String):Void;
	static var prototype : AclRoleAccessorMethods;
	private static var accessMethods : Dynamic;
	private static var entities : Dynamic;
	private static var roles : Dynamic;
}