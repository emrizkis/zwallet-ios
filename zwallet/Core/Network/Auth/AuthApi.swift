//
//  AuthApi.swift
//  zwallet
//
//  Created by user217075 on 4/7/22.
//

import Foundation
import Moya
import SwiftUI




public enum AuthApi {
    case login(request: LoginRequest)
    case register(request: RegisterRequest)
    case forgotPassword(email: String)
    case verifOTP(email: String, otp: String)
    case setPin(pin: String)
}


extension AuthApi: TargetType {
 
    public var baseURL: URL {
        let config = Config()
        return URL(string: String(describing: config.getBaseURL()))!
    }
    
    public var path: String {
        switch self{
            case .login:
                return "/auth/login"
            case .register:
                return "/auth/signup"
            case .forgotPassword:
                return " "
            case .verifOTP(email: let email, otp: let otp):
                return "/auth/activate/\(email)/\(otp)"
            case .setPin:
                return "/auth/PIN"
        }
    }
    
    public var method: Moya.Method {
        switch self{
            case .login:
                return .post
            case .register:
                return .post
            case .forgotPassword:
                return .post
            case .verifOTP:
                return .get
            case .setPin:
                return .patch
        }
    }
    
    public var task: Task {
        switch self{
            case .login(let request):
                return .requestParameters(parameters: ["email": request.email ?? "", "password": request.password ?? ""], encoding: JSONEncoding.default)
            case .register(let request):
                return .requestParameters(parameters: ["password": request.password ?? "", "username": request.username ?? "", "email": request.email ?? ""], encoding: JSONEncoding.default)
            case .forgotPassword(let email):
                return .requestParameters(parameters: ["email": email], encoding: JSONEncoding.default)
            case .verifOTP:
                return .requestPlain
            case .setPin(let pin):
                return .requestParameters(parameters: ["PIN": pin], encoding: JSONEncoding.default)
            }
    }
    
    public var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
    
    
}

