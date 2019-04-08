//
//  AuthorizationViewProtocol.swift
//  myVIPER
//
//  Created by Белецкий Михаил Александрович on 03.04.2019.
//  Copyright © 2019 Белецкий Михаил Александрович. All rights reserved.
//

import Foundation

protocol AuthorizationViewInput: class {
    func authorizationFailed()
    func authorizationSuccess()
}

protocol AuthorizationViewOutput: class {
    func authorization(login: String, password: String)
    
    func showAbout()
}
