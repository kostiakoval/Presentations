'use strict';

let React = require('react-native');
var { requireNativeComponent } = React;

var RCTMyView = requireNativeComponent('RCTMyView', null);

class MyView extends React.Component {
  constructor() {
  	super();
    this._onFire = this._onFire.bind(this);
  }
  _onFire(event: Event) {
  	if (!this.props.onEventFired) {
      return;
    }
    this.props.onEventFired(event.nativeEvent.body);
  }
  render() {
    return <RCTMyView {...this.props}  onFireNativeEvent = {this._onFire} />;
  }
}

MyView.propTypes = {
  myProperty: React.PropTypes.bool.isRequired,  
  onEventFired: React.PropTypes.func,

};

module.exports = MyView




