//
//  ColorView.swift
//  ColorPickerSwiftUI
//
//  Created by Евгений Волошенко on 08.05.2022.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255,
              green: green / 255,
              blue: blue / 255)
        .frame(height: 150)
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15).stroke(.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            ColorView(red: 20, green: 30, blue: 40)
        }
    }
}
