//
//  AppDelegate.h
//  Einstein App
//
//  Created by Cognizant Technology Solutions on 27/07/17.
//  Copyright © 2017 Cognizant Technology Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

