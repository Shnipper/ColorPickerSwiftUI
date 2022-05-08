//
//  SliderView.swift
//  ColorPickerSwiftUI
//
//  Created by Евгений Волошенко on 08.05.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    @State private var text: String = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            TextView(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: sliderValue) { newValue in
                    text = String(lround(newValue))
                }
                .onAppear {
                    text = String(lround(sliderValue))
                }
            TextFieldView(text: $text, value: $sliderValue)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(30), color: .red)
    }
}
