#import "LocaleObserverPlugin.h"
#if __has_include(<locale_observer/locale_observer-Swift.h>)
#import <locale_observer/locale_observer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "locale_observer-Swift.h"
#endif

@implementation LocaleObserverPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLocaleObserverPlugin registerWithRegistrar:registrar];
}
@end
