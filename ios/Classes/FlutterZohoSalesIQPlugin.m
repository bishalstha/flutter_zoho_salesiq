#import "FlutterZohoSalesIQPlugin.h"
#if __has_include(<flutter_zoho_salesiq/flutter_zoho_salesiq-Swift.h>)
#import <flutter_zoho_salesiq/flutter_zoho_salesiq-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_zoho_salesiq-Swift.h"
#endif

@implementation FlutterZohoSalesIQPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterZohoSalesIQPlugin registerWithRegistrar:registrar];
}
@end
