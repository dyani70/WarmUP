//
//  Navigation.swift
//  WarmUP
//
//  Created by Dyani on 1/17/24.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["디테일뷰로 이동하기", "디테일뷰로 이동하기2"]
    let descriptions = ["데스티네이션 입니다", "데스티네이션 입니다2"]
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack {
            
            List{
                ForEach([0,1], id: \.self) { index in
                    NavigationLink {
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }
                }
                //반복이니 foreach사용
//                NavigationLink {
//                    Text("데스티네이션 입니다")
//                } label: {
//                    Text("디테일뷰로 이동하기")
//                }
//                
//                
//                NavigationLink {
//                    Text("데스티네이션 입니다2")
//                } label: {
//                    Text("디테일뷰로 이동하기2")
//                }
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        showModal = true
                    } label: {
                        Text ("Add")
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("아이템 추가 페이지 입니다")
            })
            .navigationTitle("네비게이션")
                
        }
    }
}

#Preview {
    Navigation()
}
