#import "CPAppBannerImageBlock.h"

@implementation CPAppBannerImageBlock

- (id)initWithJson:(NSDictionary*)json {
    self = [super init];
    if (self) {
        self.type = CPAppBannerBlockTypeImage;
        
        if ([json objectForKey:@"imageUrl"]) {
            self.imageUrl = [json objectForKey:@"imageUrl"];
        }
        
        self.action = [[CPAppBannerAction alloc] initWithJson:[json objectForKey:@"action"]];
        
        self.scale = 100;
        if ([json objectForKey:@"scale"] && [[json objectForKey:@"scale"] intValue]) {
            self.scale = [[json objectForKey:@"scale"] intValue];
        }
    }
    return self;
}

@end
