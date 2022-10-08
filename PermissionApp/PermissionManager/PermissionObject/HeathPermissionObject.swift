//
//  HeathPermissionObject.swift
//  PermissionApp
//
//  Created by sun on 08/10/2022.
//

import Foundation
import HealthKit

final class HeathPermissionObject: PermissionType {
    
    var permissionHandler: PermissionHandler?
    var name: String = "Heath"
    var summany: String = "Heath care your life"
    var emptyImage: String = "health_empty"
    var fullImage: String = "health_full"
    
    func requestPermission() {
        HKHealthStore().authorizationStatus(for: .)
    }
    
    func checkStatus(handler: @escaping (PermissionStatus) -> Void) {
        <#code#>
    }
    
    
}
