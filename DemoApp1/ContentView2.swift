//
//  ContentView2.swift
//  DemoApp1
//
//  Created by Eddington, Nick on 3/28/23.
//

import Foundation
import SwiftUI

struct ContentView2: View {
    @State var text: String = ""

    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            TextField("Enter your name", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("Hello, \(text)!")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            Divider()
                .padding(.top)
        }
        .padding()
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
