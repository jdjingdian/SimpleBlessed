//
//  main.swift
//  SimpleBlessedHelper
//
//  Created by 经典 on 9/1/2023.
//

import Foundation
import SecureXPC

NSLog("SimpleBlessedHelper Started by: \(getppid())")
if (getppid() == 1) {
    /// getpid == 1 means it is started by launchd
    NSLog("SimpleBlessedHelper started by launchd, starting xpc server")
    let server = try XPCServer.forMachService()
    server.registerRoute(SharedConstant.demoRoute, handler: CommandRunner.run)
    /// start xpc server and never stop
    server.startAndBlock()
}else{
    NSLog("SimpleBlessedHelper not started by launchd, do nothing")
}

