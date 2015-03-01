//
//  ViewControllerTest.m
//  Greeter
//
//  Created by William Mora on 28/2/15.
//  Copyright (c) 2015 nispok. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewController ()

- (NSString *)greetMessage;

@end

@interface ViewControllerTest : XCTestCase

@end

@implementation ViewControllerTest

- (void)testGreetMessageWithNilNameShouldBeHelloStranger {
	ViewController *viewController = [[ViewController alloc] init];

	NSString *greetMessage = [viewController greetMessage];

	XCTAssert([greetMessage isEqualToString:@"Hello, Stranger"]);
}

- (void)testGreetMessageWithEmptyNameShouldBeHelloStranger {
	ViewController *viewController = [[ViewController alloc] init];
	viewController.nameTextField.text = @"";

	NSString *greetMessage = [viewController greetMessage];

	XCTAssert([greetMessage isEqualToString:@"Hello, Stranger"]);
}

- (void)testGreetMessageWithNameWithOnlyWhitespacesShouldBeHelloStranger {
	ViewController *viewController = [[ViewController alloc] init];
	viewController.nameTextField.text = @"       ";

	NSString *greetMessage = [viewController greetMessage];

	XCTAssert([greetMessage isEqualToString:@"Hello, Stranger"]);
}

@end
