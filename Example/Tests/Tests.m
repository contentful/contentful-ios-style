//
//  contentful-ios-styleTests.m
//  contentful-ios-styleTests
//
//  Created by Boris Bügling on 12/15/2014.
//  Copyright (c) 2014 Boris Bügling. All rights reserved.
//

#import "CDAViewController.h"

SpecBegin(InitialSpecs)

describe(@"Style", ^{
    it(@"uses the correct colors and fonts", ^{
        CDAViewController *newVC = [CDAViewController new];
        expect(newVC).to.haveValidSnapshot();
    });
});

SpecEnd
