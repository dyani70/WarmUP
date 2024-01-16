//
//  Modal.swift
//  WarmUP
//
//  Created by Dyani on 1/15/24.
//

import SwiftUI


struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack  {
            Text("메인 페이지 입니다")
            Button {
                showModal = true
            } label: {
                Text("Modal 화면 전환")
            }
        }
        .sheet(isPresented: $showModal) {
            Detail(ispresented: $showModal) //바인딩변수 넣고 엮어줄 변수를 넣는다
        }
    }
}

#Preview {
    Modal()
}
