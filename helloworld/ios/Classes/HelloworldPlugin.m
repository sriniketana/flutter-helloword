#import "HelloworldPlugin.h"
#if __has_include(<helloworld/helloworld-Swift.h>)
#import <helloworld/helloworld-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "helloworld-Swift.h"
#endif

@implementation HelloworldPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHelloworldPlugin registerWithRegistrar:registrar];
}
@end
