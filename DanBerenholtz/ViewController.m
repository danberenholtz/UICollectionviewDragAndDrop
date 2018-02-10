//
//  ViewController.m
//  DanBerenholtz
//
//  Created by Josh Edson on 2/10/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

#import "ViewController.h"
#import "ImageLoadingCollectionViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.collectionView.dragDelegate = self;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSURL *url = [NSURL URLWithString:@"https://scontent.ftlv5-1.fna.fbcdn.net/v/t31.0-8/10669078_10101230565214322_4328930282122468756_o.jpg?oh=b40b325d372de7f587a677bd09381313&oe=5B0C0AB7"];
    ImageLoadingCollectionViewCell *cell = (ImageLoadingCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    [cell setupWithURL:url];
    return cell;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}
-(NSArray<UIDragItem *> *)collectionView:(UICollectionView *)collectionView itemsForBeginningDragSession:(id<UIDragSession>)session atIndexPath:(NSIndexPath *)indexPath {
    ImageLoadingCollectionViewCell *cell = (ImageLoadingCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    
    NSItemProvider *itemProvider = [[NSItemProvider alloc] initWithObject:cell.imageView.image];
    UIDragItem *item = [[UIDragItem alloc] initWithItemProvider:itemProvider];
    return @[item];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
