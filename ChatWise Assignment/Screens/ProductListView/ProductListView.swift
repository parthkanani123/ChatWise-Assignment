//
//  ProductListView.swift
//  ChatWise Assignment
//
//  Created by parth kanani on 22/05/24.
//

import SwiftUI

struct ProductListView: View 
{
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = ProductListViewModel()
    
    var body: some View
    {
        ZStack
        {
            List(viewModel.products) { product in
                
                NavigationLink {
                    ProductDetailVeiw(product: product)
                        .navigationBarBackButtonHidden()
                } label: {
                    ProductListCell(prodoct: product)
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Products")
            .listStyle(.plain)
            
            if(viewModel.isLoading)
            {
                ProgressView()
                    .tint(.black)
                    .scaleEffect(2)
            }
        }
        .toolbar(content: { 
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        })
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dissmissButton)
        }
    }
}

#Preview {
    ProductListView()
}
