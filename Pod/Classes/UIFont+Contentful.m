//
//  UIFont+Contentful.m
//  Pods
//
//  Created by Boris Bügling on 15/12/14.
//
//

#import <LatoFont/UIFont+Lato.h>

#import "UIFont+Contentful.h"

@implementation UIFont (Contentful)

+(UIFont *)bodyTextFont {
    return [UIFont latoFontOfSize:17.0];
}

+(UIFont *)buttonTitleFont {
    return [UIFont latoFontOfSize:19.0];
}

+(UIFont *)smallButtonTitleFont {
    return [UIFont latoFontOfSize:15.0];
}

+(UIFont *)tabTitleFont {
    return [UIFont latoFontOfSize:15.0];
}

+(UIFont *)titleBarFont {
    return [UIFont latoFontOfSize:18.0];
}

@end
