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
}

@end
