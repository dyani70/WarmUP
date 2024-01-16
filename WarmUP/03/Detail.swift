//
//  Detail.swift
//  WarmUP
//
//  Created by Dyani on 1/16/24.
//

import SwiftUI

struct Detail: View {
    @Binding var ispresented: Bool
    
    var body: some View {
        Text("모달 페이지 입니다!")
        Button {
            ispresented = false
        } label: {
            Text("닫기")
        }
    }
}

#Preview {
    Detail(ispresented: .constant(true))
}
