//
//  ContentView.swift
//  SimpleBlessed
//
//  Created by 经典 on 9/1/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Button{
            
            }label: {
                Text("Install Helper")
            }
            
            Button{
                
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
