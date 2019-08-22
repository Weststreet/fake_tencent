#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}



# pragma mark - AppDelegate

-(BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    return [QQApiInterface handleOpenURL:url delegate:self] || ([TencentOAuth CanHandleOpenURL:url] && [TencentOAuth HandleOpenURL:url]);
}

-(BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [QQApiInterface handleOpenURL:url delegate:self] || ([TencentOAuth CanHandleOpenURL:url] && [TencentOAuth HandleOpenURL:url]);
}

-(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    return [QQApiInterface handleOpenURL:url delegate:self] || ([TencentOAuth CanHandleOpenURL:url] && [TencentOAuth HandleOpenURL:url]);
}

@end
