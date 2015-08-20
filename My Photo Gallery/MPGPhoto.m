//
//  MPGPhoto.m
//  My Photo Gallery
//
//  Created by Polykoi Rotenberg on 19/08/2015.
//  Copyright (c) 2015 Polykoi Rotenberg. All rights reserved.
//

#import "MPGPhoto.h"

@implementation MPGPhoto

#pragma mark -$init method
- (id) initWithTitle:(NSString *)title imageFileName:(NSString *)imageFileName {
    self = [super init];
    if (self) {
        _title = title;
        _imageFileName = imageFileName;
    }
    return self;
}

@end
