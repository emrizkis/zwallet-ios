//
//  AuthNetworkManagerProtocol.swift
//  zwallet
//
//  Created by user217075 on 4/7/22.
//

import Foundation
import Moya

public class AuthNetworkManagerImpl: AuthNetworkManager {
    
    public func login(request: LoginRequest, completion: @escaping (LoginDataResponse?, Error?) -> ()) {
        let provider = MoyaProvider<AuthApi>()
        
        provider.request(.login(request: request)) { response in switch response {
            case .success(let res):
                let decoder = JSONDecoder()
                do {
                    let loginResponse = try decoder.decode(LoginResponse.self, from: res.data)
                    completion(loginResponse.data, nil)
                } catch let error {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
                
            }
        }

    }

    
    public func register(username: String, email: String, password: String, completion: @escaping (Error?) -> ()) {
        
    }
    
    public func forgotPassword(email: String, completion: @escaping (Error?) -> ()) {
        
    }
    
    public func verifOTP(otp: String, completion: @escaping (Error?) -> ()) {
        
    }
    
    public func setPin(pin: String, completion: (Error?) -> ()) {
        
    }
}
