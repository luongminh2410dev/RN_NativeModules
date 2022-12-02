import { View, Text, NativeModules, Platform, requireNativeComponent } from 'react-native'
import React from 'react'

const { StatusBarManager } = NativeModules;
let statusHeight = StatusBarManager.HEIGHT;
if (Platform.OS === 'ios') {
    StatusBarManager.getHeight((data) => (statusHeight = data.height));
}

import NativeSwitch from './nativeSwitch'

const App = () => {
    const onToggleSwitch = (e) => {
        console.log(e.nativeEvent.isEnable);
    }
    return (
        <View style={{
            flex: 1,
            backgroundColor: 'red',
            paddingTop: statusHeight
        }}>
            <Text style={{
                width: '100%',
                textAlign: 'center',
                fontSize: 20,
                color: 'white',
                fontWeight: 'bold'
            }}>
                Native Module App
            </Text>
            <NativeSwitch
                style={{ width: "100%", height: "50%", backgroundColor: 'yellow' }}
                label="ABCXYZ"
                onValueChange={onToggleSwitch}
            />
        </View>
    )
}

export default App