//
//  ScreenFive_TrailingStop.swift
//  Leuna
//
//  Created by Sophia Tan on 8/22/21.
//

import SwiftUI

struct ScreenFive_TrailingStop: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 20,
            content: {
            Button(
                action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.green)
            })

            Text("Trailing Stop Order")
                .fontWeight(.semibold)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .padding(.leading, 10)
                
            Text("The stop price follows, or \"trails,\" the lowest price of AAPL by a trail that you set. A market buy is triggered when AAPL rises to the stop price or higher.")
                .font(.system(size: 15))
                .lineSpacing(4)
                .foregroundColor(.white)
                .padding(.leading, 10)
                
        })
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(
                Color.black
                    .ignoresSafeArea()
            )
    }
}

struct ScreenFive_TrailingStop_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFive_TrailingStop()
    }
}
