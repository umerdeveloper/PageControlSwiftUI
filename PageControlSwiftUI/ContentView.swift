//
//  ContentView.swift
//  PageControlSwiftUI
//
//  Created by Umer Khan on 22/02/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var index: Int = 0
    var body: some View {
        ZStack {
            Color.pink.opacity(0.1)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TabView(selection: $index) {
                    ForEach(0...5, id:\.self) { index in
                        Image("\(index + 1)")
                            .resizable()
                            
                            .frame(height: self.index == index ? 250 : 150)
                            .cornerRadius(12)
                            .padding(.horizontal)
                            .tag(index)
                        
                    }
                }
                // TabView
                .frame(height: 250)
                .padding(.top)
                .tabViewStyle(PageTabViewStyle())
                .animation(.easeOut)
                .accentColor(.red)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
