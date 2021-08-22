//
//  ScreenEight.swift
//  Leuna
//
//  Created by Sophia Tan on 8/22/21.
//

import SwiftUI

struct ScreenEight: View {
    @State private var firstCheckColor: Color = Color.black
    @State private var secondCheckColor: Color = Color.black
    @State private var cancelDate: String = "Oct 28, 2001"
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 20,
            content: {
                Button(
                    action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                    label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.green)
            })
                Text("Set Time in Force")
                    .fontWeight(.semibold)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Text("If the order doesn't execute, it should expire by:")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .padding(.bottom, 30)
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Button(
                            action: {
                                firstCheckColor = Color.green
                                secondCheckColor = Color.black
                            },
                            label: {
                            VStack(
                                alignment: .leading,
                                spacing: 5,
                                content: {
                                    Text("1:00 PM Today")
                                        .foregroundColor(.white)
                                    Text("Good til market close")
                                        .font(.system(size: 15))
                                        .foregroundColor(.gray)
                            })
                        })
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundColor(firstCheckColor)
                })
                HStack(
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/,
                    content: {
                        Button(
                            action: {
                                firstCheckColor = Color.black
                                secondCheckColor = Color.green
                            },
                            label: {
                            VStack(
                                alignment: .leading,
                                spacing: 5,
                                content: {
                                    Text(cancelDate)
                                        .foregroundColor(.white)
                                    Text("Good til canceled (up to 90 days)")
                                        .font(.system(size: 15))
                                        .foregroundColor(.gray)
                            })
                        })
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundColor(secondCheckColor)
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
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(
                Color.black
                    .ignoresSafeArea()
            )

    }
}

struct ScreenEight_Previews: PreviewProvider {
    static var previews: some View {
        ScreenEight()
    }
}
