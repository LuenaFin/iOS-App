//
//  ScreenOne.swift
//  Leuna
//
//  Created by Arshin Jain on 8/3/21.
//

import SwiftUI

struct ScreenOne: View {
    var body: some View {
        VStack {
            Text("Portfolio Theme")
                .font(.system(size: 15))
                .fontWeight(.semibold)
                .frame(width: 500, height: 100, alignment: .top)

                
            Text("Choose my portfolio theme")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                
            Button(
                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                label: {
                    HStack {
                        VStack(
                            alignment: .leading,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                                Text("Core Portfolios")
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 13))
                                    .fontWeight(.semibold)
                                    .padding(.vertical, 2)
                                Text("Invest in your future with diversified, expert-designed portfolios")
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 13))
                                    .fontWeight(.ultraLight)
    
                            }
                        )
                        Spacer()
                        //Next part of Hstack
                        Circle()
                            .fill(Color.white)
                            .frame(width: 20, height: 20, alignment: .trailing)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(1), radius: 1)
                    }
                    .padding()
                    .frame(width: 350, alignment: .topLeading)
                    .background(
                        Color.white
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.25), radius: 1)
                        )
//
                }

            )
            .padding()
            Button(
                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                label: {
                    HStack {
                        VStack(
                            alignment: .leading,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                                HStack {
                                    VStack(
                                        alignment: .leading,
                                        spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                                        content: {
                                        Text("Sustainable Portfolios")
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 13))
                                            .fontWeight(.semibold)
                                            .padding(.vertical, 2)
                                        Text("Invest in yourself & the planet with diversified, expert-designed ESG portfolios.")
                                            .font(.system(size: 13))
                                            .foregroundColor(Color.black)
                                            .fontWeight(.ultraLight)
                                    })
                                    Spacer()
                                    //Next part of Hstack
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 20, height: 20, alignment: .trailing)
                                        .cornerRadius(10)
                                        .shadow(color: Color.black.opacity(1), radius: 1)
                                        .padding(.horizontal, -8)
                                }
                                Button(
                                    action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                    label: {
                                        HStack {
                                            Image(systemName : "leaf.fill")
                                                .foregroundColor(.green)
                                            VStack(
                                                alignment: .leading,
                                                spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                                                content: {
                                                    Text("What's a Sustainable ESG portfolio?")
                                                        .foregroundColor(Color.black)
                                                        .font(.system(size:13))
                                                        .fontWeight(.semibold)
                                                        .padding(.vertical, 2)
                                                    HStack {
                                                        Text("Learn more")
                                                            .foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                                                            .font(.system(size:10))
                                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                        Image(systemName: "chevron.right")
                                                            .resizable()
                                                            .frame(width: 6, height: 6, alignment: .bottom)
                                                            .foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                                                            
                                                    }
                                                    
                        
                                                }
                                            )
                                        }
                                        .padding()
                                        .frame(width: 300, alignment: .topLeading)
                                        .background(
                                            Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.1846320743))
                                                .cornerRadius(10)
                                            )
                                    }

                                )
                            }
                        )
                        Spacer()
                        //Next part of Hstack

                    }
                    .padding()
                    .frame(width: 350, alignment: .topLeading)
                    
                    .background(
                        Color.white
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.25), radius: 1)
                            
                            .overlay(
                                Text("New")
                                    .foregroundColor(.white)
                                    .font(.system(size: 13))
                                    .fontWeight(.semibold)
                                    .frame(width: 50, height: 25, alignment: .center)
                                    
                                    .background(
                                        Color.blue
                                            .cornerRadius(10)
                                    )
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, -12.5)
                                , alignment: .topLeading
                            )

                        )
                }

            )
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                   label: {
                Text("Next")
                    .foregroundColor(Color.white)
                    .frame(width: 350, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(
                        Capsule()
                            .foregroundColor(Color(#colorLiteral(red: 0.7323349714, green: 0.7523319125, blue: 0.7737888694, alpha: 1)))
                            
                    )
                    
            })
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
//        .background(Color.blue)
    }
}

struct ScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ScreenOne()
    }
}
