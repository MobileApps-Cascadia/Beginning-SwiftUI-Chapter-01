//
//  ContentView.swift
//  DemoApp1
//
//  Created by Mike Panitz on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.pink)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
