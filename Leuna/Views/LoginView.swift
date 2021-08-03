//
//  LoginView.swift
//  Leuna
//
//  Created by Arshin Jain on 8/3/21.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Spacer().frame(height: 40)
            HStack {
                Spacer()
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Spacer()
            }
            .padding(.bottom, 40)
            TextField(
                "username",
                text: $username
            )
            .padding(10)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            .padding(.horizontal, 40)
            TextField(
                "password",
                text: $password
            )
            .padding(10)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            .padding(.horizontal, 40)
            .padding(.bottom)
            
            Button(action: {
                print("try to login for \(username)")
            } ) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal,  40)
                    .padding(.vertical, 10)
                    .background(Color.blue)
            }
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
