//
//  LoginView.swift
//  Leuna
//
//  Created by Arshin Jain on 8/3/21.
//

import SwiftUI

struct AmeritradeLoginView: View {
    let registerURLString = "https://start.tdameritrade.com/open"
    @ObservedObject var authManager = AuthManager()
    @State private var showingPopover = false
    var body: some View {
        NavigationView {
            if let url = URL(string: authManager.url), let registerURL = URL(string: registerURLString) {
                ZStack {
                    WebView(request: URLRequest(url: url))
                        .ignoresSafeArea() // edges: .bottom
                        .navigationTitle("Leuna")
                    VStack {
                        Spacer()
                        Button("Sign Up") {
                            showingPopover = true
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                        .background(Color.black)
                        .popover(isPresented: $showingPopover) {
                            WebView(request: URLRequest(url: registerURL))
                        }
                    }
                }
            } else {
                EmptyView()
                    .navigationTitle("Leuna")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
//        LoginView()
        AmeritradeLoginView()
    }
}

class AuthManager: ObservableObject {
    var url: String {
        let redirectURI = "https%3A%2F%2F" + "google.com" // "localhost" // https%3A%2F%2F127.0.0.1
        let clientID = "B2OKBSRALWGJLSF987WUOPL5KYXLOPPV"
        let code = "UWaAiU7n9qy%2B62PS7qpEeAUrGlnafS9SgPPMSyHfBzycPzfQr4mX7YATsAUMCEpSwfsby%2Fcr%2FiedkFYOUkZn7oe0g0rW%2FWsjc0eA8RI%2FN6nS3TtMgeyXOKBEAlDMo2%2BrVZZTZs%2FDMcBV4otp0VO0OuTikLoORsFMm6ahF6dGMaXKWR3lCImuTg82sV%2FsBNeCWFDIR8wZ9lPWO%2BE81C4sfVJH5TjDaJMVAQ00EuRJZHhzF6e2FOU41IiGN0gXoS2738zrC7TVZ%2Frf5qjSUkl90S%2FRIblwMEdKFpbsFf4q65uZ0AytPWCREUMSpQcEhHiAIJPBdG2%2BTi7hsu%2BLyU%2F8igKtJ0NHg8C%2F%2BdXSqakBqdLnTG0dAYdhgZz7n7HsOFBQ8HvyUEylSySKu563ljwkYi3%2FzdCB5m4zdpugn9h2gHFBfp2hOeyhOKcfRe%2B100MQuG4LYrgoVi%2FJHHvl1%2FuZ889V1h2BDPKqwq7d6xeQ7hPDIEVR4wPJLXk0XQhxx5%2FfYo3xlAafiJjOwiRHgHPTpktNS9XfgjYxdRLva9oHab4q5XsdlmQ3NoPordwip%2BE3tCp%2FlgYoeDWVTjuvpBrMhYdGaUNSX5Bf8Rn2Lr3iksMDQHTkGJ3U3xUuXIhJAeA6sd3kpidbGrqZImcLfd7F38S%2F1WkXbgIr4l32FFYBDwULA77EClsBTbRqjUzx%2FX6zMlJ2S18QZCaegqO4BmXL1kXXwcy9l97g0ALeU0Dydad0ooKZqFsvBahzSRfw5X4%2BpQp3wViYTRswHTo4BpbKpMBd%2Fq9maiqhEDD7Xu5TCpa4xxlVIvJMgcaXWacrYQnXKXQfhJNPlpsUqnsUxixQFuY275XrUtgYWW8eL%2BFMtfUe%2BimVGz96SFyEuZxlAKAWw0yPfYPddMI%3D212FD3x19z9sWBHDJACbC00B75E"
        return "https://auth.tdameritrade.com/auth?response_type=code&redirect_uri=\(redirectURI)&client_id=\(clientID)%40AMER.OAUTHAP"
        
//        "https://auth.tdameritrade.com/auth?response_type=code&redirect_uri=http%3A%2F%2Flocalhost&client_id=B2OKBSRALWGJLSF987WUOPL5KYXLOPPV%40AMER.OAUTHAP"
    }
}




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
            .padding(1)
            .cornerRadius(6)
            .padding(.horizontal, 40)
            TextField(
                "password",
                text: $password
            )
            .padding(10)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            .padding(1)
            .cornerRadius(6)
            .padding(.horizontal, 40)
            .padding(.bottom, 40)
            
            Button(action: {
                print("try to login for \(username)")
            } ) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal,  40)
                    .padding(.vertical, 10)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}
