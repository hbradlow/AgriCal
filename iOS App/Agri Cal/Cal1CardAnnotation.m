//
//  Cal1CardAnnotation.m
//  Agri Cal
//
//  Created by Kevin Lindkvist on 3/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Cal1CardAnnotation.h"

@implementation Cal1CardAnnotation
@synthesize latitude = _latitude;
@synthesize longitude = _longitude;
@synthesize title = _title;
@synthesize times = _url;
@synthesize info = _info;
@synthesize type = _type;
@synthesize imageURL = _imageURL;
- (id)initWithLatitude:(CLLocationDegrees)latitude
		  andLongitude:(CLLocationDegrees)longitude
              andTitle:(NSString *)title 
                andURL:(NSString *)url
              andTimes:(NSString *)times
               andInfo:(NSString*)info{
	if (self = [super init]) {
		self.latitude = latitude;
		self.longitude = longitude;
        self.title = title;
        self.times = times;
        self.imageURL = url;
        self.info = info;
	}
	return self;
}

- (CLLocationCoordinate2D)coordinate {
	CLLocationCoordinate2D coordinate;
	coordinate.latitude = self.latitude;
	coordinate.longitude = self.longitude;
	return coordinate;
}
@end
