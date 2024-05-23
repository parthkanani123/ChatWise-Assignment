//
//  ProductDetailVeiw.swift
//  ChatWise Assignment
//
//  Created by parth kanani on 22/05/24.
//

import SwiftUI
import Kingfisher

struct ProductDetailVeiw: View 
{
    var product: Product
    @Environment(\.dismiss) var dismiss
    
    var body: some View
    {
        ZStack
        {
            Color(.black)
                .ignoresSafeArea()
            
            VStack
            {
                ScrollView
                {
                    TabView
                    {
                        ForEach(product.images, id: \.self) { imageUrl in
                            KFImage(URL(string: imageUrl))
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 350, height: 200)
                        }
                    }
                    .frame(height: 300)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    
                    VStack
                    {
                        HStack
                        {
                            Text(product.title)
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.bottom, 8)
                                .foregroundStyle(.white)
                            
                            Spacer()
                            
                            Text("$\(product.price, specifier: "%.2f")")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundStyle(.gray)
                        }
                        .padding(.horizontal)
                        
                        VStack
                        {
                            Text(product.description)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.white)
                        }
                        .padding()
                        
                        HStack
                        {
                            VStack(alignment: .leading, spacing: 10)
                            {
                                Text("Brand : ")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white) +
                                Text("\(product.brand)")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.gray)
                                
                                Text("Category : ")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white) +
                                Text("\(product.category)")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.gray)
                                
                                
                                Text("Rating : ")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white) +
                                Text("\(product.rating, specifier: "%.2f")")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.gray)
                                
                                
                                Text("Stock : ")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white) +
                                Text("\(product.stock)")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.gray)
                                
                                
                                Text("Discount : ")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white) +
                                Text("\(product.discountPercentage, specifier: "%.2f")")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.gray)
                            }
                            
                            Spacer()
                        }
                    }
                    .padding()
                    .background(Color(.accent))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.horizontal)
                }
            }
        }
        .toolbar(content: { // we have hide default back button in LoginView and below we have created our custom back button
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        })
    }
}

#Preview {
    ProductDetailVeiw(product: MockData.sampleProduct1)
}
