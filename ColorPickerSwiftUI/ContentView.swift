//
//  ContentView.swift
//  ColorPickerSwiftUI
//
//  Created by Евгений Волошенко on 08.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue: Double = Double.random(in: 0...255)
    @State private var greenValue: Double = Double.random(in: 0...255)
    @State private var blueValue: Double = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            ColorView(red: redValue, green: greenValue, blue: blueValue)
            SliderView(sliderValue: $redValue, color: .red)
            SliderView(sliderValue: $greenValue, color: .green)
            SliderView(sliderValue: $blueValue, color: .blue)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
