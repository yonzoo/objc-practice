//
//  Boat.h
//  HelloWorld
//
//  Created by Назаров Дмитрий Алексеевич on 09.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Boat: NSObject

-(void) print;
-(void) setLicenseNumber: (int) number;
-(void) setDeckCount: (int) count;
-(void) horn;
+(void) test;

@end

NS_ASSUME_NONNULL_END
