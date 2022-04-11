//
//  Config.swift
//  zwallet
//
//  Created by user217075 on 4/7/22.
//

import Foundation

public struct Config{
    private let baseurl: String = "http://3.89.145.177:8000"
    
    func getBaseURL() -> String{
        return self.baseurl
    }
}
