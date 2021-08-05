//
//  WebView.swift
//  Leuna
//
//  Created by Arshin Jain on 8/4/21.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
    public func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Swift.Void) {
            if(navigationAction.navigationType == .other) {
                if navigationAction.request.url != nil {
                    //do what you need with url
                    //self.delegate?.openURL(url: navigationAction.request.url!)
                    print("Redirect URL: \(navigationAction.request.url)")
                }
                decisionHandler(.cancel)
                return
            }
            decisionHandler(.allow)
        }
    
}

#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}
#endif
