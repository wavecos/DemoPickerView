//
//  ViewController.h
//  DemoDatasource
//
//  Created by Tekhne on 10/12/13.
//  Copyright (c) 2013 Tekhne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Personaje.h"

@interface ViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIPickerView *personajes;

@end
