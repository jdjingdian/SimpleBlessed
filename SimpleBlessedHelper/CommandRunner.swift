//
//  CommandRunner.swift
//  cn.magicdian.SimpleBlessedHelper
//
//  Created by 经典 on 9/1/2023.
//

import Foundation
import Authorized

enum CommandRunner {
    /// Runs the allowed command and replies with the results.
    ///
    /// If authorization is needed, the user will be prompted.
    ///
    /// - Parameter message: Message containing the command to run, and if applicable the authorization.
    /// - Returns: The results of running the command.
    static func run() {
        // Prompt user to authorize if the client requested it
        let task = Process()
        let pipe = Pipe()
        task.launchPath = "/usr/bin/whoami"
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        if let string = String(data: data, encoding: String.Encoding.utf8) {
            NSLog("SimplerBlessed whoami : "+string)
        }
        
    }
}
