//
//  ContentView.swift
//  ChatWise Assignment
//
//  Created by parth kanani on 22/05/24.
//

import SwiftUI

struct HomeView: View 
{
    var body: some View 
    {
        NavigationStack
        {
            ZStack
            {
                NavigationLink {
                    ProductListView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("View products")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(width: 260, height: 50)
                        .foregroundStyle(.black)
                        .background(Color(.systemGroupedBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                }
                
            }
            .navigationTitle("Home")
        }
        
    }
}

#Preview {
    HomeView()
}
