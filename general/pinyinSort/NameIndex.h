//
//  NameIndex.h
//  Card2Mobile
//
//  Created by Jeff on 13-12-30.
//
//

#import <Foundation/Foundation.h>

@interface NameIndex : NSObject
{
    NSString *_lastName;
    NSString *_firstName;
    NSInteger _sectionNum;
    NSInteger _originIndex;
}


@property (nonatomic, retain) NSString *_lastName;
@property (nonatomic, retain) NSString *_firstName;
@property (nonatomic) NSInteger _sectionNum;
@property (nonatomic) NSInteger _originIndex;
- (NSString *) getFirstName;
- (NSString *) getLastName;


@end
