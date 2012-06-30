#import "Numbers.h"

@implementation Numbers
+ (FUNCTION2)sum {
    return [[^(NSNumber *a, NSNumber *b) {
        return [NSNumber numberWithDouble:a.doubleValue + b.doubleValue];
    } copy] autorelease];
}

+ (FUNCTION2)average {
    __block int count = 1;
    return [[^(NSNumber *previousAverage, NSNumber *number) {
        count++;
        return [NSNumber numberWithDouble:previousAverage.doubleValue + ((number.doubleValue - previousAverage.doubleValue)/count)];
    } copy] autorelease];
}

+ (FUNCTION1)multiplyBy:(NSNumber *)multiplier {
    return [[^(NSNumber *number) {
        return [NSNumber numberWithDouble:number.doubleValue * multiplier.doubleValue];
    } copy] autorelease];

}

+ (FUNCTION1)divideBy:(NSNumber *)divisor {
    return [[^(NSNumber *number) {
        return [NSNumber numberWithDouble:number.doubleValue / divisor.doubleValue];
    } copy] autorelease];
}

+ (FUNCTION1)add:(NSNumber *)addition {
    return [[^(NSNumber *number) {
        return [NSNumber numberWithDouble:number.doubleValue + addition.doubleValue];
    } copy] autorelease];
}

+ (FUNCTION1)substract:(NSNumber *)subtractor {
    return [[^(NSNumber *number) {
        return [NSNumber numberWithDouble:number.doubleValue - subtractor.doubleValue];
    } copy] autorelease];
}
@end