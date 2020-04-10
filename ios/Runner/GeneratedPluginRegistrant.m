//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<torch/TorchPlugin.h>)
#import <torch/TorchPlugin.h>
#else
@import torch;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [TorchPlugin registerWithRegistrar:[registry registrarForPlugin:@"TorchPlugin"]];
}

@end
