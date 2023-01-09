//
//  SharedConstant.swift
//  SimpleBlessed
//
//  Created by 经典 on 9/1/2023.
//

import Foundation
import SecureXPC

struct SharedConstant {
    static let demoRoute = XPCRoute.named("process")
}
