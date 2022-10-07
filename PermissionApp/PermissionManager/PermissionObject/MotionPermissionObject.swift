//
//  MotionPermissionObject.swift
//  PermissionApp
//
//  Created by sun on 07/10/2022.
//

import Foundation
import CoreMotion

final class MotionPermissionObject: PermissionType {
    
    var permissionHandler: PermissionHandler?
    var name: String = "Motion"
    var summany: String = "Track your activity"
    var emptyImage: String
    var fullImage: String
    
    func requestPermission() {
        CMMotionActivityManager().requestAuthorization { status in
            if status == .authorized {
                
            }
        }
    }
    
    func checkStatus(handler: @escaping (PermissionStatus) -> Void) {
        
    }
    
    
}
