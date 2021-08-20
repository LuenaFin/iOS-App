//
//  ScreenFour.swift
//  Leuna
//
//  Created by Sophia Tan on 8/14/21.
//

import SwiftUI

struct ScreenFour: View {
    @State var numShares: Int = 0
    @State var marketPrice: Int = 0 //Cost per share of that certain stock
    var estimatedCost: Int { numShares * marketPrice }//Estimated cost based on numShares and marketPrice
    var body: some View {
                    
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                   spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                   content: {
                VStack(
                    alignment: .leading,
                    spacing: 0,
                    content: {
                        HStack {
                            Button(
                                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                                label: {
                                    Text("Edit")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.green)
                            })
                                .padding(.vertical, 20)
                        }
                        
                        VStack(
                            alignment: .leading,
                            spacing: nil,
                            content: {
                                Text("Buy AAPL")
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 23))
                                Text("$3,672.85 available")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            }
                        )
                        .padding(.bottom, 40)
                        
                        //Number of Shares
                        HStack(
                            alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                            spacing: nil,
                            content: {

                                Text("Number of Shares")
                                    .fontWeight(.medium)
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)

                                Spacer()
                                
                                TextField("",
                                          value: $numShares,
                                          formatter: NumberFormatter())
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: 60, height: 10, alignment: .trailing)
                                    .foregroundColor(.white)
                                    .keyboardType(UIKeyboardType.decimalPad)

                        })
                            .padding(.vertical, 20)

                            .overlay(Rectangle()
                                        .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                        .frame(width: 390, height: 1.5, alignment: .top), alignment: .bottom)
                        //Market Price
                        HStack(
                            alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {

                                Text("Market Price")
                                    .fontWeight(.medium)
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                
                                Image(systemName: "questionmark.circle")
                                    .foregroundColor(.green)

                                Spacer()
                                
                                TextField("$",
                                          value: $marketPrice,
                                          formatter: NumberFormatter())
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: 60, height: 10, alignment: .trailing)
                                    .foregroundColor(.white)
                                    .keyboardType(UIKeyboardType.decimalPad)

                        })
                            .padding(.vertical, 20)

                            .overlay(Rectangle()
                                        .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                        .frame(width: 390, height: 1.5, alignment: .top), alignment: .bottom)
                        //Estimated Cost
                        HStack(
                            alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {

                                Text("Estimated Cost")
                                    .fontWeight(.medium)
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)

                                Spacer()
                                
                                TextField("",
                                          value: $marketPrice,
                                          formatter: NumberFormatter())
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: 60, height: 10, alignment: .trailing)
                                    .foregroundColor(.white)
                                    .keyboardType(UIKeyboardType.decimalPad)

                        })
                            .padding(.vertical, 20)

                            .overlay(Rectangle()
                                        .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                        .frame(width: 390, height: 1.5, alignment: .top), alignment: .bottom)
                        
                        
                        
                })
                Spacer()
                    
                VStack(
                    alignment: .leading,
                    spacing: 5,
                    content: {
                    Text("Order Summary")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                    Text("You are placing a good for day market order to buy 1 share of AAPL. Your order will be placed after the market opens.")
                        .foregroundColor(.white)
                        .font(.system(size: 13))
                })
                    
                   
            })
                
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(
            Color.black
                .ignoresSafeArea()
        )
        
    }
}

struct ScreenFour_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFour()
    }
}
