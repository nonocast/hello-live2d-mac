#import <Foundation/Foundation.h>
#import "LAppDelegate.hpp"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"hello world.");
        
        LAppDelegate::GetInstance()->Initialize();
        LAppDelegate::GetInstance()->Run();
    }
    return 0;
}
