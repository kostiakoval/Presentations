autoscale: true
#[Fit] React Native
<br>
# from a mobile (iOS)
# developer prospective


---

# Me
<!--				var height = 172-->
```swift 
				let sex = 👨🏻 
				var job = "iOS Dev"
				var company = 🚀🏭 // Rocketfarm
				
				let ❤️ = 🐦 //"Swift"
				❤️🐦 < ❤️👸 == true   
				
				var like = 📙 + ✏️ + 💻
				var author = 👨🏻 + 📙 + 🐦
```
<!--- iOS Dev 
- ❤️ Swift
- Rocketfarm-->

---

<br>
# First Reaction 
# :poop:
<br>

---

#[fit] Back to the Future

<!--![](Img/flux-timer.jpg)-->
<!--![](Img/Back-to-the-Future-Poster-back-to-the-future-30816326-1920-1200.jpg)-->

![](Img/back-to-the-future-delorean.jpg)

---

# Back to the Future

- **10 July 2008**
- **Mid-2010**
- **2 April 2009**

^
 Facebook released it's first iOS app in July. 10, 2008 together with iPhone 3G
2010 Facebook released v 3.0 of Facebook app using web on mobile
"Write once use everywhere"


---

# Back to the Future

- July 10 2008: *iPhone 3G, App Store and Facebook app*
- mid-2010: *Facebook's "Write Once, Run Everywhere"*
- 2 April 2009 **PhoneGap** *- wins People's Choice Award at Web 2.0 Conference*

---

<br>
# Stage **_2_**
# :confused: 

<br>

^ Interested in Learning
The Goal is to learn

---

Stage 2

:confused: 

- Be curious
- Open Minded
- Life learning


**- - - - - - - - - -**

**_The Goal is to Learn_**

^ Interested in Learning
The Goal is to learn

---

<br>
# Stage _**3**_
# :smiley: 
<br>

^ There are 3 thing

---

Stage 3

:smiley: 

- Native UI
- Declarative UI
- Learn once, write everywhere


^ There are 3 thing

---

# Native App

Write in __Web__, get __Native Ap__
 
![inline](Img/JavaScript-logo.png) ![inline](Img/react-logo-blue.png)![inline 50%](Img/arrow.png) ![inline](Img/iphone.png)

---

```html
<Text>
  Welcome to React Native!
</Text>
```

```javascript
<ListView
  dataSource= {this.state.dataSource}
  renderRow= {this.renderMyCell}
  style= {styles.listView}
/>
```
->

```objc
UITextView *textView = [UITextView new];
textView.text = @"Welcome to React Native!";

UITableView *tableView = [UITableView new];
tableView.dataSource = self;
[tableView registerClass:[MyCell class] forCellReuseIdentifier:@"MyCellId"];
```

---

Each *React Native* UI Component
maps to *iOS native* UI element

<br>

__*__ Platform specific native component

---

# _**But it's JS :disappointed:**_
*The benefits are bigger,
 Just trust me :wink:*

![original fit](Img/JavaScript-logo.png) 

---

# Declarative UI
- State -> UI
 **- - -**
- Independent Composable Components
- Local components state, **~~no Global~~**
- One way data flow

<!--
---
# Declarative UI
![inline](Img/Artboard 4.png)
-->

---

# Declarative UI - _**Component**_
**---------------**
**|**   Parameters  **|**
**---------------**
⇣
**--------------- ---------------**
**|                                    |**
**|**                    State                    **|**
**|                                    |**
**--------------- ---------------**
⇣
**---------------**
**|**          UI          **|**
**---------------**


<!--# Declarative UI
**---------------**
**|**   Parameters  **|**
**---------------**
⇣
**- - - - - - - - - - - - - - - - - -**
**-                                     -**
**-**                     State                     **-**
**-                                     -**
**- - - - - - - - - - - - - - - - - -**
⇣
**- - - - - - - - -**
**-**          UI          **-**
**- - - - - - - - -**-->



---

# Learn once, write everywhere
React
**- - - - - - - - - -**

**:** React JS **:**   
**:** React Native iOS **:** 
**:** React Native Android **:** 

---

#[fit] Time to face real projects problems 

<br>
<br>
#[fit]  💪😈💪  
<br>
<br>

---

# Time to face real problems

- Hardware access
- Native code (**Swift** and Objective-C)
- Performance

**- - - - - - - - - -**

- Reliability
- Support and community

---

### Native code (**Objc**)

```objc
//Objective-C
@implementation MyComponent
RCT_EXPORT_MODULE();

//RCT_EXPORT_METHOD = - (void)
RCT_EXPORT_METHOD(sendString:(NSString *)string) {
  NSLog(@"Objc My Component Received: %@", string);
}

@end
```
**- - -**

```javascript
//JS 
var ObjcComponent = require('react-native').NativeModules.MyComponent;
ObjcComponent.sendString('Hello Objc');
```

---

### Native code (**Swift**)

```swift
//Swift
@objc(MySwiftComponent) class MySwiftComponent : NSObject {

  @objc func sendString(x: String) {
    print("MySwiftComponent Received: \(x)")
  }
}
```
 
```objc
//Objective-C
@interface RCT_EXTERN_MODULE(MySwiftComponent, NSObject)

RCT_EXTERN_METHOD(sendString:(NSString *)x)

@end
```

