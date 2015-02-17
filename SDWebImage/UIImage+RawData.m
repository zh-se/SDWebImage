//
// Created by Sergey Zhdanov on 17/02/15.
// Copyright (c) 2015 Drivepixels. All rights reserved.
//

#import <objc/runtime.h>
#import "UIImage+RawData.h"

static char const * const RawDataCategoryKey = "RawDataCategoryKey";

@implementation UIImage (RawData)

- (void)setRawData:(NSData *)rawData {
    objc_setAssociatedObject(self, RawDataCategoryKey, rawData, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSData*)rawData {
    return objc_getAssociatedObject(self, RawDataCategoryKey);
}

@end
