//
//  ViewController.m
//  MOSpeexEncoder
//
//  Created by moath othman on 7/3/13.
//  Copyright (c) 2013 moath othman. All rights reserved.
//

#import "ViewController.h"
#import <speexenc.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction) encodeSpeex{
    
    NSString* audioFilePath =  [[[NSBundle mainBundle]pathForResource:@"NineMillionBicycles" ofType:@"wav"] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding] ;
    NSString*  soundOutPutFilePath =  [NSTemporaryDirectory()
                            stringByAppendingPathComponent:[NSString stringWithFormat:@"%@%i.ogg",@"NineMillionBicycles", 1]]  ;
    
    
    char *inputFile=(char*)[ audioFilePath UTF8String];
    char *ofile=(char*)[soundOutPutFilePath UTF8String];
    
    char *arv[2]={inputFile,ofile};
    mainspeexenc(2, arv);
    
}
@end
