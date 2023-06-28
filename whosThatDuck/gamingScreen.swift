//
//  gamingScreen.swift
//  whosThatDuck
//
//  Created by Scholar on 6/27/23.
//
//FILE IS FOR ACTUAL GAME!!!
//Navigation/button to go back to "home" (located on top left corner, near "Who's that Duck? title")
//buttons for options (answers); leads to actions that reveal silhouette, reveal the answer by replacing info text (ex. "It's a... Mallard Duck"), adds information and awareness below answer, and shows button for "Next >"
//button for "Next >" that leads to next question

// NEED TO FIX: "Who's That Duck" to right hand side, maybe a little bigger; add info about MALLARD DUCK; Fix font and style of RUDDY DUCK BUTTON and add navigation link to next silhouette; fix formatting for MALLARD DUCK navigation link (correct answer); add another incorrect answer button
import SwiftUI

struct gamingScreen: View {
    @State private var wrongRuddy = ""
    @State private var wrongAmBlack = ""
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Who's That Duck?")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .font (.custom("Unkempt-Bold", fixedSize: 25))
                    Spacer()
                        .padding()
                    //Need to figure out home navigation button, how to move "Who's That Duck?" mini title to left!
                    
                    Image("Mallard Silhouette")
                    Spacer()
                        .padding()
                    
                    Text("[info about duck]")
                        .font (.custom("Unkempt-Bold", fixedSize: 20))
                        .foregroundColor(Color.white)
                    Spacer()
                        .padding()
                    
                    //navigation link for correct answer, button for wrong answer that tells them it's incorrect
                    Button("Ruddy Duck") {
                        wrongRuddy = "Oops, that's not right!"
                    }
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                    
                        Text(wrongRuddy)
 // Need to figure out how to remove other options once the wrong button is pushed.
                   
                    NavigationLink(destination: MallardAnswer()) {
                        Text("Mallard Duck")
                            .font (.custom("Unkempt-Bold", fixedSize: 30))
                            .fontWeight(.bold)
                            .padding().foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
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
}
