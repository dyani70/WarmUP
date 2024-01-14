//
//  ListLoop.swift
//  WarmUP
//
//  Created by Dyani on 1/12/24.
//

import SwiftUI

//Fruit은 반복될 수 있음 Hashable
struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoop: View {
    
    @State var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        
        Fruit(name: "Cherry", matchFruitName: "Double Kiwi", price: 4000),
        
        Fruit(name: "Double Kiwi", matchFruitName: "Elder berry", price: 2400),
        
        Fruit(name: "Elder berry", matchFruitName: "Double Kiwi", price: 8000),
        
    ]
    
    //너무 많은 데이터는 위와 같이 데이터 모델링 시킨다
//    var fruits = ["Apple", "Banana", "Cherry", "Double Kiwi", "Elder berry"]
//    var matchFruits = ["Banana", "Banana", "Double Kiwi", "Elder berry", "Double Kiwi"]
//    
//    var price = ["1000", "3000", "4000", "2400", "8000"]
//    var count = 0
    
    
    @State var fruitName: String = ""
    
    //이곳만 수정하게끔 반복문을 사용한다
    var body: some View {
        NavigationStack {
            
            VStack{
                HStack {
                    TextField ("insert fruit name", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                    } label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                }
                .padding()
            }
            List {
                ForEach(favoriteFruits, id: \.self) { fruit in
                    VStack(alignment: .leading) {
                        Text("name: \(fruit.name)")
                        Text("matchFruitName: \(fruit.matchFruitName)")
                        Text("price: \(fruit.price)")
                    }
                }.onDelete { indexSet in
                    favoriteFruits.remove(atOffsets: indexSet)
//                    favoriteFruits.remove(at: 0) //0번째가 삭제
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListLoop()
}
