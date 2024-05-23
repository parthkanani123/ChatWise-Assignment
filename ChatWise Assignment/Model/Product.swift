//
//  Product.swift
//  ChatWise Assignment
//
//  Created by parth kanani on 22/05/24.
//

import Foundation

struct Product: Decodable, Hashable, Identifiable
{
    let id: Int
    let title: String
    let description: String
    let price: Double
    let discountPercentage: Double
    let rating: Double
    let stock: Int
    let brand: String
    let category: String
    let thumbnail: String
    let images: [String]
}

struct ProductResponse: Decodable, Hashable
{
    let products: [Product]
}

struct MockData
{
    static let sampleProduct1 = Product(id: 1,
                                       title: "iPhone 9",
                                       description: "An apple mobile which is nothing like apple",
                                       price: 549,
                                       discountPercentage: 12.96,
                                       rating: 4.69,
                                       stock: 94,
                                       brand: "Apple",
                                       category: "smartphones",
                                       thumbnail: "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg",
                                       images: ["https://cdn.dummyjson.com/product-images/1/1.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/2.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/3.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/4.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"])
    
    static let sampleProduct2 = Product(id: 2,
                                       title: "iPhone 9",
                                       description: "An apple mobile which is nothing like apple",
                                       price: 549,
                                       discountPercentage: 12.96,
                                       rating: 4.69,
                                       stock: 94,
                                       brand: "Apple",
                                       category: "smartphones",
                                       thumbnail: "https://cdn.dummyjson.com/product-images/2/thumbnail.jpg",
                                       images: ["https://cdn.dummyjson.com/product-images/1/1.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/2.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/3.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/4.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"]
                                       )
    
    static let sampleProduct3 = Product(id: 3,
                                       title: "iPhone 9",
                                       description: "An apple mobile which is nothing like apple",
                                       price: 549,
                                       discountPercentage: 12.96,
                                       rating: 4.69,
                                       stock: 94,
                                       brand: "Apple",
                                       category: "smartphones",
                                       thumbnail: "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg",
                                       images: ["https://cdn.dummyjson.com/product-images/1/1.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/2.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/3.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/4.jpg",
                                                "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"])
    
    static let products = [sampleProduct1, sampleProduct2, sampleProduct3]
}
