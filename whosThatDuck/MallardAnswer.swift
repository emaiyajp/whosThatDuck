//
//  MallardAnswer.swift
//  whosThatDuck
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct MallardAnswer: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
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
        
        ZStack {
            (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                .ignoresSafeArea()
            VStack {
                
                Text("Who's That Duck?")
                    .foregroundColor(Color.white)
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                    .padding(.top, 40.0)
                Spacer()
                
                Image("Mallard")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                Spacer()
                    
                
                Text("This is a...")
                    .font (.custom("Unkempt-Bold", fixedSize: 25))
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .padding(.top, 40.0)
                
                Text("Mallard Duck")
                    .font (.custom("Unkempt-Bold", fixedSize: 35))
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .padding(.bottom)
                
                Text("Also known as the Anas Platyrhynchos, the average length is 20-26 in and average weight is 1.5-3.5 in, with the wingspan of 32-39 inches. This is a dabbling duck, meaning their tails stick up when they are under water. ")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Text("Next >")
                        .foregroundColor(Color.white)
                        .font (.custom("Unkempt-Bold", fixedSize: 25))
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 200.0)
                }
                .foregroundColor(Color.white)
                Spacer()
                    .padding()
            }
            .padding()
        }
    }
        
        struct MallardAnswer_Previews: PreviewProvider {
            static var previews: some View {
                MallardAnswer()
            }
        }
    }

