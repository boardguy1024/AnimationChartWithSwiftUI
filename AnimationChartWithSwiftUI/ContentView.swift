//
//  ContentView.swift
//  AnimationChartWithSwiftUI
//
//  Created by park kyung suk on 2020/06/15.
//  Copyright © 2020 park kyung suk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 1
    
    var body: some View {
        
        ZStack {
            
            Color(#colorLiteral(red: 0.5202698112, green: 0.9589678645, blue: 0.7248792052, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
            
                 Text("Hello, World!")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Weekday").tag(0)
                    Text("Afternoon").tag(1)
                    Text("Evening").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 24)
                
                HStack (spacing: 16) {
                    BarChart(value: 50)
                    BarChart(value: 100)
                    BarChart(value: 150)
                    
                }.padding(.top, 24)
                
            }
        }
        
    }
}

struct BarChart: View {
    
    var value: CGFloat = 0
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Capsule().frame(width: 30, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.4881172776, green: 0.9120940566, blue: 0.6927334666, alpha: 1)))
                Capsule().frame(width: 30, height: value)
                    .foregroundColor(.white)
            }
            Text("D").padding(.top, 8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
