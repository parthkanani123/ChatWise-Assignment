//
//  Alert.swift
//  ChatWise Assignment
//
//  Created by parth kanani on 22/05/24.
//

import SwiftUI

struct AlertItem: Identifiable
{
    let id = UUID()
    let title: Text
    let message: Text
    let dissmissButton: Alert.Button
}


struct AlertContext
{
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("The data received from the server is invalid. Please contact support."),
                                            dissmissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Inavlid respose from the server. Please try again later or contact support"),
                                            dissmissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                            dissmissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection"),
                                            dissmissButton: .default(Text("OK")))
}
