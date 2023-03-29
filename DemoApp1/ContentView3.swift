//
//  ContentView3.swift
//  DemoApp1
//
//  Created by Eddington, Nick on 3/28/23.
//It would regenerate and change a few things but the gist of the code and what it was doing at least remained the same. Having used it to help with larger coding problems I knew the gotchas to look out for. It was pretty easy to get it to generate the code and copy it over to run. Only thing really to be aware of is since it wasn’t aware of my code it would generate using the default ContentView name so I would just need to update those lines. No issues at all really, it basically did what I wanted it to. For getting it to look the way you want it’s all about how you word your prompts and the follow up prompts to them. You basically have to treat it like a very intelligent idiot with short term memory. I honestly like it because I sometimes need things explained multiple times just in slightly different ways to understand something. I like that I can ask questions and ask questions to my questions, I can roll back if I don’t like the response to a prompt to a previous one a did like and start again from there. It’s very versitle and doesn’t get mad when I say “explain this another way” “give me an example”, “give me another one”, “give me a line by line explanation of how this works and why”. This seems like it’s going to be much easier than Kotlin since layout and code are included into the same file. The ChatGPT prompts are VERY persnickety and even a single normal character or special character and greatly change the outcome of the prompt. It’s a fun challenge learning the system and how to best utilize it but it’s still just another computer program that has a pattern and works a specific way is just about finding the pattern.

import Foundation
import SwiftUI

struct ContentView3: View {
    @State var text: String = ""
    @State var copiedText: String = ""

    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            TextField("Enter your name", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button(action: {
                copiedText = text
            }) {
                Text("Copy Text")
                    .padding(.horizontal)
            }
            
            Text("Copied Text: \(copiedText)")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            Divider()
                .padding(.top)
        }
        .padding()
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
