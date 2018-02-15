//
//  ImageLoadingCollectionViewCell.m
//  DanBerenholtz
//
//  Created by Josh Edson on 2/10/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

#import "CollectionViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation CollectionViewCell

-(void)prepareForReuse {
    [super prepareForReuse];
    self.contentView.layer.shadowRadius = 0.0;
    self.contentView.layer.shadowOpacity = 0.0;
    self.contentView.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.contentView.layer.shadowColor = [UIColor clearColor].CGColor;
 //   self.imageView.image = nil;
}
- (IBAction)deleteItemPressed:(id)sender {
    [self.delegate deleteItem:self.photo];
}

- (void) setPhoto:(DBPhoto *)photo
{
    _photo = photo;
//    self.deleteButton.alpha = 0;
//    __weak ImageLoadingCollectionViewCell *weakSelf = self;
    self.photoImageView.backgroundColor = [UIColor lightGrayColor];
    self.photoImageView.layer.cornerRadius = 40;
    self.photoImageView.clipsToBounds = YES;
    [self.photoImageView sd_setImageWithURL:[NSURL URLWithString:photo.urlStandard] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
//        weakSelf.deleteButton.alpha = 1;
    }];
}

@end
