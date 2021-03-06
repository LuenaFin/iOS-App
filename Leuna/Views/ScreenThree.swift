//
//  ScreenThree.swift
//  Leuna
//
//  Created by Sophia Tan on 8/14/21.
//

import SwiftUI
import Combine

struct ScreenThree: View {
    @State private var numShares = ""
    @State private var marketPrice: Double = 145.68 // 0.00 //Cost per share of that certain stock
    @State var estimatedCost: Double = 0.00 // { Int(numShares) ?? 0 * marketPrice } //Estimated cost based on numShares and marketPrice
    var isFractionalSharesEnabled: Bool = false
    
    var body: some View {
        
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
                                Image(systemName: "xmark")
                                    .foregroundColor(.green)
                        })
                            .padding(.vertical, 20)
                        Spacer()
                        Button(
                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                            label: {
                                Text("Shares")
                                    .foregroundColor(.green)
                                    .font(.system(size: 15))
                                    .fontWeight(.semibold)
                                
                                Image(systemName: "chevron.down")
                                    .resizable()
                                    .foregroundColor(.green)
                                    .frame(width: 10, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .clipped()
                        })
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
                            
                            TextField("0", text: $numShares)
                                .multilineTextAlignment(.trailing)
                                .frame(height: 10)
                                .frame(minWidth: 100)
                                .foregroundColor(.green)
                                .keyboardType(.numberPad) // not decimalPad since we might not support fractional shares
                                
                                .onReceive(Just(numShares)) { newValue in
                                    if isFractionalSharesEnabled &&  newValue.occurrencesOf(string: ".") > 1 {
                                        let decimalRemovedText = newValue.dropLast()
                                        self.numShares = String(decimalRemovedText)
                                    } else if !isFractionalSharesEnabled {
                                        let allDecimalsRemoved = newValue.replacingOccurrences(of: ".", with: "")
                                        self.numShares = allDecimalsRemoved
                                    } else {
                                        let filtered = newValue.filter { "0123456789.".contains($0) }
                                        if filtered != newValue {
                                            self.numShares = "\(filtered)"
                                        }
                                    }
                                    if let shares = Double(self.numShares) {
                                        self.estimatedCost = shares * self.marketPrice
                                    } else if newValue == "" { self.estimatedCost = 0 }
                                }

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
                                .frame(minWidth: 10)
                            
                            Text("$\(marketPrice, specifier: "%.2f")")
                                .frame(height: 10)
                                .foregroundColor(.white)

                    })
                        .padding(.vertical, 20)
                        .overlay(Rectangle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                    .frame(width: 390, height: 1.5, alignment: .top), alignment: .bottom)
                    //Estimated Cost
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                        Text("Estimated Cost")
                                .fontWeight(.medium)
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        Spacer()
                            .frame(minWidth: 10)
                        Text("$\(estimatedCost, specifier: "%.2f")")
                                .frame(height: 10)
                                .foregroundColor(.white)

                    }
                    .padding(.vertical, 20)
                    .overlay(Rectangle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                    .frame(width: 390, height: 1.5, alignment: .top), alignment: .bottom)
                    
                    
                    
            })
            Spacer()
                
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                   label: {
                    Text("Review")
                        .fontWeight(.semibold)                        .foregroundColor(Color.black)
                        .frame(width: 350, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(
                            Capsule()
                                .foregroundColor(.green)
                                
                    )
                        .padding(.bottom)
                    
            })
                
               
        })
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            .padding(.horizontal)
            .background(
                Color.black
                    .ignoresSafeArea()
            )
    }
}

struct ScreenThree_Previews: PreviewProvider {
    static var previews: some View {
        ScreenThree()
    }
}


