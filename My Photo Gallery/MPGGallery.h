//
//  MPGGallery.h
//  My Photo Gallery
//
//  Created by Polykoi Rotenberg on 19/08/2015.
//  Copyright (c) 2015 Polykoi Rotenberg. All rights reserved.
//

#import "MPGPhoto.h"
#import <Foundation/Foundation.h>

@interface MPGGallery : NSObject

+ (MPGGallery *)sharedInstance;
- (MPGPhoto *)getGalleryContentAtIndex:(NSInteger)index;
- (NSInteger)getGalleryItemsCount;

@end
