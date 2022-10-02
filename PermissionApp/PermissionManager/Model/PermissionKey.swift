//
//  PermissionKey.swift
//  PermissionApp
//
//  Created by Sun on 10/09/2022.
//

import Foundation

struct PermissionKey {
    
    private struct Blutooth {
        static let alwaysKey = "NSBluetoothAlwaysUsageDescription"
        static let peripheralKey = "NSBluetoothPeripheralUsageDescription"
    }
    
    private struct Calendar {
        static let key = "NSCalendarsUsageDescription"
    }
    
    private struct Camera {
        static let key = "NSCameraUsageDescription"
    }
    
    private struct Contacts {
        static let key = "NSContactsUsageDescription"
    }
    
    private struct FaceID {
        static let key = "NSFaceIDUsageDescription"
    }
    
    private struct Health {
        static let updateKey = "NSHealthUpdateUsageDescription"
        static let shareKey = "NSHealthShareUsageDescription"
    }
    
    private struct Location {
        static let alwaysKey = "NSLocationAlwaysAndWhenInUseUsageDescription"
        static let inUseKey = "NSLocationWhenInUseUsageDescription"
    }
    
    private struct Siri {
        static let key = "NSSiriUsageDescription"
    }
    
    private struct Tracking {
        static let key = "NSUserTrackingUsageDescription"
    }
    
    static func transfrom(key: String) -> PermissionType? {
        switch key {
        case Location.inUseKey:
            return LocationPermissionObject()
        case Contacts.key:
            return ContactPermissionObject()
        case Siri.key:
            return SiriPermissionObject()
        case Tracking.key:
            return TrackingPermissionObject()
        default:
            return nil
        }
    }
}
