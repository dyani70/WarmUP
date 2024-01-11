//
//  Onboarding.swift
//  WarmUP
//
//  Created by Dyani on 1/11/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
//            Text("What's New in Photos")
            MyText(textTitle: "What's New in Photos", textStyle: .system(size: 35))
                .bold()
                .padding(.top, 50)
            
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)

                }
                .padding(.trailing)
            }
            .padding(.vertical)

            
            HStack {
                Image(systemName: "slider.horizontal.2.square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Copy & Paste Edits")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)

                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            
            HStack {
                Image(systemName: "square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Merge Duplicate")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)

                }
                .padding(.trailing)
            }
            
            Spacer()
            
            
            Button {
                
            } label: {
                Text("Continue")
                    .padding()
                    .frame(width: 350)
//                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }
            
            .padding(.bottom, 60)

        }
    }
}

#Preview {
    Onboarding()
}
