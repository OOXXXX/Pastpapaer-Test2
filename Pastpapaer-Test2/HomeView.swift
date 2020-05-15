//
//  Homeview.swift
//  Pastpapaer-Test2
//
//  Created by Rhapsody on 2020/5/14.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct HomeView: View {
@State var selected = 0
    var body: some View {
        
        ZStack{
            
            
            if self.selected == 0{
                TestView1()
            }
            if self.selected == 1{
                TestView2()
            }
            if self.selected == 2{
                TestView3()
            }
            
            
            
            SwitchView(selected: self.$selected)
            
        }

    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct SwitchView: View {
@Binding var selected : Int
    
    var body: some View {
               ZStack {
                   
               
                Rectangle()
                .foregroundColor((Color(#colorLiteral(red: 0.7254901961, green: 0.7254901961, blue: 0.7254901961, alpha: 1))))
                .frame(width: 80, height: 33)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .offset(x: self.selected == 0 ? -75 : 0, y: 0)
                .offset(x: self.selected == 1 ? 0 : 0, y: 0)
                .offset(x: self.selected == 2 ? 75 : 0, y: 0)
                .animation(Animation.easeInOut(duration: 0.3))
                
                Rectangle()
                .foregroundColor((Color(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 0.2956710188))))
                .frame(width: 240, height: 41)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                   
                   Group {
                       HStack {
                           
                           Button("Olevel"){
                            self.selected = 0
                           }
                           .font(.custom("Futura", size: 18))
                           .padding(.horizontal, 8)
                           .foregroundColor(self.selected == 0 ? Color.white : Color.gray)
                           //.animation(Animation.easeInOut.delay(0.5))
                           
                           Button("IGCSE"){
                            self.selected = 1
                           }
                           .font(.custom("Futura", size: 18))
                           .padding(.horizontal, 8)
                           //.animation(Animation.easeInOut.delay(0.5))
                           .foregroundColor(self.selected == 1 ? Color.white : Color.gray)
                           //.foregroundColor(Color.gray)
                           
                           
                           
                           Button("Alevel"){
                            self.selected = 2
                           }
                           .font(.custom("Futura", size: 18))
                           .padding(.horizontal, 8)
                           .foregroundColor(self.selected == 2 ? Color.white : Color.gray)
                           //.animation(Animation.easeInOut.delay(0.5))
                       
                       }
                       
                   }
        
               }
    }
}
