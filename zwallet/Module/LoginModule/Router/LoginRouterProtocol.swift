//
//  LoginRouterProtocol.swift
//  zwallet
//
//  Created by user217075 on 4/8/22.
//

import Foundation
import UIKit

public class LoginRouterImpl{
    
    public static func navigateToModule() {
        let vc = LoginViewController(nibName: "LoginViewController", bundle: nil)
        
        let networkManager = AuthNetworkManagerImpl()
        
        let router = LoginRouterImpl()
        let interactor = LoginInteractorImpl()
        let presenter = LoginPresenterImpl(view: vc, interactor: interactor, router: router)
        
        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
}

extension LoginRouterImpl: LoginRouterProtocol {
    func navigateToRegister() {
        
        let vc = LoginViewController(nibName: "RegisterViewController", bundle: nil)
        
       
//        let router = LoginRouterImpl()
//        let interactor = LoginInteractorImpl()
//        let presenter = LoginPresenterImpl(view: vc, interactor: interactor, router: router)
        
        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
        
        
        
    }
    
    func navigateToForgotPassword() {
        
    }
    
    func navigateToHome() {
        
    }
    
    
}
