//
//  ContentView.swift
//  SimpleBlessed
//
//  Created by 经典 on 9/1/2023.
//

import SwiftUI
import Blessed
import SecureXPC
import Authorized

struct ContentView: View {
    ///Your Mach Service Name (Your helper identifier)
    var xpcClient: XPCClient = XPCClient.forMachService(named: "cn.magicdian.SimpleBlessedHelper")
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Button{
                do {
                    try PrivilegedHelperManager.shared
                                               .authorizeAndBless(message: "Install Helper to do something",icon: nil)
                } catch AuthorizationError.canceled {
                    // No user feedback needed, user canceled
                    print("User Canceled Installation")
                } catch {
                    //Do something
                }
            }label: {
                Text("Install Helper")
            }
            
            Button{
                Task{
                    try await xpcClient.send(to: SharedConstant.demoRoute)
                }
            }label: {
                Text("Run whoami")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
