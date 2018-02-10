//
//  ImageLoadingCollectionViewCell.m
//  DanBerenholtz
//
//  Created by Josh Edson on 2/10/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

#import "ImageLoadingCollectionViewCell.h"

@implementation ImageLoadingCollectionViewCell

-(void)prepareForReuse {
    self.imageView.image = nil;
    [self.activityIndicator startAnimating];
}

-(void)setupWithURL:(NSURL *)url {
    self.url = url;
    [self.activityIndicator startAnimating];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        NSData *data = [NSData dataWithContentsOfURL:self.url];
        UIImage *image = [UIImage imageWithData:data];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imageView.image = image;
            [self.activityIndicator stopAnimating];
        });
    });
}
@end
