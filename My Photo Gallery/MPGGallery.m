//
//  MPGGallery.m
//  My Photo Gallery
//
//  Created by Polykoi Rotenberg on 19/08/2015.
//  Copyright (c) 2015 Polykoi Rotenberg. All rights reserved.
//

#import "MPGGallery.h"

@implementation MPGGallery

NSArray *photos;

#pragma mark -$init method
- (id)init {
    self = [super init];
    if (self) {
        MPGPhoto *photo0 = [[MPGPhoto alloc] initWithTitle:@"Moon Phases" imageFileName:@"Moon-phases.jpg"];
        MPGPhoto *photo1 = [[MPGPhoto alloc] initWithTitle:@"Camera In The Roses" imageFileName:@"Camera-in-the-roses.jpg"];
        MPGPhoto *photo2 = [[MPGPhoto alloc] initWithTitle:@"Long Dock" imageFileName:@"Long-dock.jpg"];
        MPGPhoto *photo3 = [[MPGPhoto alloc] initWithTitle:@"Long Exit" imageFileName:@"Long-exit.jpg"];
        MPGPhoto *photo4 = [[MPGPhoto alloc] initWithTitle:@"Old Man" imageFileName:@"Old-man.jpg"];
        MPGPhoto *photo5 = [[MPGPhoto alloc] initWithTitle:@"Road" imageFileName:@"Road.jpeg"];
        MPGPhoto *photo6 = [[MPGPhoto alloc] initWithTitle:@"Seats" imageFileName:@"seats.jpg"];
        MPGPhoto *photo7 = [[MPGPhoto alloc] initWithTitle:@"Skater" imageFileName:@"Skater.jpg"];
        MPGPhoto *photo8 = [[MPGPhoto alloc] initWithTitle:@"Trees In The Lake" imageFileName:@"Trees-in-the-lake.jpg"];
        MPGPhoto *photo9 = [[MPGPhoto alloc] initWithTitle:@"Windows Behind The Tree" imageFileName:@"Windows-behind-the-tree.jpg"];
        photos = @[photo0, photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9];
    }
    return self;
}

#pragma mark -$shared instance creation/invocation
+ (MPGGallery *)sharedInstance {
    static MPGGallery *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[MPGGallery alloc] init];
    });
    return _sharedInstance;
}

#pragma mark -$data access methods
- (MPGPhoto *)getGalleryContentAtIndex:(NSInteger)index {
    return photos[index];
}

- (NSInteger)getGalleryItemsCount {
    return photos.count;
}


@end
