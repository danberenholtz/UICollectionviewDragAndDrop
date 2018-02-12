//
//  DBUser.m
//  DanBerenholtz
//
//  Created by Dan B on 2/12/18.
//  Copyright © 2018 Josh Edson. All rights reserved.
//

#import "DBUser.h"

@implementation DBUser

-(id)init
{
    if (self = [super init])
    {
        // Initialization code here
        DBPhoto *photo1 = [[DBPhoto alloc] init];
        photo1.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo2 = [[DBPhoto alloc] init];
        photo2.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/10293688_10101055714676202_7005288717350493658_o.jpg?oh=5ea854944710d5067552252027660e4f&oe=5B24DCF7";
        
        DBPhoto *photo3 = [[DBPhoto alloc] init];
        photo3.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/10669078_10101230565214322_4328930282122468756_o.jpg?oh=b40b325d372de7f587a677bd09381313&oe=5B0C0AB7";
        
        DBPhoto *photo4 = [[DBPhoto alloc] init];
        photo4.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/188477_777983747252_7278135_n.jpg?oh=425a655aae51ff837e8c6eaab89c048a&oe=5B208763";
        
        DBPhoto *photo5 = [[DBPhoto alloc] init];
        photo5.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/157048_742026096672_596800_n.jpg?oh=47057608499eec3b3f287d6ebda67525&oe=5B14C738";
        
        DBPhoto *photo6 = [[DBPhoto alloc] init];
        photo6.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/35386_703352583702_4046897_n.jpg?oh=01497506a3abfc9887244728786807d8&oe=5B221198";
        
        DBPhoto *photo7 = [[DBPhoto alloc] init];
        photo7.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/24882_672437313152_2518382_n.jpg?oh=e175bfba2c70e0a3793bef64aa3a17fe&oe=5ADF5853";
        
        DBPhoto *photo8 = [[DBPhoto alloc] init];
        photo8.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1929916_535532566362_7716_n.jpg?oh=a48fe5e0c1f7b523072402fac14ba3aa&oe=5B214416";
        
        DBPhoto *photo9 = [[DBPhoto alloc] init];
        photo9.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1929916_535532296902_3754_n.jpg?oh=23ffa3865f4929dd2d823283352041a7&oe=5B105288";
        
        DBPhoto *photo10 = [[DBPhoto alloc] init];
        photo10.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t1.0-9/1929916_535450700422_6160_n.jpg?oh=942de7e7ac655101a5fb5fbb064b5d24&oe=5B10BFD0";
        
        self.photos = [NSMutableArray array];
        [self.photos addObject:photo1];
        [self.photos addObject:photo2];
        [self.photos addObject:photo3];
        [self.photos addObject:photo4];
        [self.photos addObject:photo5];
        [self.photos addObject:photo6];
        [self.photos addObject:photo7];
        [self.photos addObject:photo8];
        [self.photos addObject:photo9];
        [self.photos addObject:photo10];
    }
    return self;
}

@end
