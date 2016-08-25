#GestureBlock
随着block的应用越来越广泛,大家也越来越熟悉它,想随手丢掉代理之类的,还有想UIButton的点击事件等,能直观的看到点击事件,RAC做到了这一点,为了让手势也做到这一点,故小小的写了点东西
比如想用点击手势
[self.view addGestureRecognizer:[UITapGestureRecognizer JJX_gestureRecognizerWithActionBlock:^(UITapGestureRecognizer *gestureRecognizer) {

CGPoint point = [gestureRecognizer locationInView:self.view];

NSLog(@"点击事件处理");

}]];