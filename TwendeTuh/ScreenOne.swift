//
//  ContentView.swift
//  TwendeTuh
//
//  Created by Mac on 1/17/23.
//  Copyright © 2023 Mac. All rights reserved.
//

import SwiftUI

struct ScreenOne: View {
    var body: some View {
        NavigationView {
            
            VStack {
                CircleNumber(color: .blue, number: 1)
                    .navigationBarTitle("First one" )
                    .offset(y: -60)
                 
                NavigationLink(destination: ScreenTwo(color: .orange), label: {
                    Text("Next screen")
                    .bold()
                    .frame(width: 280, height: 50).background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                })
            }
        }
        .accentColor(Color(.label))
    }
}


struct ScreenTwo: View {
    
    var color: Color
    var body: some View {
        
        VStack {
            CircleNumber(color: color, number: 2)
                .navigationBarTitle("Second one")
                .offset(y: -60)
            
            NavigationLink(destination: ScreenThree(color: .blue), label: {
                Text("Next screen")
                    .bold()
                    .frame(width: 280, height: 50).background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
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
        ScreenOne()
    }
}
