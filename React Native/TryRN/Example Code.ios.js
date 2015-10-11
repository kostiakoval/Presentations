/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';




var React = require('react-native');
var {
  AppRegistry,
  StyleSheet,
  Text,
  View,
} = React;

var TryRN = React.createClass({
  render: function() {
    return (
      <View style={styles.container}>
        <Text>
          Welcome to React Native!
        </Text>

        <ListView
          dataSource= {this.state.dataSource}
          renderRow= {this.renderMyCell}
          style= {styles.listView}
        />
      </View>
    );
  }
});

AppRegistry.registerComponent('TryRN', () => TryRN);
