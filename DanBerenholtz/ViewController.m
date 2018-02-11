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
@property (nonatomic, strong) NSArray *imageURLS;
@property (nonnull, strong) NSMutableArray *images;
@end

@implementation ViewController

-(void)loadImages {
    for (NSString *u in self.imageURLS) {
        NSURL *url = [NSURL URLWithString:u];
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
        [self.images addObject:image];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.images = [[NSMutableArray alloc] init];
    
    self.imageURLS = @[@"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/10669078_10101230565214322_4328930282122468756_o.jpg?oh=b40b325d372de7f587a677bd09381313&oe=5B0C0AB7",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/10293688_10101055714676202_7005288717350493658_o.jpg?oh=5ea854944710d5067552252027660e4f&oe=5B24DCF7",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/188477_777983747252_7278135_n.jpg?oh=425a655aae51ff837e8c6eaab89c048a&oe=5B208763",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/157048_742026096672_596800_n.jpg?oh=47057608499eec3b3f287d6ebda67525&oe=5B14C738",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/35386_703352583702_4046897_n.jpg?oh=01497506a3abfc9887244728786807d8&oe=5B221198",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/24882_672437313152_2518382_n.jpg?oh=e175bfba2c70e0a3793bef64aa3a17fe&oe=5ADF5853",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1929916_535532566362_7716_n.jpg?oh=a48fe5e0c1f7b523072402fac14ba3aa&oe=5B214416",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1929916_535532296902_3754_n.jpg?oh=23ffa3865f4929dd2d823283352041a7&oe=5B105288",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1929916_535450700422_6160_n.jpg?oh=942de7e7ac655101a5fb5fbb064b5d24&oe=5B10BFD0",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1933778_508253194442_7985_n.jpg?oh=c0a552ae29639692789d402ec80b57d7&oe=5B1403B4",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1928825_508253209412_8914_n.jpg?oh=f78d667feaa87e75ea9f6a8782f09ced&oe=5B0AA20F",
                       @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1928816_508253214402_2026_n.jpg?oh=b9eb0889c3bcbbf1e2f0d3f6a1fdfb1d&oe=5B1779E4",
                       @"https://scontent.ftlv5-1.fna.fbcdn.net/v/t1.0-9/17862275_10102421512915582_5626623808457113757_n.jpg?oh=7c3fc27e8466c43ad99e3cd6b4d15f20&oe=5B0ECD11"
                       ];
    [self loadImages];

    self.collectionView.dragDelegate = self;
    self.collectionView.dropDelegate = self;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

-(BOOL)collectionView:(UICollectionView *)collectionView canHandleDropSession:(id<UIDropSession>)session
{
    return TRUE;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    ImageLoadingCollectionViewCell *cell = (ImageLoadingCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];

    cell.imageView.image = [self.images objectAtIndex:indexPath.row];

    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.images.count;
}

-(UIDropProposal *)collectionView:(UICollectionView *)collectionView dropSessionDidUpdate:(nonnull id<UIDropSession>)session withDestinationIndexPath:(nullable NSIndexPath *)destinationIndexPath {
    
    UICollectionViewDropProposal *dropProposal = [[UICollectionViewDropProposal alloc] initWithDropOperation:UIDropOperationMove intent:UICollectionViewDropIntentInsertAtDestinationIndexPath];
    
    return dropProposal;

}

-(void)collectionView:(UICollectionView *)collectionView performDropWithCoordinator:(id<UICollectionViewDropCoordinator>)coordinator {
    
    UIDragItem *dragItem = coordinator.items.firstObject.dragItem;
    
    [collectionView performBatchUpdates:^{
        NSIndexPath *oldIndexPath = [NSIndexPath indexPathForRow:[self.images indexOfObject:dragItem.localObject] inSection:0];
        [self.images removeObject:dragItem.localObject];
        [self.images insertObject:dragItem.localObject atIndex:coordinator.destinationIndexPath.row];
        
        [collectionView moveItemAtIndexPath:oldIndexPath toIndexPath:coordinator.destinationIndexPath];

    } completion:nil];
    
    [coordinator dropItem:coordinator.items.firstObject.dragItem toItemAtIndexPath:coordinator.destinationIndexPath];
    
}
-(NSArray<UIDragItem *> *)collectionView:(UICollectionView *)collectionView itemsForBeginningDragSession:(id<UIDragSession>)session atIndexPath:(NSIndexPath *)indexPath {

    NSItemProvider *itemProvider = [[NSItemProvider alloc] initWithObject:self.images[indexPath.row]];
    UIDragItem *item = [[UIDragItem alloc] initWithItemProvider:itemProvider];
    item.localObject = self.images[indexPath.row];
    return @[item];

}

@end
