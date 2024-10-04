#import "AppDelegate.h"
#import <React/RCTBundleURLProvider.h>
#import <Firebase.h> // Importa Firebase

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [FIRApp configure]; // Configura Firebase

  self.moduleName = @"AgroScann";
  // Puedes agregar tus propiedades iniciales personalizadas en el diccionario a continuación.
  self.initialProps = @{};

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

/// Este método controla si la característica `concurrentRoot` de React18 está activada o desactivada.
- (BOOL)concurrentRootEnabled
{
  return true;
}

@end
