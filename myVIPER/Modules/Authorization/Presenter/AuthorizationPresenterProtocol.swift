//
//  AuthorizationPresenterProtocol.swift
//  myVIPER
//
//  Created by Белецкий Михаил Александрович on 03.04.2019.
//  Copyright © 2019 Белецкий Михаил Александрович. All rights reserved.
//

import Foundation

protocol AuthorizationPresenterOutput: class {
    
}

protocol AuthorizationPresenterInput: class {
    
    func authorization(login: String, password: (String) -> Bool)
    
}
