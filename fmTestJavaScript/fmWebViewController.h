//
//  fmWebViewController.h
//  fmTestJavaScript
//
//  Created by 柯浩然 on 8/24/18.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>
@protocol fmJSProtocol<JSExport>
- (void)showShare:(NSString *)shareString;
@end

@interface fmWebViewController : UIViewController<fmJSProtocol>

@property(nonatomic, strong) NSString *URLString;

@end