```javascript
//JS 
var SwiftComponent = require('react-native').NativeModules.MySwiftComponent;
SwiftComponent.sendString('Swift all the things 😎');
```


<!--
- Swift Native Module

	*Only instance methods
	Can't control instance creations
	Asynchronous communication
	Callback called once. Not signals/ Stream of events*
   
- Custom UI Component
	*Explore it*
-->

---

# Native *→* JS

```objc
//Objective-C
RCT_EXPORT_METHOD(getString:(RCTResponseSenderBlock)callback) {
  callback(@[[NSNull null], @"Result"]);
}
```

```swift
@objc func getString(response: RCTResponseSenderBlock ) {
  response([NSNull(), "Result"])
}
//+ RCT_EXTERN_METHOD(getString:(RCTResponseSenderBlock)response) in Objc 
```

```javascript
//JS
ObjcComponent.getString((error, param) => {
  if (error) {
    console.error(error);
  } else {
    console.log(param);
  }
});
```

---

# Native *→* JS (*Promises*)

```objc
RCT_EXPORT_METHOD(getStringAsync:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

  BOOL yesNo = arc4random_uniform(2);
  if (yesNo) {
    resolve(@"Yes");
  } else {
    reject([NSError errorWithDomain:@"NO!" code:0 userInfo:nil]);
  }
}
```
```swift
@objc func getStringAsync(resolve: RCTPromiseResolveBlock, reject: RCTPromiseRejectBlock) {
  let yesNo = true
  if (yesNo) {
    resolve("Yes")
  } else {
    reject(NSError(domain:"NO!", code:0, userInfo:nil))
  }
}
//+ RCT_EXTERN_METHOD(getStringAsync:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)
```
**- - JS - -**

---

# Native *→* JS (*Promises*)

```objc
//Objective-C
- (void)getStringAsync:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject
```

```javascript
//JS
ObjcComponent.getStringAsync().then((value) => {
  console.log(value);
}, (error) => {
  console.log(error);
});

// ES7 + Babel JavaScript compiler 
async function fetchString() {
  let string = await ObjcComponent.getStringAsync();
  console.log("Async +await: " + string);
}
```

---

# Native *→* JS (*Events*)

```objc
#import "RCTEventDispatcher.h"

@synthesize bridge = _bridge; // Implementing RCTBridgeModule

- (void)sendEventToJS {
  [self.bridge.eventDispatcher sendAppEventWithName:@"MyEvent"
                                               body:@{@"param": @"Hello JS"}];
}
```

```javascript
var { NativeAppEventEmitter } = React;
var subscription = NativeAppEventEmitter.addListener('MyEvent', (event) =>
 console.log("§ Event: " + event)
);
```
 
😢 But `synthesize` is not available in Swift

---

# UI Component

```objc
@interface RCTMyViewManager : RCTViewManager
@end

@implementation RCTMyViewManager

RCT_EXPORT_MODULE()

- (MyView *)view {
  return [MyView  new];
}

@end
```

```javascript
//JS
var { requireNativeComponent } = require('react-native');
var MyView = requireNativeComponent('RCTMyView', null);
module.exports = MyView

render: function() {
  <MyView> </MyView>
}

```

---

# UI Component 
# +

- Custom properties
- Events
- JS Component wrapper
- Styles
...

---

### Limitations 

- Methods**:** instance only
- Instance creation control**:** None,  
     <sub>1 instance only. Created and cached by `NativeModules`</sub>

- Initializer**:** `+(instancetype)new` 
- Arguments**:** JSON types + **RCTConvert**
- Communication**:** Asynchronous

---

#[fit] Performance
<br>
<br>
#[fit]👌
<br>
<br>

---

#[fit] Performance
<br>
#[fit] 👌
#[fit] **_60_** FPS
<br>

---

# Performance
- React handles DOM manipulation and re-rendering

<br>

- Animations *__+__* Navigation Transition
- React JS code runs on Background thread
	**(Main thread - UI Only)**



---

<br>
###[fit]_**  JavaScriptCore   **_
<br>
iOS 7 - WebKit JavaScript engine
      __*__ No JIT support 

^ Honourable mention, the father component

---

# Stability

- Solid architecture 💪
- Beta v0.12.0
- Rapid development/changes
- Apps Works **Fine**, no Crashes

---


# Support and community
- Open Sourced 👏
	<sub> *All is in your hands* + </sub>
	<sub> PR are Welcomed 😘 </sub>
- Active on Twitter 🐤
- Documentation + Examples
**-------**
- StackOverflow  👎

---
# Questions
Will it replace Native (Swift) - **No**
Was it worth - **Yes**
Does React has its user group - **Yes**
Do I want to code more in React - **Hell Yeah !!**
   **⇡** Contact me 😉

---
#**Thanks**
# Q&A

# 🙇 ![](Img/ava-round.png)


- [github.com/kostiakoval/Presentations](http://github.com/kostiakoval/Presentations)  **"React_Native"**
- [@KostiaKoval](https://twitter.com/KostiaKoval)
- [kostiakoval.github.io](http://kostiakoval.github.io)

<br>

---



## Smart copy & paste

To copy a slide from Deckset to another document, just ⌘+C it, then ⌘+V it into your editor (it will paste the _Markdown_) or into any application that handles PDFs (it will paste the slide as _PDF_).

---

# [fit] ⌘+C ⌘+V = :v: