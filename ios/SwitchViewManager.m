//
//  SwitchViewManager.m
//  rn_native_modules
//
//  Created by Hihi on 02/12/2022.
//

#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"

@interface RCT_EXTERN_MODULE(SwitchViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(label, NSString)
RCT_EXPORT_VIEW_PROPERTY(isOn, CFBoolean)
RCT_EXPORT_VIEW_PROPERTY(onValueChange, RCTBubblingEventBlock)

@end
