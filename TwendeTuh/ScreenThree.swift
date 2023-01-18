//
//  ScreenThree.swift
//  TwendeTuh
//
//  Created by Mac on 1/18/23.
//  Copyright © 2023 Mac. All rights reserved.
//

import SwiftUI
struct ScreenThree: View {
    
    var color: Color
    var body: some View {
        
        
        VStack {
            CircleNumber(color: color, number: 3)
                .navigationBarTitle("Third one")
                .offset(y: -60)
            
        }
    }
}
