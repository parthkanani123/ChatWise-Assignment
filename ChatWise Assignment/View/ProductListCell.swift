//
//  ProductListCell.swift
//  ChatWise Assignment
//
//  Created by parth kanani on 22/05/24.
//

import SwiftUI
import Kingfisher

struct ProductListCell: View 
{
    let prodoct: Product
    
    var body: some View
    {
        HStack
        {
            KFImage(URL(string: prodoct.thumbnail))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 120, height: 90)
            
            VStack(alignment: .leading)
            {
                Text(prodoct.title)
                    .font(.title3)
                    .fontWeight(.medium)
                
                Text("$ \(prodoct.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ProductListCell(prodoct: MockData.sampleProduct2)
}
