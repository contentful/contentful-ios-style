//
//  UIColor+Contentful.m
//  Pods
//
//  Created by Boris Bügling on 15/12/14.
//
//

#import <EDColor/EDColor.h>

#import "UIColor+Contentful.h"

@implementation UIColor (Contentful)

+(UIColor *)contentfulBackgroundColor {
    return [UIColor colorWithHexString:@"F5F7FA"];
}

+(UIColor *)contentfulDeactivatedColor {
    return [UIColor colorWithHexString:@"B7C2CC"];
}

+(UIColor *)contentfulDeactivatedTabColor {
    return [UIColor colorWithHexString:@"A2A9B1"];
}

+(UIColor *)contentfulPrimaryColor {
    return [UIColor colorWithHexString:@"4A90E2"];
}

+(UIColor *)contentfulTextColor {
    return [UIColor colorWithHexString:@"32363C"];
}

@end
