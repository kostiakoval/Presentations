# [fit] Refactoring 
# [fit] Ugly
# [fit] Objective-C

---

# I am - 🤓💻

😍 - Swift
😍 - Programming
😍 - Swift Package Manager

![fit right](B04807_Cover copy.jpg)

<br>

http://swifthighperformance.com
Swift Hight Performance

---

# 3 Steps

---

# 3 Steps

1. Open Objective-C project
2. Delete it
3. Write Swift, "And Be Happy"

---

# 30% less code

---

# So! Let's talk about Objective-C

---
## Amazing Feature № 1

```objc

// KKKNetwork
@interface KKKNetwork : NSObject
- (void)uploadItem:(NSString *)item;
@end


// KKKStorage
@interface KKKStorage : NSObject
- (void)saveItem:(NSString *)item;
@end

```

---

## Amazing Feature № 1

```objc

KKKStorage *storage = [[KKKStorage alloc] init];
[storage saveItem:@"New item"];

KKKNetwork *network = [[KKKNetwork alloc] init];
[network uploadItem:@"Some stuff"];

```

---

^Static typing methods call

## Amazing Feature № 1

```objectivec

KKKStorage *storage = [[KKKStorage alloc] init];
[storage saveItem:@"New item"];

KKKNetwork *network = [[KKKNetwork alloc] init];
[network uploadItem:@"Some stuff"];

[network saveItem:@"Some stuff"]; 
❗️Error❗️

```

---

#[fit] BUT 

^ Objc from -> Smalltalk 
^ Message sending

---

```objc 
[network performSelector: @selector(saveItem:)];

id network = [[KKKNetwork alloc] init];
[network saveItem:@"😈"];

[network arrayByAddingObjectsFromArray: @[ @10 ]];
[network URLByAppendingPathComponent:@"/me.com"];
```

---

But who does ever use id? 

---

# 🍏 Does! 

```objc
// - (id)copy;

NSMutableArray *ar = [NSMutableArray arrayWithArray:@[@1, @1]];
NSMutableArray *aCopy = [ar copy]; // it's a NSArray
[aCopy addObject: @2]; //Crash here!!

```

---

# VS Swift

```swift
let storage = Storage()
storage.saveItem("Apple")

let network = Network()
network.uploadItem("Item")
// network.saveItem("i") // Error! Always!

```

---

# VS Swift

```swift
let any: Any = Network()
//  any.saveItem("i") // Can't!!

if let any = any as? Storage {
  any.saveItem("i")
}
```

---

# `safety += 1`

---

^ id types
## Objc `id`
## vs
## Swift `Any`

---

#Objc `id`

## **Can do Anything. Whatever you Want!**

```objc
id some;
[some URLCache];
[some stringByAppendingString:@":("];

```

---
#Swift `Any`

## **Can't do Nothing**

```swift
let any: Any = "String"
any. 
//Any is empty. It has 0 methods

print(any)

```

---

# `safety += 2`

---

#[fit] 3: Initialization

--- 

```objc
- (instancetype)init {
  self = [super init];
  if (self) {
      // Init ivars!
      // Don't access properties!!!
  }

  return self;
}
```

---

Go Crazy

```objc
- (instancetype)init {
  return [self new];
}

- (instancetype)init {
  return self = [self init];
}

- (instancetype)init {
  return nil;
}

- (instancetype)init {
  // Do whatever You want
}
```

---

```objc
@interface KKKArticle : NSObject

@property (nonatomic, readonly, strong) NSString *title;
@property (nonatomic, readonly, strong) NSString *text;
@property (nonatomic, readonly, strong) NSDate *date;

- (instancetype)initWith:(NSString *)title text:(NSString *)text date:(NSDate *)date;

@end

@implementation KKKArticle

- (instancetype)initWith:(NSString *)title text:(NSString *)text date:(NSDate *)date {
  self = [super init];
  if (self) {
    _title = title;
    _text = text;
    _date = date;
  }
  return self;
}

@end
 
KKKArticle *article = [[KKKArticle alloc] initWith:@"title" text:@"text" date:[NSDate date]];


```

---

No boilerplate code `init ()` !!

