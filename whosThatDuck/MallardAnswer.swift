//
//  MallardAnswer.swift
//  whosThatDuck
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct MallardAnswer: View {
    var body: some View {
        
        ZStack {
            (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                .ignoresSafeArea()
            VStack {
                
                Text("Who's That Duck?")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Spacer()
                    .padding()
                
                Image("Mallard")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                Spacer()
                    .padding()
                
                Text("This is a...")
                    .font (.custom("Unkempt-Bold", fixedSize: 25))
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                
                Text("Mallard Duck")
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                
                Text("[info and awareness]")
                    .font(.headline)
                    .foregroundColor(Color.white)
                
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Text("Next >")
                }
                .foregroundColor(Color.white)
                Spacer()
                    .padding()
            }
        }
    }
        
        struct MallardAnswer_Previews: PreviewProvider {
            static var previews: some View {
                MallardAnswer()
            }
        }
    }

