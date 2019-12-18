//
//  UIFont+Contentful.m
//  Pods
//
//  Created by Boris Bügling on 15/12/14.
//
//


#import "UIFont+Contentful.h"

@implementation UIFont (Contentful)

+(UIFont *)bodyTextFont {
    return [UIFont systemFontOfSize:17.0];
}

+(UIFont *)boldTitleFont {
    return [UIFont boldSystemFontOfSize:18.0];
}

+(UIFont *)buttonTitleFont {
    return [UIFont systemFontOfSize:19.0];
}

+(UIFont *)smallButtonTitleFont {
    return [UIFont systemFontOfSize:15.0];
}

+(UIFont *)tabTitleFont {
    return [UIFont systemFontOfSize:15.0];
}

+(UIFont *)titleBarFont {
    return [UIFont systemFontOfSize:18.0];
}

@end
