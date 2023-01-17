//
//  ContentView.swift
//  TwendeTuh
//
//  Created by Mac on 1/17/23.
//  Copyright © 2023 Mac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            VStack {
            CircleNumber(color: .blue, number: 1)
                .navigationBarTitle("First one")
                .offset(y: -60)
                
                NavigationLink(destination: Text("Destination"), label: {
                    Text("Next screen")
                })
            }
        }
    }
}
 
struct CircleNumber: View {
    
    var color: Color
    var number: Int
    
    var body: some View {

        ZStack {
            Circle().frame(width: 200, height: 200)
            .foregroundColor(color)
            Text("\(number)").foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
