#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *helloLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 背景色を設定
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Hello Worldラベルを作成
    self.helloLabel = [[UILabel alloc] init];
    self.helloLabel.text = @"Hello World!";
    self.helloLabel.textColor = [UIColor blackColor];
    self.helloLabel.font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightBold];
    self.helloLabel.textAlignment = NSTextAlignmentCenter;
    self.helloLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    // ラベルをビューに追加
    [self.view addSubview:self.helloLabel];
    
    // Auto Layout制約を設定
    [NSLayoutConstraint activateConstraints:@[
        [self.helloLabel.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.helloLabel.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [self.helloLabel.widthAnchor constraintEqualToConstant:200],
        [self.helloLabel.heightAnchor constraintEqualToConstant:50]
    ]];
}

@end