//
//  ViewController.m
//  NewFeatureTest
//
//  Created by zhulin on 2018/5/31.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "ViewController.h"
#import "Engineer.h"
#import "EnglishTeacher.h"
#import "School.h"

//typedef int (^Calculate)(int, int);
@interface ViewController ()

@property (nonatomic, strong) NSMutableArray <UIView *> *views;
@property (nonatomic) NSMutableArray<UIView *> *visibleCells;

@end

@implementation ViewController {
    
    NSString * _Nonnull str;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    {
        People *p = [People new];
        Teacher *teacher = [Teacher new];
        Teacher *teacher1 = [Teacher new];
        Engineer *engineer = [Engineer new];
        NSString *str = [NSString string];
        str = @"people";

        //有无泛型
        NSArray *test2 = @[teacher,teacher1,str];
        //test2.firstObject
        
        NSArray <People*> *test3 = @[engineer,teacher1,p,str];

        //代码提示
        //test3.firstObject.str
        //[test3.firstObject playing];
        //People * ttt = test3.lastObject;
        
        //covariant用法
        NSArray <People *> *peopleArray = @[engineer,teacher1,p];
        NSArray <Teacher *> *teacherArray = @[teacher,teacher1];
        peopleArray = teacherArray;
        teacherArray = peopleArray;
        
        //contravariant用法
        Teacher <NSArray *> *array1 = [Teacher new];
        Teacher <NSMutableArray *> *array2 = [Teacher new];
        array1 = array2;
        array2 = array1;
        
        //既没有covariant，也没有contravariant修饰
        EnglishTeacher <People *> *engP = [EnglishTeacher new];
        EnglishTeacher <Teacher *> *engT = [EnglishTeacher new];
        engP = engT;
        engT = engP;
        
        School <People *> *peopleSchool = [School new];
        School <Engineer *> *engineerSchool = [School new];
        peopleSchool=engineerSchool;
        engineerSchool=peopleSchool;
        
        School <Teacher *> *school = [[School alloc] init];
        [school addPeople:engineer];
        [school addPeople:p];
        [school.sch addObject:teacher];
        People *peopleRetair = [People new];
        EnglishTeacher *engTeacher = [EnglishTeacher new];
        engTeacher = [school retair:teacher1];
    }
    
    
    {
        //class属性
        NSLog(@"aaaa%ld",People.count);
        
        //@available
        if (@available(iOS 9.0, macOS 20.0, tvOS 5.0, *))
        {
            NSLog(@"123");
        }
    }

}
//__kindof
- (UIView *)viewTest
{
    NSString *str = [NSString new];
    UILabel *label = [UILabel new];
    UIButton *btn  = [UIButton new];
    UIView *view = [UIView new];

    //return label;
    return btn;
    //return str;
    //return view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
