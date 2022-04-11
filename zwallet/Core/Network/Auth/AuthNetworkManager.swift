//
//  AuthNetworkManager.swift
//  zwallet
//
//  Created by user217075 on 4/7/22.
//

import Foundation

public protocol AuthNetworkManager{
    func login(request: LoginRequest, completion: @escaping (LoginDataResponse? , Error?)->())
    func register(username: String, email: String, password: String, completion: @escaping (Error?)->())
    func forgotPassword(email: String, completion: @escaping (Error?) -> ())
    func verifOTP(otp: String, completion: @escaping (Error?)->())
    func setPin(pin: String, completion: (Error?)->())
}
