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
        photo2.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo3 = [[DBPhoto alloc] init];
        photo3.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo4 = [[DBPhoto alloc] init];
        photo4.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo5 = [[DBPhoto alloc] init];
        photo5.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo6 = [[DBPhoto alloc] init];
        photo6.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo7 = [[DBPhoto alloc] init];
        photo7.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo8 = [[DBPhoto alloc] init];
        photo8.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo9 = [[DBPhoto alloc] init];
        photo9.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
        DBPhoto *photo10 = [[DBPhoto alloc] init];
        photo10.urlStandard = @"https://scontent.ftlv6-1.fna.fbcdn.net/v/t31.0-8/735951_10100511094100202_1199005628_o.jpg?oh=eb6115fd001db111e376263c713a0e41&oe=5B141744";
        
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
