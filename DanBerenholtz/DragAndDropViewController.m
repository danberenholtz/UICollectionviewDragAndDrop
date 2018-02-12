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

@property (nonatomic, strong) UILongPressGestureRecognizer *longPress;
@property (nonatomic, strong) NSMutableArray *photos;
@property (nonatomic) DBPhoto *photo;

@end

@implementation DragAndDropViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomCollectionViewLayout *layout = (CustomCollectionViewLayout *)self.collectionView.collectionViewLayout;
    layout.delegate = self;
    
    self.longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressPressed:)];
    [self.collectionView addGestureRecognizer:self.longPress];
    
    DBUser *user = [[DBUser alloc] init];
    self.photos = user.photos;
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
    
    DBPhoto *photo;
    photo = self.photos[indexPath.row];
    cell.photo = photo;
    
    return cell;
}
-(void)deleteItem:(DBPhoto *)item {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[self.photos indexOfObject:item] inSection:0];
    CustomCollectionViewLayout *layout = (CustomCollectionViewLayout *)self.collectionView.collectionViewLayout;
    layout.cache = @[];
    [self.collectionView performBatchUpdates:^{
    [self.photos removeObject:item];
    [self.collectionView deleteItemsAtIndexPaths:@[indexPath]];
    } completion:nil];

    [self.collectionView.collectionViewLayout invalidateLayout];
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
    UIImage *img = [self.photos objectAtIndex:sourceIndexPath.row];

    [self.photos removeObject:img];
    [self.photos insertObject:img atIndex:destinationIndexPath.row];
    
    [self.collectionView.collectionViewLayout invalidateLayout];
}

-(BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath {
    return TRUE;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.photos.count;
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
