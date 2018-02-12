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
        
        DBPhoto *photo11 = [[DBPhoto alloc] init];
        photo11.urlStandard = @"https://scontent.xx.fbcdn.net/v/t31.0-8/1146180_366935773435812_9294882_o.jpg?oh=f25283f0d43948a16e5453c653738353&oe=5B1D21F4";
        
        DBPhoto *photo12 = [[DBPhoto alloc] init];
        photo12.urlStandard = @"https://scontent.xx.fbcdn.net/v/t1.0-9/1795755_463756813753707_2004467787_n.jpg?oh=c4caa949a23234ef9184f0a0b02c8932&oe=5B17EBC1";
        
        DBPhoto *photo13 = [[DBPhoto alloc] init];
        photo13.urlStandard = @"https://scontent.xx.fbcdn.net/v/t1.0-9/1965033_472462502883138_1685349383_n.jpg?oh=2abfb1c5cb81c41d15b4fff0b090c7d5&oe=5B1178EF";
        
        DBPhoto *photo14 = [[DBPhoto alloc] init];
        photo14.urlStandard = @"https://scontent.xx.fbcdn.net/v/t31.0-8/1498980_607725212690199_1661146671845413193_o.jpg?oh=3a9133aacd04be891ad110e52a17266f&oe=5B25136C";
        
        DBPhoto *photo15 = [[DBPhoto alloc] init];
        photo15.urlStandard = @"https://scontent.xx.fbcdn.net/v/t1.0-9/11108199_698855593577160_5403235544866142917_n.jpg?oh=b56b1821a5ab1d3f47335f987cb42944&oe=5B1FD790";
        
        DBPhoto *photo16 = [[DBPhoto alloc] init];
        photo16.urlStandard = @"https://scontent.xx.fbcdn.net/v/t1.0-9/13434876_889563354506382_2177250972739103146_n.jpg?oh=53f86a8f96cf97a481565e7c3f1b0e29&oe=5B0B4FF0";
        
        DBPhoto *photo17 = [[DBPhoto alloc] init];
        photo17.urlStandard = @"https://scontent.xx.fbcdn.net/v/t1.0-9/16996320_1130763933719655_3286832530362358386_n.jpg?oh=d17458d78b5a2152adecc48e2b78f11f&oe=5B1AD7A6";
        
        DBPhoto *photo18 = [[DBPhoto alloc] init];
        photo18.urlStandard = @"https://scontent.xx.fbcdn.net/v/t1.0-9/18528062_1210048175791230_2347026898511749398_n.jpg?oh=109c70087f584c53f0fa66e3bc468fc8&oe=5B269FA9";
        
        DBPhoto *photo19 = [[DBPhoto alloc] init];
        photo19.urlStandard = @"https://scontent.xx.fbcdn.net/v/t31.0-8/22382325_1341540262642020_1907382325016791699_o.jpg?oh=171dff11ee7c5969ac2175c10aa41713&oe=5B19CAEF";
        
        DBPhoto *photo20 = [[DBPhoto alloc] init];
        photo20.urlStandard = @"https://scontent.xx.fbcdn.net/v/t1.0-9/1923973_1035251994888_2557_n.jpg?oh=3676812c09687613c5d5ff5e782a2e79&oe=5B167960";
        
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
        [self.photos addObject:photo11];
        [self.photos addObject:photo12];
        [self.photos addObject:photo13];
        [self.photos addObject:photo14];
        [self.photos addObject:photo15];
        [self.photos addObject:photo16];
        [self.photos addObject:photo17];
        [self.photos addObject:photo18];
        [self.photos addObject:photo19];
        [self.photos addObject:photo20];
    }
    return self;
}

@end