```swift
init () {
  // 🎉 Just put code here
}

```

--- 

Can't go Crazy :(
 
```swift
init () {
  // - must initialize all properties
  // - super.init is required when has a superclass
  // - can't access properties and methods until filly initialized
  // - very safe
}
```

Summary: *__Clean & Safe__*

--- 

Swift

```swift 
struct Article {
  let title: String
  let text: String
  let date: NSDate
}

Article(title: "title", text: "Text", date: NSDate())

```
---

Safety += 2
Clean += 2

---

^ Overriding

```objc
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

```


---

#[fit] Optionals
#[fit] 🙁

--- 

#[fit] Fun Quiz

<br>
a + b = c
b + a = c

---

```objc
NSString *a;
[a stringByAppendingString:@"b"];

```

---

```objc
NSString *a;
[a stringByAppendingString:@"b"]; // Nothing
[@"b" stringByAppendingString:a];

```

---

```objc
NSString *a;
[a stringByAppendingString:@"b"]; // Nothing
[@"b" stringByAppendingString:a]; // Crash!
```
# WAT ?!

---

```objc
NSString *a;
[a stringByAppendingString:@"b"]; // Nothing
[@"b" stringByAppendingString:a]; // Crash!

[nil stringByAppendingString:@"b"];
[@"b" stringByAppendingString: nil];
```

---

```objc
NSString *a;
[a stringByAppendingString:@"b"]; // Nothing
[@"b" stringByAppendingString:a]; // Crash!

[nil stringByAppendingString:a]; // Error
[@"b" stringByAppendingString: nil];

```

---

```objc
NSString *a;
[a stringByAppendingString:@"b"]; // Nothing
[@"b" stringByAppendingString:a]; // Crash!

[nil stringByAppendingString:a]; // Error
[@"b" stringByAppendingString: nil]; // Warning
//stringByAppendingString:(nonnull NSString *)
```

---

```objc
NSString *a;
[a stringByAppendingString:@"b"]; // Nothing
[@"b" stringByAppendingString:a]; // Crash!

[nil stringByAppendingString:a]; // Error
[@"b" stringByAppendingString: nil]; // Warning
//stringByAppendingString:(nonnull NSString *)

[(id)nil stringByAppendingString:a]; // 👍
```

---

# 👻🙈

---

```swift
let a = "a"					

a + "b" /* 👍 */			   
"b" + a /* 👍 */			  

```

---


```swift
let a = "a"					let a: String?

a + "b" /* 👍 */			   a + "b" // Error 
"b" + a /* 👍 */			   "b" + a // Error

```


---

```swift
let a: String?

a + "b" // Error
"b" + a // Error

if let a = a {
  a + "b" // 👍
}

```

---

```swift
let a: String?

a + "b" // Error
"b" + a // Error
a.stringByAppendingString("b") // Error

if let a = a {
  a + "b" // 👍
}
a?.stringByAppendingString("b")  // 👍


```

---

```objc
typedef NS_ENUM(NSInteger, Action) {
  ActionDelete,
  ActionCreate,
  ActionEdit,
  ActionCopy
};
```

---

```objc
typedef NS_ENUM(NSInteger, Action) {
  ActionDelete,
  ActionCreate,
  ActionEdit,
  ActionCopy
};

//+ (void)runAction:(Action)action;
[Runner runAction:ActionCreate];

```

---

```objc
typedef NS_ENUM(NSInteger, Action) {
  ActionDelete,
  ActionCreate,
  ActionEdit,
  ActionCopy
};

//+ (void)runAction:(Action)action;
[Runner runAction:ActionCreate];
[Runner runAction:20]; // WAT ?!
```

---

```objc
typedef NS_ENUM(NSInteger, Action) {
  ActionDelete,
  ActionCreate,
  ActionEdit,
  ActionCopy
};

//+ (void)runAction:(Action)action;
[Runner runAction:ActionCreate];
[Runner runAction:20]; // WAT ?!

// 😈🤖👿 
Action action = ActionEdit;
action += ActionCopy;
action /= 56;
[Runner runAction:action];

```

---

One Type collections / generics
 
---

Something else

---

abstract class Vs protocol with default implementation

---

default parameters

----

