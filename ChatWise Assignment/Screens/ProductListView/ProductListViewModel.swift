//
//  ProductListViewModel.swift
//  ChatWise Assignment
//
//  Created by parth kanani on 22/05/24.
//

import Foundation

@MainActor final class ProductListViewModel: ObservableObject
{
    @Published var products: [Product] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    init() {
        getProducts()
    }
    
    func getProducts()
    {
        isLoading = true
        
        Task
        {
            do {
                products = try await NetworkManager.shared.getProducts()
                isLoading = false
            } catch {
                
                if let productError = error as? ProductError
                {
                    switch productError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.unableToComplete // // unableToComplete is generic error placeholder
                }
            }
        }
    }
    
}
