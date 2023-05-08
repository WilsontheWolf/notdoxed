#include <UIKit/UIKit.h>

@interface City : NSObject 
-(BOOL)isLocalWeatherCity;
@end

%hook City

-(NSString *)name {
    return @"Weather"; 
}

%end

%hook PSUIAppleAccountCell
- (UILabel *)textLabel {
    UILabel *o = %orig;
    [o setText:@"iCloud"];
    return o;
}
%end