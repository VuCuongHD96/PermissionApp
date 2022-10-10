//
//  BluetoothPermissionObject.swift
//  PermissionApp
//
//  Created by Sun on 13/09/2022.
//

import CoreBluetooth

class BluetoothPermissionObject: NSObject, PermissionType {
    
    var permissionHandler: PermissionHandler?
    var name: String = "Bluetooth"
    var summany: String = "Let connect with some device"
    var emptyImage: String = "bluetooth_empty"
    var fullImage: String = "bluetooth_full"
    
    func requestPermission() {
    }
    
    func checkStatus(handler: @escaping (PermissionStatus) -> Void) {
        if CBCentralManager.authorization == .allowedAlways {
            handler(.allowed)
        } else {
            handler(.notAllow)
        }
    }
}
