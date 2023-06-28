//
//  ContentView.swift
//  whosThatDuck
//
//  Created by Scholar on 6/26/23.
//
//NEED TO FIX FONT and SHADOWS, SPACING 


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                    .ignoresSafeArea()
                VStack {
                    Text("Who's That Duck?")
                        .font (.custom("Unkempt-Bold", fixedSize: 45))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                        Spacer()
                        .padding()
                    
                    Image("Mallard Silhouette")
                        Spacer()
                        .padding()
                    
                    NavigationLink(destination: gamingScreen()) {
                        Text("Let's Start!")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding() .font (.custom("Unkempt-Bold", fixedSize: 30))
                    }
                    
                }
                .padding()
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
