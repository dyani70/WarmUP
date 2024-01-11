//
//  Layout.swift
//  WarmUP
//
//  Created by Dyani on 1/10/24.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
//            Text("Text Element 1")
//                .font(.headline)
//                .padding()
//            
//            Text("Text Element 2")
//                .font(.subheadline)
//                .padding()
//            
//            Text("Text Element 3")
//                .font(.body)
//                .padding()
            
            MyText(textTitle: "Text Element 1", textStyle: .headline)
            MyText(textTitle: "Text Element 2", textStyle: .subheadline)
            MyText(textTitle: "Text Element 3", textStyle: .body)
            
            HStack {
//                Button {
//                     
//                } label: {
//                    Text("Button 1")
//                        .padding()
//                        .background(.blue)
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .cornerRadius(10)
//                }
                
                //반복되는 것은 묶어서 별도의 파일을 만들어 사용
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button 2", buttonColor: .cyan)

                

            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            }


        }
    }
}



#Preview {
    Layout()
}
