//
//  TestView1.swift
//  Pastpapaer-Test2
//
//  Created by Rhapsody on 2020/5/15.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct TestView1: View {
@State var showSheet = false
var body: some View {
        
    NavigationView {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
           
                NavigationLink(destination: TestView4(), isActive: self.$showSheet){
                 
                    Button("Sheet") {
                        
                        self.showSheet = true
                     }
                    
                    .buttonStyle(YearRoundedButton())
                    .padding(.top)
                    .navigationBarTitle("Olevel")
                    
                     
                }
                Spacer()
            }
        .frame(width: screen.width)
        }
    }
      
    }
}

struct TestView1_Previews: PreviewProvider {
    static var previews: some View {
        TestView1()
    }
}

struct YearRoundedButton: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.system(size: 30))
            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            //.padding(.bottom, -10)
            .frame(width: screen.width-30, height: 80)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: Color.gray.opacity(0.2), radius: 7, x: 0, y: 2)
    }
}
