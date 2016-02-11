//
//  main.swift
//  Amazing Swift
//
//  Created by Kostiantyn Koval on 08/02/16.
//  Copyright © 2016 Kostiantyn Koval. All rights reserved.
//

import Foundation

struct App {
  static var name: String {
    return ""
  }
}

enum Mode {
  case InMemory
  case Sqlite
}

enum LogLevel {
  case Verbose
  case None
}


class CoreDataStack {
  func setup(name: String = App.name, mode: Mode = .Sqlite,  logLevel: LogLevel = .Verbose) {
  }

}


class Storage {
  func saveItem (item: String ) {
  }
}

class Network {
  func uploadItem (item: String ) {

  }
}

func use() {
  let stack = CoreDataStack()
  stack.setup()
  stack.setup(logLevel: .None)
  stack.setup(mode: .InMemory, logLevel: .None)
  stack.setup("DB", mode: .InMemory, logLevel: .None)

}

func No_1() {
  let storage = Storage()
  storage.saveItem("i")

  let network = Network()
  network.uploadItem("i")


  let any:Any = Network()
  //  any.saveItem("i") // Can't
  if let any = any as? Storage {
    any.saveItem("i")
  }
}


func No_2() {

  let any:Any = "String"
//  any.
  print(any)

}

// No_3

struct Article {
  let title: String
  let text: String
  let date: NSDate

//  init (title: String, text: String, date: NSDate) {
//    self.title = title
//    self.text = text
//    self.date = date
//  }
}

func No_3() {
  Article(title: "title", text: "Text", date: NSDate())
}

func No_4() {

  let a: String? = nil
  //  _ = a + "b"
  //  _ = "b" + a

  if let a = a {
    a + "b"
  }
  a?.stringByAppendingString("b")


}

func No_6() {

  enum Action {
    case Delete
    case Create
    case Edit
    case Copy

    var isDangerous: Bool {
      return self == .Delete
    }
  }

  func runAction(acton: Action) {

  }
  runAction(.Delete)
//  runAction(10)

}


func No_6_1() {

  enum Action: String {
    case Delete
    case Create
    case Edit
    case Copy
  }

  func runAction(acton: Action) {

  }
  runAction(.Delete)
  let action = Action.Delete.rawValue // String


}

