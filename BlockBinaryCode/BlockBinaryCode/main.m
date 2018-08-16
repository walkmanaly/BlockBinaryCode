//
//  main.m
//  BlockBinaryCode
//
//  Created by Nick on 2018/8/16.
//  Copyright © 2018年 Nick. All rights reserved.
//

#import <Foundation/Foundation.h>

// 终端cd到目录，执行命令clang -rewrite-objc main.m 得到c++文件main.cpp
// 底层原理：
// 默认 i是         // bound by copy       值传递
// 加__block 后 i是 // bound by ref        址传递

int main(int argc, const char * argv[]) {
    
    __block int i = 10;
    
    void (^block)(void) = ^ {
        
        printf("i = %d", i);
        
    };
    
    block();
    
    return 0;
}
