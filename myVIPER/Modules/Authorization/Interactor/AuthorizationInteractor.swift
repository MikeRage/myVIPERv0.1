//
//  AuthorizationInteractor.swift
//  myVIPER
//
//  Created by Белецкий Михаил Александрович on 03.04.2019.
//  Copyright © 2019 Белецкий Михаил Александрович. All rights reserved.
//

import Foundation

class AuthorizationInteractor {
    
    weak var output: AuthorizationPresenterOutput!
    
    
}

extension AuthorizationInteractor:AuthorizationInteractorInput{
  
    func checkLoginPass(login: String, password: String) -> Bool {
         if login == "1" && password == "1"{
            return true
        }
        else{
            return false
        }
    }
}

extension AuthorizationInteractor: AuthorizationInteractorOutput{
    
}
