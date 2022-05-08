//
//  ValueTextView.swift
//  ColorPickerSwiftUI
//
//  Created by Евгений Волошенко on 08.05.2022.
//

import SwiftUI

struct TextView: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
    }
}

struct ValueTextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(value: 20)
    }
}
