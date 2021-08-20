//
//  AmeritradeOAuthView.swift
//  Leuna
//
//  Created by Arshin Jain on 8/5/21.
//

import SwiftUI
import WebKit

struct AmeritradeOAuthView: View {
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

struct AmeritradeOAuthView_Previews: PreviewProvider {
    static var previews: some View {
        AmeritradeOAuthView()
    }
}
