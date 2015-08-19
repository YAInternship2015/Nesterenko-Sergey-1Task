//
//  MPGPhoto.h
//  My Photo Gallery
//
//  Created by Polykoi Rotenberg on 19/08/2015.
//  Copyright (c) 2015 Polykoi Rotenberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MPGPhoto : NSObject

@property (nonatomic, weak) NSString *title;
@property (nonatomic, weak) NSString *imageFileName;

- (id)initWithTitle:(NSString *)title imageFileName:(NSString *)imageFileName;

@end
