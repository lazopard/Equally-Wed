//
//  RightViewController.m
//  SWRevealSample
//

#import "RightViewController.h"
#import "MyCustomCell.h"
#import "NumberPadDoneBtn.h"

@interface RightViewController ()

@property (strong, nonatomic) NSArray *items;

@end

@implementation RightViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)dismissKeyboard:(UITextField *)textField{
    [textField resignFirstResponder];
}



@synthesize items = _items;

- (NSArray *)items
{
    if (!_items)
    {
        _items = [[NSArray alloc] initWithObjects: @"", @"", @"Venue", @"Registry", @"Gaund", @"Rings", @"Officiant", @"Cake", @"Calendar", @"Florist", @"Photographer", @"Entertainment", @"Favors", @"Bakery", nil];
    }
    return _items;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCustomCell * cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (!cell)
    {
        [tableView registerNib:[UINib nibWithNibName:@"MyCustomCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(MyCustomCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.leftLabel.text = [self.items objectAtIndex:indexPath.row];
    cell.rightLabel.text = [self.items objectAtIndex:indexPath.row];
    cell.middleLabel.text = [self.items objectAtIndex:indexPath.row];
    
    cell.backgroundColor = [UIColor clearColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for(UITextField *textField in self.numberTextFields) {
        NumberPadDoneBtn *numberPadDoneBtn = [[NumberPadDoneBtn alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        textField.inputAccessoryView = numberPadDoneBtn;
    }
    
    [self setTitle:@"Budget"];
    [self items];
    [self.tableView reloadData];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"BG4_01.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
}

@end
