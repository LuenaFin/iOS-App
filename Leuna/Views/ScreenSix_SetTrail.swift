//
//  ScreenSix_SetTrail.swift
//  Leuna
//
//  Created by Sophia Tan on 8/22/21.
//

import SwiftUI

struct ScreenSix_SetTrail: View {
    
    @State private var numShares = ""
    @State var initialStopPrice: Double = 0.00
    @State private var marketPrice: Double = 145.20
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 20,
            content: {
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Button(
                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                            label: {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(.green)
                        })
                        Spacer()
                        Button(
                            action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                            label: {
                                Image(systemName: "info.circle")
                                    .foregroundColor(.green)
                        })
                })
            

            Text("Set Trail")
                .fontWeight(.semibold)
                .font(.system(size: 25))
                .foregroundColor(.white)
                
            Text("Trigger a market buy order if AAPL rises above its lowest price by: ")
                .lineSpacing(4)
                .font(.system(size: 15))
                .foregroundColor(.white)
                
            HStack(
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                content: {

                    Text("Trail Percentage")
                        .fontWeight(.medium)
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    Image(systemName: "chevron.down")
                        .foregroundColor(.green)

//                    Spacer()
//                        .frame(minWidth: 5)
                    
                    TextField("0%", text: $numShares)
                        .multilineTextAlignment(.trailing)
                        .frame(height: 10)
                        .frame(minWidth: 100)
                        .foregroundColor(.green)
                        .keyboardType(.numberPad) // not decimalPad since we might not support fractional shares
                        
//                        .onReceive(Just(numShares)) { newValue in
//                            if isFractionalSharesEnabled &&  newValue.occurrencesOf(string: ".") > 1 {
//                                let decimalRemovedText = newValue.dropLast()
//                                self.numShares = String(decimalRemovedText)
//                            } else if !isFractionalSharesEnabled {
//                                let allDecimalsRemoved = newValue.replacingOccurrences(of: ".", with: "")
//                                self.numShares = allDecimalsRemoved
//                            } else {
//                                let filtered = newValue.filter { "0123456789.".contains($0) }
//                                if filtered != newValue {
//                                    self.numShares = "\(filtered)"
//                                }
//                            }
//                            if let shares = Double(self.numShares) {
//                                self.estimatedCost = shares * self.marketPrice
//                            } else if newValue == "" { self.estimatedCost = 0 }
//                        }

            })
                .padding(.vertical, 20)
                .overlay(Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                            .frame(width: 390, height: 1.5, alignment: .top), alignment: .bottom)
        HStack(
            alignment: .center,
            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
            content: {

                Text("Initial Stop Price")
                    .fontWeight(.medium)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Text("$\(initialStopPrice, specifier: "%.2f")")
                    .frame(height: 10)
                    .foregroundColor(.white)
                
                
            })
                .padding(.bottom, 20)
                .overlay(Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                            .frame(width: 390, height: 1.5, alignment: .top), alignment: .bottom)
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Spacer()
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.gray)
                        Text("Market Price: ")
                            .foregroundColor(.gray)
                        Text("$\(marketPrice, specifier: "%.2f")")
                            .foregroundColor(.white)
                })

                
                
        })
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(
                Color.black
                    .ignoresSafeArea()
            )
    }
}

struct ScreenSix_SetTrail_Previews: PreviewProvider {
    static var previews: some View {
        ScreenSix_SetTrail()
    }
}
