//
//  ImageLoadingCollectionViewCell.h
//  DanBerenholtz
//
//  Created by Josh Edson on 2/10/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DragAndDropViewController.h"
@interface ImageLoadingCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) DragAndDropViewController *delegate;
@end
