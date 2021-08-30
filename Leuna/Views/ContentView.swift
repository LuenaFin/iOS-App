//
//  ContentView.swift
//  Leuna
//
//  Created by Arshin Jain on 8/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingPopover1 = false
    @State private var showingPopover2 = false
    @State private var showingPopover3 = false
    @State private var showingPopover4 = false
    @State private var showingPopover5 = false
    @State private var showingPopover5b = false
    @State private var showingPopover6 = false
    @State private var showingPopover6b = false
    @State private var showingPopover7 = false
    @State private var showingPopover8 = false
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Button("Screen 1") { showingPopover1 = true }
                            .popover(isPresented: $showingPopover1) { ScreenOne() }
                    
                    Button("Screen 2") { showingPopover2 = true }
                            .popover(isPresented: $showingPopover2) { ScreenTwo() }
                    
                    Button("Screen 3") { showingPopover3 = true }
                            .popover(isPresented: $showingPopover3) { ScreenThree() }
                    
                    Button("Screen 4") { showingPopover4 = true }
                            .popover(isPresented: $showingPopover4) { ScreenFour() }
                    
                    Button("Screen 5") { showingPopover5 = true }
                            .popover(isPresented: $showingPopover5) { ScreenFive() }
                    
                    Button("Screen 5 TS") { showingPopover5b = true }
                            .popover(isPresented: $showingPopover5b) { ScreenFive_TrailingStop() }
                    
                    Button("Screen 6") { showingPopover6 = true }
                            .popover(isPresented: $showingPopover6) { ScreenSix() }
                    Button("Screen 6 ST") { showingPopover6b = true }
                            .popover(isPresented: $showingPopover6b) { ScreenSix_SetTrail() }
                    Button("Screen 7") { showingPopover7 = true }
                            .popover(isPresented: $showingPopover7) { ScreenSeven() }
                    Button("Screen 8") { showingPopover8 = true }
                            .popover(isPresented: $showingPopover8) { ScreenEight() }
                    
//                    NavigationLink("Screen 1", destination: ScreenOne().navigationBarHidden(true))
//                    NavigationLink("Screen 2", destination: ScreenTwo().navigationBarHidden(true))
//                    NavigationLink("Screen 3", destination: ScreenThree().navigationBarHidden(true))
//                    NavigationLink("Screen 4", destination: ScreenFour().navigationBarHidden(true))
//                    NavigationLink("Screen 5", destination: ScreenFive().navigationBarHidden(true))
//                    NavigationLink("Screen 5 TS", destination: ScreenFive_TrailingStop().navigationBarHidden(true))
//                    NavigationLink("Screen 6", destination: ScreenSix().navigationBarHidden(true))
//                    NavigationLink("Screen 6 ST", destination: ScreenSix_SetTrail().navigationBarHidden(true))
//                    NavigationLink("Screen 7", destination: ScreenSeven().navigationBarHidden(true))
//                    NavigationLink("Screen 8", destination: ScreenEight().navigationBarHidden(true))
                }
                Spacer()
            }
            .navigationTitle("Luena")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
