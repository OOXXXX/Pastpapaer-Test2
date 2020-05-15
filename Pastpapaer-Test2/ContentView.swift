//
//  ContentView.swift
//  Pastpapaer-Test2
//
//  Created by Rhapsody on 2020/5/15.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct ContentView: View {
@State var selection = 0
   var body: some View {
    
        TabView(selection: $selection) {
            HomeView()
                .padding(.bottom)
                .tabItem {
                    if selection == 0 {
                        Image(systemName: "house.fill")
                        .font(.system(size: 23))
                    } else {
                        Image(systemName: "house")
                        .font(.system(size: 23))
                    }
       
                }.tag(0)
                 
    
            
            Text("Docs View")
                .tabItem {
                    if selection == 1 {
                        Image(systemName: "doc.text.fill")
                        .font(.system(size: 23))
                    } else {
                        Image(systemName: "doc.text")
                        .font(.system(size: 23))
                    }
                }.tag(1)
            .transition(.slide)
            
            Text("About View")
            .tabItem {
                if selection == 2 {
                    Image(systemName: "person.fill")
                    .font(.system(size: 23))
                } else {
                    Image(systemName: "person")
                    .font(.system(size: 23))
                }
            }.tag(2)
            .transition(.slide)
        }
                    
                 
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
