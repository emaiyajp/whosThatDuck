//
//  ContentView.swift
//  whosThatDuck
//
//  Created by Scholar on 6/26/23.
//
//FILE IS FOR HOME SCREEN(S)
//button for "Let's Start!" that connects to/navigates toward gaming screen for first- users


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
