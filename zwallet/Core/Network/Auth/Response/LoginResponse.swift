//
//  LoginDataResponse.swift
//  zwallet
//
//  Created by user217075 on 4/7/22.
//

import Foundation


public struct LoginDataResponse: Codable {
    public var id: Int?
    public var email: String?
    public var token: String?
}


public struct LoginResponse: Codable {
    public var status: Int??
    public var message: String
    public var data: LoginDataResponse?
}
