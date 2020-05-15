//
//  Homeview.swift
//  Pastpapaer-Test2
//
//  Created by Rhapsody on 2020/5/14.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        
        ZStack {
            
        
         Rectangle()
         .foregroundColor((Color(#colorLiteral(red: 0.7254901961, green: 0.7254901961, blue: 0.7254901961, alpha: 1))))
         .frame(width: 80, height: 33)
         .clipShape(RoundedRectangle(cornerRadius: 14))
         
         Rectangle()
         .foregroundColor((Color(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 0.2956710188))))
         .frame(width: 240, height: 41)
         .clipShape(RoundedRectangle(cornerRadius: 14))
            Group {
                HStack {
                    
                    Button("Olevel"){
                    
                    }
                    .font(.custom("Futura", size: 18))
                    .padding(.horizontal, 8)
                    .foregroundColor(Color.black)
                    
                    Button("IGCSE"){
                        
                    }
                    .font(.custom("Futura", size: 18))
                    .padding(.horizontal, 8)
                    .foregroundColor(Color.black)
                    
                    Button("Alevel"){
                        
                    }
                    .font(.custom("Futura", size: 18))
                    .padding(.horizontal, 8)
                    .foregroundColor(Color.black)
            
                }
                
            }
            
            
           
               
        }
    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

