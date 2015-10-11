//
//  MySwiftComponent.swift
//  TryRN
//
//  Created by Kostiantyn Koval on 10/10/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

import Foundation

@objc(MySwiftComponent) class MySwiftComponent : NSObject {

  @objc func sendString(x: String) {
    print("MySwiftComponent sendString: \(x)")
  }

  @objc func getString(response: RCTResponseSenderBlock ) {
    print("MySwiftComponent getString")
    response([NSNull(), "Swift getString-Result"])
  }

  @objc func getStringAsync(resolve: RCTPromiseResolveBlock, reject: RCTPromiseRejectBlock) {
    print("MySwiftComponent getStringAsync");
    let yesNo = true //arc4random_uniform(2) == 0
    if (yesNo) {
      resolve("Yes")
    } else {
      reject(NSError(domain:"NO!", code:0, userInfo:nil))
    }
  }
}
