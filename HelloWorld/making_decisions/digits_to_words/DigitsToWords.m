//
//  DigitsToWords.m
//  HelloWorld
//
//  Created by Дмитрий Назаров on 13.03.2024.
//

#import "DigitsToWords.h"

@implementation DigitsToWords

- (nonnull NSString *) digitsToString: (NSString*) number {
    NSString* result = [[NSString alloc] init];
    for (int i = 0; i < [number length]; i++) {
        NSString* toAppend = [[NSString alloc] init];
        switch ([number characterAtIndex: i]) {
            case '-':
                toAppend = @"minus";
                break;
            case '0':
                toAppend = @"zero";
                break;
            case '1':
                toAppend = @"one";
                break;
            case '2':
                toAppend = @"two";
                break;
            case '3':
                toAppend = @"three";
                break;
            case '4':
                toAppend = @"four";
                break;
            case '5':
                toAppend = @"five";
                break;
            case '6':
                toAppend = @"six";
                break;
            case '7':
                toAppend = @"seven";
                break;
            case '8':
                toAppend = @"eight";
                break;
            case '9':
                toAppend = @"nine";
                break;
            default:
                toAppend = @"unknown symbol";
                break;
        }
        result = [result stringByAppendingFormat: @"%@\n", toAppend];
    }
    return result;
}


+ (void)test {
    int number;
    NSLog(@"Please enter your number:");
    scanf("%i", &number);
    DigitsToWords* digitsToWords = [[DigitsToWords alloc] init];
    NSLog(@"%@", [digitsToWords digitsToString:[NSString stringWithFormat: @"%d", number]]);
}

@end
