//
//  ListLoop.swift
//  WarmUP
//
//  Created by Dyani on 1/12/24.
//

import SwiftUI

struct ListLoop: View {
    
    //이곳만 수정하게끔 반복문을 사용한다
    var fruits = ["Apple", "Banana", "Cherry", "Double Kiwi", "Elder berry"]
    
    var price = ["1000", "3000", "4000", "2400", "8000"]
    var count = 0
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    HStack {
                        Text(fruit)
                        Text(price[count])
                    }
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListLoop()
}
