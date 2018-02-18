//
//  ImageLoadingCollectionViewCell.h
//  DanBerenholtz
//
//  Created by Josh Edson on 2/10/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DragAndDropViewController.h"

@interface CollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) DBPhoto *photo;
@property (weak, nonatomic) DragAndDropViewController *delegate;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UIButton *deleteButton;

@end
