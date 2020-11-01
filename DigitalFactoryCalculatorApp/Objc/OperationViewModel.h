//
//  ViewModel.h
//  DigitalFactoryCalculatorApp
//
//  Created by Ruoming Gao on 10/30/20.
//  Copyright © 2020 Ruoming Gao. All rights reserved.
//

#ifndef ViewModel_h
#define ViewModel_h

#import <Foundation/Foundation.h>
@interface OperationViewModel: NSObject
- (float)plus:(float)firstNum plusSecondNum:(float) secondNum;
- (float)subtract:(float)firstNum minusSecondNum:(float) secondNum;
- (float)divide:(float)firstNum divideSecondNum:(float) secondNum;
- (float)mutiply:(float)firstNum mutiplySecondNum:(float) secondNum;
- (float)getSinDegree:(float)radius;
- (float)getCosDegree:(float)radius;
- (float)getTanDegree:(float)radius;
@end

#endif /* ViewModel_h */
