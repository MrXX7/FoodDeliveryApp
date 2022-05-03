//
//  FoodDetail.swift
//  FoodDeliveryApp
//
//  Created by Oncu Ohancan on 3.05.2022.
//

import SwiftUI

struct FoodDetail: View {
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image("lasagna")
                    .resizable()
                .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack {
                    Text("Lasagna")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    .shadow(radius: 10)
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }.listRowInsets(EdgeInsets())
            Text("Description")
                .foregroundColor(.primary)
                .font(.body)
                .lineLimit(nil)
                .lineSpacing(12)
            
        }
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail()
    }
}
