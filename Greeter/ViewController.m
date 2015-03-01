//
//  ViewController.m
//  Greeter
//
//  Created by William Mora on 28/2/15.
//  Copyright (c) 2015 nispok. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)greetButton:(id)sender;

@end

@implementation ViewController

- (IBAction)greetButton:(id)sender {
	self.greetLabel.text = [self greetMessage];
}

- (NSString *)greetMessage {
	return [NSString stringWithFormat:@"Hello, %@", [self name]];
}

- (NSString *)name {
	return [self isValidName] ? self.nameTextField.text : @"Stranger";
}

- (BOOL)isValidName {
	if (self.nameTextField.text == nil) {
		return NO;
	}

	NSString *name = [self.nameTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
	return ![name isEqualToString:@""];
}

@end
