//
//  ValueTextFieldView.swift
//  ColorPickerSwiftUI
//
//  Created by Евгений Волошенко on 08.05.2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $text) { _ in
            withAnimation {
                checkValue()
            }
        }
        .frame(width: 50)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Incorrect text", isPresented: $showAlert, actions: {}) {
            Text("Enter the number from 0 to 255")
        }
    }
    
    private func checkValue() {
        if let value = Int(text), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        text = String(value)
    }
}

struct ValueTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant("200"), value: .constant(200))
    }
}
