//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Jordan Haynes on 1/30/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack {
                switch categoryName {
                case "Lakes":
                    Label("Lakes", systemImage: "drop.fill")
                        .font(.headline)
                        .padding(.top, 10)
                        .foregroundColor(.teal)
                case "Mountains":
                    Label("Mountains", systemImage: "leaf.circle.fill")
                        .font(.headline)
                        .padding(.top, 10)
                        .foregroundColor(.green)
                case "Rivers":
                    Label("Rivers", systemImage: "drop.fill")
                        .font(.headline)
                        .padding(.top, 10)
                        .foregroundColor(.teal)
                default:
                    Text("Doesn't exist lol.")
                }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}
