//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Insert code here...
    NSString *myName = @"Doug Voss";
    
    [self countDownTillIntroduction:4];
    [self printIntroductions:myName];
    
    return YES;
}

// Define new functions here...
- (void)printIntroductions:(NSString *)name
{
    NSString *introduction = [NSString stringWithFormat:@"My name is %@", name];
    NSString *japaneseIntro = [name stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntro);
}

- (void)countDownTillIntroduction:(int)numberOfDays
{
    if (numberOfDays==0)
    {
        NSLog(@"The time has come");
    }
    else
    {
        int oneLessDay = numberOfDays - 1;
        NSLog(@"%d days left until introductions", numberOfDays);
        [self countDownTillIntroduction:oneLessDay];
    }
}

@end
