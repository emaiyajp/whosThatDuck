//
//  gamingScreen.swift
//  whosThatDuck
//
//  Created by Scholar on 6/27/23.
//
//
//
//
//

// NEED TO FIX: Spacing on info about MALLARD DUCK (it keeps getting cut off); Add navigation link to next silhouette by wrong answers;

import SwiftUI

struct gamingScreen: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    
    @State private var wrongRuddy = ""
    @State private var wrongAmBlack = ""
    
    var body: some View {
        
        //back navigation
            Spacer()
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem (placement:
                        .navigationBarLeading) {
                            Button(action: {
                                presentationMode.wrappedValue .dismiss()
                                
                            }, label: {
                               Text("< Home")
                                    .font (.custom("Unkempt-Bold", fixedSize: 20))
                                    .foregroundColor(Color.white)

                            })
                        }
            })
        //back navigation
        
        NavigationStack {
            
            ZStack {
                (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                    .ignoresSafeArea()
                
                VStack {
                    
                    
                    Text("Who's That Duck?")
                        .foregroundColor(Color.white)
                        .font (.custom("Unkempt-Bold", fixedSize: 30))
                        .padding(.top, 30.0)
                    Spacer()
                    
                    
                    Image("Mallard Silhouette")
                        .padding(.top, 60.0)
                        
                    Spacer()
                    
                    Text("This is a common ancestor to almost every domestic breed of duck.")
                        .font (.custom("Unkempt-Bold", fixedSize: 20))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 15.0)
                
                    
                    // button for wrong answer that tells them it's incorrect with navigation link to next silhouette
                    Button("Ruddy Duck") {
                        (wrongRuddy = "Oops, that's not right!")
                        
                    }
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                  
                    
                    Text(wrongRuddy)
                    // Need to figure out how to remove other options once the wrong button is pushed.
                    
                    NavigationLink(destination: MallardAnswer()) {
                        Text("Mallard Duck")
                            .font (.custom("Unkempt-Bold", fixedSize: 30))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                            .padding()
                    }
                    
                    Button("American Black Duck") {
                        wrongAmBlack = "Well, that's wrong..."
                    }
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                    
                    Text(wrongAmBlack)
                    
                }
                    
            }
        }
            
    }
}
    struct gamingScreen_Previews: PreviewProvider {
        static var previews: some View {
            gamingScreen()
        }
    }

