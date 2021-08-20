//
//  AmeritradeMainScreen.swift
//  Leuna
//
//  Created by Arshin Jain on 8/5/21.
//

import SwiftUI

struct AmeritradeMainScreen: View {
    let registerURLString = "https://start.tdameritrade.com/open"
    @ObservedObject var authManager = AuthManager()
    @State private var showingPopover = false
    @State private var showingLoginPopover = false
    
    @State var redirectURI = ""
    @State var clientID = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 40)
                
                TextField("(Optional) Client ID", text: $clientID)
                    .font(.title2)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
                TextField("(Optional) Redirect URI", text: $redirectURI)
                    .font(.title2)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
            
                if let url = URL(string: authManager.getURL(clientID: clientID, redirectURI: redirectURI)), let registerURL = URL(string: registerURLString) {
                    Button("Initiate Login") {
                        showingLoginPopover = true
                    }
                    .font(.title2)
                    .foregroundColor(.green)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                    .background(Color.black)
                    .popover(isPresented: $showingLoginPopover) {
                        WebView(request: URLRequest(url: url))
                            .ignoresSafeArea() // edges: .bottom
                            .navigationTitle("Leuna")
                    }
                            
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
                    
                } else {
                    EmptyView()
                        .navigationTitle("Leuna")
                }
            }
        }
    }
}

struct AmeritradeMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        AmeritradeMainScreen()
    }
}
