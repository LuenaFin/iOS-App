//
//  ScreenFive.swift
//  Leuna
//
//  Created by Sophia Tan on 8/21/21.
//

import SwiftUI

struct ScreenFive: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 200,
            content: {
                HStack(
                    alignment: .center,
                    spacing: 5,
                    content: {
                    Image(systemName: "arrowtriangle.left.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 10, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Button(
                        action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                        label: {
                            Text("Search")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                    })
                    
                })

                    .padding(.horizontal, 20)
                
                VStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: 100,
                    content: {
                    Image("feather")
                        .resizable()
                        .frame(width: 70, height: 93, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal, 160)
    //                    .padding(.horizontal, 500)
                    Text("Order Received")
                        .font(.system(size: 30))
                        .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Text("System response, execution price, speed, liquidity, market data, and account acccess times are affected by many factors, including market volatility, size and type of order, market conditions, system performance, and other factors.")
                        .padding(.horizontal, 10)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                })
                

        })
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(
                Color.green
                    .ignoresSafeArea()
            )
        
        
    }
}

struct ScreenFive_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFive()
    }
}
