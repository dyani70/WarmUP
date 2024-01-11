//
//  MyText.swift
//  WarmUP
//
//  Created by Dyani on 1/10/24.
//

import SwiftUI

struct MyText: View {
    
    var textTitle: String
    var textStyle: Font
    
    var body: some View {
        Text(textTitle)
            .font(textStyle)
            .padding()
    }
}

#Preview {
    MyText(textTitle: "Text Element", textStyle: .body)
}
