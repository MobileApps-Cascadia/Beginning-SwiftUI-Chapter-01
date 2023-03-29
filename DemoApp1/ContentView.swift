//
//  ContentView.swift
//  DemoApp1
//
//  Created by Mike Panitz on 3/27/23.
//

//REFLECTION
/* Try generating code and seeing how it works
        1C. Regenerating the response didn't change the code.
 Reflect on the process of using AI to generate code for you
    1.
        A. It was kind of difficult understanding how the AI responded to the prompt. And how it understood what I wanted it to do since my assumtion was different than the AI's.
        B. The more specific you want the code, the more detailed the prompt has to be. If you have a general idea of what the code should look like then it can at least give a starting point.
        C. I am worried that what I say will lead it to go off in a tangent and not give me what I am looking for, but if I pay attention and read all of the code before applying it to mine then I think it will be a very useful tool to gain more skills.
 */

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
            
            Button(action: {
                    UIPasteboard.general.string = text
                }, label: {
                    Text("Copy")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(10)
                })
            .padding()
            
            Text("Copied Text: \(text)")
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
