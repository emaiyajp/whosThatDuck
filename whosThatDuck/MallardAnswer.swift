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
                
                Text("Mallard Duck")
                
                Text("[info and awareness]")
                    .font(.headline)
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

