//
//  SimpleView.swift
//  WarmUP
//
//  Created by Dyani on 1/9/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack  {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("헤드라인 입니다")
                .font(.headline)
                .bold()
                .padding()
            
            Text("서브헤드라인 입니다")
                .font(.subheadline)
                .padding()
            
            Text("바디 입니다")
                .font(.body)
                .padding()
            
            Button {
                //
            } label: {
                Text("Clik Me")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .bold()
            }
        }
    }
}

#Preview {
    SimpleView()
}
