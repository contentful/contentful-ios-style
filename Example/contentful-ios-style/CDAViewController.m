//
//  CDAViewController.m
//  contentful-ios-style
//
//  Created by Boris Bügling on 12/15/2014.
//  Copyright (c) 2014 Boris Bügling. All rights reserved.
//

#import <objc/runtime.h>
#import <ContentfulStyle/UIColor+Contentful.h>

// From: http://google-toolbox-for-mac.googlecode.com/svn@19/tags/google-toolbox-for-mac-1.5.1/UnitTesting/GTMIPhoneUnitTestDelegate.m
static int MethodSort(const void *a, const void *b) {
    const char *nameA = sel_getName(method_getName(*(Method*)a));
    const char *nameB = sel_getName(method_getName(*(Method*)b));
    return strcmp(nameA, nameB);
}

#import "CDAViewController.h"

@interface CDAViewController ()

@end

@implementation CDAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    CGFloat yPos = 20.0;

    for (NSString* fontSelector in @[@"bodyTextFont", @"buttonTitleFont", @"smallButtonTitleFont", @"tabTitleFont", @"titleBarFont"]) {
        UILabel* someLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0, yPos,
                                                                       self.view.frame.size.width, 40.0)];

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        someLabel.font = [(id)[UIFont class] performSelector:NSSelectorFromString(fontSelector)];
#pragma clang diagnostic pop

        someLabel.text = fontSelector;
        [self.view addSubview:someLabel];

        yPos += someLabel.frame.size.height + 10.0;
    }

    unsigned int numberOfMethods = 0;
    Method* methods = class_copyMethodList(object_getClass([UIColor class]), &numberOfMethods);
    qsort(methods, numberOfMethods, sizeof(Method), MethodSort);

    CGFloat xPos = 0.0;

    [UIColor contentfulBackgroundColor];

    for (int i = 0; i < numberOfMethods; i++) {
        SEL selector = method_getName(methods[i]);

        NSString* methodName = NSStringFromSelector(selector);
        if (![methodName hasPrefix:@"contentful"]) {
            continue;
        }

        UIView* view = [[UIView alloc] initWithFrame:CGRectMake(xPos, yPos, 40.0, self.view.frame.size.height - yPos)];

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        view.backgroundColor = [(id)[UIColor class] performSelector:selector];
#pragma clang diagnostic pop

        [self.view addSubview:view];

        xPos += view.frame.size.width;
    }

    free(methods);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
