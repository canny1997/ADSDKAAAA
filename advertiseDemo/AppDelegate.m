

#import "AppDelegate.h"
#import "ViewController.h"
#import "ADView.h"
@interface AppDelegate ()

@property (nonatomic, strong)UIImageView *advertiseView;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];

    [self.window makeKeyAndVisible];
  
    [self createAD];
    
    return YES;
    
}

-(void)createAD{
    
    
    ADView *adView = [[ADView alloc] initWithFrame:[UIScreen mainScreen].bounds appKey:@"BESTKEEP"];
    adView.showTime = 5;
    [adView show];



}






@end
