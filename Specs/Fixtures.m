#import "Fixtures.h"
#import "ObjectionInjector.h"

@implementation Engine
objection_register(@"Engine")
@synthesize awake;

- (void) awakeFromObjection {
	awake = YES;  
}
@end

@implementation Brakes

@end


@implementation Car
objection_register(@"Car")

@synthesize engine, brakes, awake;

- (void)awakeFromObjection {
  awake = YES;
}

objection_requires(@"engine", @"brakes")
@end

@implementation CarFactory
objection_register_singleton(@"CarFactory")
@end