//
//  OperationViewModel.m
//  DigitalFactoryCalculatorApp
//
//  Created by Ruoming Gao on 10/30/20.
//  Copyright © 2020 Ruoming Gao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationViewModel.h"

@implementation OperationViewModel

- (float)plus:(float)firstNum plusSecondNum:(float) secondNum {
    return firstNum + secondNum;
}

- (float)subtract:(float)firstNum minusSecondNum:(float) secondNum {
    return firstNum - secondNum;
}

- (float)mutiply:(float)firstNum mutiplySecondNum:(float) secondNum {
    return firstNum * secondNum;
}

- (float)divide:(float)firstNum divideSecondNum:(float) secondNum {
    return firstNum / secondNum;
}

- (float)getSinDegree:(float)radius {
    return sin(radius * M_PI / 180);
}

- (float)getCosDegree:(float)radius {
    return cos(radius * M_PI / 180);
}

- (float)getTanDegree:(float)radius {
    return tan(radius * M_PI / 180);
}

@end
