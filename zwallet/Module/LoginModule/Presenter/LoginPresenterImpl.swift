//
//  LoginPresenter.swift
//  zwallet
//
//  Created by user217075 on 4/7/22.
//

import Foundation

class LoginPresenterImpl: LoginPresenterProtocol {
    
    let view: LoginViewProtocol
    let interactor: LoginInteractorProtocol
    let router: LoginRouterProtocol
    
    init (view: LoginViewProtocol, interactor: LoginInteractorProtocol, router: LoginRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func login(request: LoginRequest) {
        
    }
    
    
}
