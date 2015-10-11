/**
 * @flow
 */

 /**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
//'use strict';
require('regenerator/runtime');

let React = require('react-native');

var {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  NativeAppEventEmitter,
} = React;

// === Native Components === //

// Objc
var ObjcComponent = require('react-native').NativeModules.MyComponent;
var ObjcComponent2 = require('react-native').NativeModules.MyComponent;
// Returns the same component instance. ObjcComponent == ObjcComponent2

ObjcComponent.sendString('Hello Objc');

// Swift
var SwiftComponent = require('react-native').NativeModules.MySwiftComponent;
SwiftComponent.sendString('Swift all the things 😎');


// === Native to JS === //

//Objc
ObjcComponent.getString((error, param) => {
  if (error) {
    console.error(error);
  } else {
    console.log(param);
  }
});

ObjcComponent.getStringAsync().then((value) => {
  console.log(value);
}, (error) => {
  console.log(error);
});

// Use Babel JavaScript compiler 
async function fetchString() {
  let string = await ObjcComponent.getStringAsync();
  console.log("Async +await: " + string);
}
fetchString()

//Swift
SwiftComponent.getString((error, param) => {
  if (error) {
    console.error(error);
  } else {
    console.log(param);
  }
});

SwiftComponent.getStringAsync().then((value) => {
  console.log(value);
}, (error) => {
  console.log(error);
});

// Use Babel JavaScript compiler 
async function fetchSwiftString() {
  let string = await SwiftComponent.getStringAsync();
  console.log("Async +await: " + string);
}
fetchSwiftString()

// ==== Notification ====

var subscription = NativeAppEventEmitter.addListener('MyEvent', (event) =>
 console.log("Received Event: " + event)
);

var TryRN = React.createClass({
  render: function() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit index.ios.js
        </Text>
        <Text style={styles.instructions}>
          Press Cmd+R to reload,{'\n'}
          Cmd+D or shake for dev menu
        </Text>
      </View>
    );
  }
});

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('TryRN', () => TryRN);
