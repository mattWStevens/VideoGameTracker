//
//  Orientation.swift
//  VideoGameTracker
//
//  Created by Matthew Stevens on 6/24/22.
//

import Foundation
import UIKit

struct Orientation {
    // indicate current device is in the LandScape orientation
    static var isLandscape: Bool {
        get {
            return UIDevice.current.orientation.isValidInterfaceOrientation
                ? UIDevice.current.orientation.isLandscape
                : (UIApplication.shared.windows.first?.windowScene?.interfaceOrientation.isLandscape)!
        }
    }
    // indicate current device is in the Portrait orientation
    static var isPortrait: Bool {
        get {
            return UIDevice.current.orientation.isValidInterfaceOrientation
                ? UIDevice.current.orientation.isPortrait
                : (UIApplication.shared.windows.first?.windowScene?.interfaceOrientation.isPortrait)!
        }
    }
}
