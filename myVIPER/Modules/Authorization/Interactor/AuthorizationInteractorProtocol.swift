//
//  AuthorizationInteractorProtocol.swift
//  myVIPER
//
//  Created by Белецкий Михаил Александрович on 03.04.2019.
//  Copyright © 2019 Белецкий Михаил Александрович. All rights reserved.
//

import Foundation

protocol AuthorizationInteractorOutput: class{
    
}

protocol AuthorizationInteractorInput: class {
    func checkLoginPass(login: String, password: String)->Bool
    
}
