package google_cloud.storage;

typedef GetNotificationCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, notification:Notification) -> Void, (err:Null<js.lib.Error>, notification:Notification, apiResponse:Dynamic) -> Void>;