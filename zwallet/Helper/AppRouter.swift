//
//  AppRouter.swift
//  zwallet
//
//  Created by user217075 on 4/8/22.
//

import Foundation


public class AppRouter {
    public static let shared: AppRouter = AppRouter()
    
    public var loginScene: (()->())? = nil
    
    public func navigateToModule() {
        self.loginScene?()
    }
}
