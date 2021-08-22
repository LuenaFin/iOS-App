//
//  ScreenSix.swift
//  Leuna
//
//  Created by Sophia Tan on 8/22/21.
//

import SwiftUI

struct ScreenSix: View {
    @State private var amountInvested: Double = 0.00
    @State private var amountToInvest: Double = 1.00
    @State var estimatedShares: Double = 0.006862
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
                    alignment: .leading,
                    spacing: 10,
                    content: {
                    Text("AAPL Order Queued")
                        .font(.system(size: 25))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)

                    Text("Your market order to buy $1.00 of AAPL is queued for market open.")
                        .foregroundColor(.white)

                        HStack(
                            alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                            spacing: nil,
                            content: {
                            Text("Amount Invested")
                                .foregroundColor(.white)
                            Spacer()
                            Text("$\(amountInvested, specifier: "%.2f") of $\(amountToInvest, specifier: "%.2f")")
                                .foregroundColor(.white)
                        })
                            .padding(.vertical, 20)
                            .padding(.top, 10)
                            .overlay(Rectangle()
                                        .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                        .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)
                        
                        HStack(
                            alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                            Text("Estimated Shares")
                                .foregroundColor(.white)
                                
                            Spacer()
                            Text("\(estimatedShares, specifier: "%.6f")")
                                .foregroundColor(.white)

                        })
                            .padding(.vertical, 20)
                            .overlay(Rectangle()
                                        .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                        .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)
                        VStack(
                            alignment: .center,
                            spacing: 30,
                            content: {
                                Button(
                                    action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                    label: {
                                    Text("Done")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .frame(
                                            width: 330,
                                            height: 50,
                                            alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .background(
                                            Capsule()
                                                .foregroundColor(.green)
                                        )
                                })
                                Button(
                                    action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                    label: {
                                    Text("View Order")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.green)
    
                                })
                        })
                            .padding(.top, 25)

                })
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(30)
                    .background(
                        Color.black
                            .cornerRadius(27)
   
                    )
                            })
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(
                Color.green
                    .ignoresSafeArea()
            )
    }
}

struct ScreenSix_Previews: PreviewProvider {
    static var previews: some View {
        ScreenSix()
    }
}
