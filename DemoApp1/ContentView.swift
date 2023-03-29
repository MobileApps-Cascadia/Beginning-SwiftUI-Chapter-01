//
//  ContentView.swift
//  DemoApp1
//
//  Created by Mike Panitz on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)                .foregroundColor(.accentColor)
                .padding()
            TextField("Enter your name", text: $text)
                .padding()
            Text("Hello, \(text)!")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.pink)
                .padding()
            Divider()
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
