//
//  TestView2.swift
//  Pastpapaer-Test2
//
//  Created by Rhapsody on 2020/5/14.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct TestView2: View {
    @State private var showModally = false
    @State private var showSheet = false

    var body: some View {
        Form {
            Toggle(isOn: self.$showModally) {
                Text("Modal")
            }
            Button(action: { self.showSheet = true}) {
                Text("Show sheet")
            }
        }
        .sheet(isPresented: $showSheet) {
            Form {
                Button(action: { self.showSheet = false }) {
                    Text("Hide me")
                }
                
            }
         
        }
    }
}

struct TestView2_Previews: PreviewProvider {
    static var previews: some View {
        TestView2()
    }
}
