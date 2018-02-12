//
//  DragAndDropViewController.m
//  DanBerenholtz
//
//  Created by Josh Edson on 2/11/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

#import "DragAndDropViewController.h"
#import "ImageLoadingCollectionViewCell.h"
#import "DanBerenholtz-Swift.h"
@interface DragAndDropViewController ()<CustomCollectionViewLayoutDelegate>
//@property (nonnull, strong) NSMutableArray *images;
//@property (nonatomic, strong) NSArray *imageURLS;

@property (nonatomic, strong) UILongPressGestureRecognizer *longPress;
@property (nonatomic, strong) NSMutableArray *photos;
@property (nonatomic) DBPhoto *photo;

@end

@implementation DragAndDropViewController

//-(void)loadImages {
//
//    for (NSString *photoUrl in self.imageURLS) {
////        NSURL *url = [NSURL URLWithString:u];
////        NSData *data = [NSData dataWithContentsOfURL:url];
////        UIImage *image = [UIImage imageWithData:data];
//        [self.images addObject:photoUrl];
//    }
//}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.images = [[NSMutableArray alloc] init];
    
CustomCollectionViewLayout *layout = (CustomCollectionViewLayout *)self.collectionView.collectionViewLayout;
    layout.delegate = self;
    

//    [self loadImages];
    self.longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressPressed:)];
    [self.collectionView addGestureRecognizer:self.longPress];
}

-(void)longPressPressed:(UILongPressGestureRecognizer *) recognizer {
    NSIndexPath *selectedIndexPath = [self.collectionView indexPathForItemAtPoint:[recognizer locationInView:self.collectionView]];
    if (selectedIndexPath == nil) {
        return;
    }
    
    if(recognizer.state == UIGestureRecognizerStateBegan) {
        [self.collectionView beginInteractiveMovementForItemAtIndexPath:selectedIndexPath];
    }
    else if(recognizer.state == UIGestureRecognizerStateChanged) {
        [self.collectionView updateInteractiveMovementTargetPosition:[recognizer locationInView:self.collectionView]];
    }
    else if(recognizer.state == UIGestureRecognizerStateEnded) {
         [self.collectionView endInteractiveMovement];
         [self.collectionView.collectionViewLayout invalidateLayout];
    }
    else {
        [self.collectionView cancelInteractiveMovement];
    }
    
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ImageLoadingCollectionViewCell *cell = (ImageLoadingCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.delegate = self;
//    cell.imageView.image = [self.images objectAtIndex:indexPath.row];
    
    DBPhoto *photo;
    photo.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
//    photo = self.photos[indexPath.row];
    cell.photo = photo;
    
    return cell;
}
-(void)deleteItem:(UIImage *)item {
//
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[self.images indexOfObject:item] inSection:0];
//    CustomCollectionViewLayout *layout = (CustomCollectionViewLayout *)self.collectionView.collectionViewLayout;
//    layout.cache = @[];
//    [self.collectionView performBatchUpdates:^{
//    [self.images removeObject:item];
//    [self.collectionView deleteItemsAtIndexPaths:@[indexPath]];
//    } completion:nil];
//
//    [self.collectionView.collectionViewLayout invalidateLayout];
    

}
-(NSInteger)collectionView:(UICollectionView *)collectionView columnSpanForPhotoAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 2;
    }
    else {
        return 1;
    }
}

-(void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    
    //    UIImage *img = [self.images objectAtIndex:sourceIndexPath.row];
    //
    //    [self.images removeObject:img];
    //    [self.images insertObject:img atIndex:destinationIndexPath.row];
    
    [self.collectionView.collectionViewLayout invalidateLayout];
    
    
}
-(BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath {
    return TRUE;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 1;//self.imageURLS.count;
}
- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    NSLog(@"To be implemented");
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
    NSLog(@"To be implemented");
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    NSLog(@"To be implemented");
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    NSLog(@"To be implemented");
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"To be implemented");
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"To be implemented");
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    NSLog(@"To be implemented");
}

- (void)setNeedsFocusUpdate {
    NSLog(@"To be implemented");
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    return YES;
}

- (void)updateFocusIfNeeded {
    NSLog(@"To be implemented");
}

@end
