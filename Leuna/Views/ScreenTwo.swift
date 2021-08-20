//
//  ScreenTwo.swift
//  Leuna
//
//  Created by Arshin Jain on 8/3/21.
//

import SwiftUI

struct ScreenTwo: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
            content: {
                
                //Within this Vstack, I want 1 green X, 1 Text, 2 H stacks, one text, and then 5 more H stacks
                Button(
                    action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                    label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.green)
                })
                    .padding(.vertical, 20)
                Text("Market Order")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))

                
                //First H stack
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Image("money")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .padding(.vertical, 5)
                        VStack(
                            alignment: .leading,
                            spacing: 5,
                            content: {
                            Text("Buy in Dollars")
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                            Text("Buy AAPL in dollar amounts, starting at $1")
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                .font(.system(size: 15))


                        })
                        Spacer()
                    
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15, alignment: .bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.horizontal, 10)
                })
                    .padding(.bottom, 12)

                    .overlay(Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)

                //Second H Stack
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Image("shares")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .padding(.vertical, 5)
                        
                        VStack(
                            alignment: .leading,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                            Text("Buy in Shares")
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            Text("Buy AAPL in shares, starting at 0.000001 shares.")
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                .font(.system(size: 15))
                        })
                        Spacer()
                    
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15, alignment: .bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.horizontal, 10)
                })
                    .padding(.bottom, 12)

                    .overlay(Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)
                
                Text("Conditional Orders")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))
                
                //Recurring Investment
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Image("recurringInvestment")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .padding(.vertical, 5)
                        VStack(
                            alignment: .leading,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                            Text("Recurring Investment")
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            Text("Invest in AAPL on a recurring schedule.")
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                .font(.system(size: 15))
                        })
                        Spacer()
                    
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15, alignment: .bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.horizontal, 10)
                })
                    .padding(.bottom, 12)

                    .overlay(Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)
                //Limit Order
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Image("limitOrder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .padding(.vertical, 5)
                        VStack(
                            alignment: .leading,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                            Text("Limit Order")
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            Text("Buy AAPL at a maximum price or lower.")
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                .font(.system(size: 15))
                        })
                        Spacer()
                    
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15, alignment: .bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.horizontal, 10)
                })
                    .padding(.bottom, 12)

                    .overlay(Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)
                //Trailing Stop Order
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Image("trailingStopOrder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .padding(.vertical, 5)
                        VStack(
                            alignment: .leading,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                            Text("Trailing Stop Order")
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            Text("If AAPL rises above its lowest price by a specific amount, trigger a markey buy.")
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                .font(.system(size: 15))
                        })
                        Spacer()
                    
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15, alignment: .bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.horizontal, 10)
                })
                    .padding(.bottom, 12)

                    .overlay(Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)
                // Stop Order
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Image("stopOrder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .padding(.vertical, 5)
                        VStack(
                            alignment: .leading,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                            Text("Stop Order")
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            Text("If AAPL rises to a fixed stop price, trigger a markey buy.")
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                .font(.system(size: 15))
                        })
                        Spacer()
                    
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15, alignment: .bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.horizontal, 10)
                })
                    .padding(.bottom, 12)

                    .overlay(Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)
                //Stop Limit Order
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Image("stopLimitOrder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .padding(.vertical, 5)
                        VStack(
                            alignment: .leading,
                            spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                            content: {
                            Text("Stop Limit Order")
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            Text("If AAPL rises to a fixed stop price, trigger a limit buy.")
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                .font(.system(size: 15))
                        })
                        Spacer()
                    
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15, alignment: .bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.horizontal, 10)
                })
                    .padding(.bottom, 12)

                    .overlay(Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.1313615143, green: 0.1313910186, blue: 0.13135764, alpha: 0.9429324403)))
                                .frame(width: 375, height: 1.5, alignment: .top), alignment: .bottom)
                
        })
            //Background is black, all the way through the screen
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(
                Color.black
                    .ignoresSafeArea()
            )
    }
    
}

struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScreenTwo()
            ScreenTwo()
        }
    }
}
