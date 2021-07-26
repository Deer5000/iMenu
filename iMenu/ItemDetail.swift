//
//  ItemDetail.swift
//  iMenu
//
//  Created by Khidr Brinkley on 5/25/21.
//

import SwiftUI


struct ItemDetail: View {
    @EnvironmentObject var Order: Order
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
//                .font(.headline)
            
            Button("Order This") {
                Order.add(item: item)
            }
            .font(.headline)

            
            Spacer()
        }
        
         
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}



struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item:MenuItem.example)
                .environmentObject(Order())
                
        }
    }
}
