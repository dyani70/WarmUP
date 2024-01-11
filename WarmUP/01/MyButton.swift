//
//  MyButton.swift
//  WarmUP
//
//  Created by Dyani on 1/10/24.
//

import SwiftUI

struct MyButton: View {
    
    //입력값 받기
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button {
             
        } label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .font(.headline)
                .cornerRadius(10)
        }
    }
}

#Preview {
    MyButton(buttonTitle: "Button 4", buttonColor: .brown)
}
