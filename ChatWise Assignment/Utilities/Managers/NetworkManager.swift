//
//  NetworkManager.swift
//  ChatWise Assignment
//
//  Created by parth kanani on 22/05/24.
//

import Foundation

final class NetworkManager
{
    static let shared = NetworkManager()
    private let url = "https://dummyjson.com/products"
    
    func getProducts() async throws -> [Product]
    {
        guard let url = URL(string: url) else {
            throw ProductError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ProductError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(ProductResponse.self, from: data).products
        } catch {
            throw ProductError.invalidData
        }
    }
}
