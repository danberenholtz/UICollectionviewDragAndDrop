//
//  DragAndDropViewController.h
//  DanBerenholtz
//
//  Created by Josh Edson on 2/11/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBPhoto.h"
#import "DBUser.h"

@interface DragAndDropViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

-(void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath;
-(void)deleteItem:(DBPhoto *)item;

@end
