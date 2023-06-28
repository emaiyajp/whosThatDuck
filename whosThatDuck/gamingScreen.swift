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

import SwiftUI

struct gamingScreen: View {
    var body: some View {
        ZStack {
            (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                .ignoresSafeArea()
            VStack {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            }
        }
    }
    
    struct gamingScreen_Previews: PreviewProvider {
        static var previews: some View {
            gamingScreen()
        }
    }
}
