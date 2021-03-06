#import "CPAppBannerTextBlock.h"

@implementation CPAppBannerTextBlock

- (id)initWithJson:(NSDictionary*)json {
    self = [super init];
    if (self) {
        self.type = CPAppBannerBlockTypeText;
        
        self.text = @"";
        if ([json objectForKey:@"text"]) {
            self.text = [json objectForKey:@"text"];
        }
        
        self.color = @"#000000";
        if ([json objectForKey:@"color"]) {
            self.color = [json objectForKey:@"color"];
        }
        
        self.size = 18;
        if ([json objectForKey:@"size"]) {
            self.size = [[json objectForKey:@"size"] intValue];
        }
        
        self.alignment = CPAppBannerAlignmentCenter;
        if ([[json objectForKey:@"alignment"] isEqual:@"right"]) {
            self.alignment = CPAppBannerAlignmentRight;
        } else if ([[json objectForKey:@"alignment"] isEqual:@"right"]) {
            self.alignment = CPAppBannerAlignmentRight;
        }
    }
    return self;
}

@end

