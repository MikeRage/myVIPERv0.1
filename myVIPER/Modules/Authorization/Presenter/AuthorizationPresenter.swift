//
//  AuthorizationPresenter.swift
//  myVIPER
//
//  Created by Белецкий Михаил Александрович on 03.04.2019.
//  Copyright © 2019 Белецкий Михаил Александрович. All rights reserved.
//

import Foundation

class AuthorizationPresenter {
    
    weak var view: AuthorizationViewInput!
    var interactor: AuthorizationInteractorInput!
    var router: AuthorizationRouter!
}

extension AuthorizationPresenter: AuthorizationViewOutput{
    func showAbout() {
        router.showAboutScene()
    }
    
    func authorization(login: String, password: String) {
        if interactor == nil {NSLog("nil")}
        if interactor.checkLoginPass(login: login, password: password){
            view.authorizationSuccess()
        }
        else{
            view.authorizationFailed()
        }
    }
}

extension AuthorizationPresenter: AuthorizationPresenterOutput {
    
    
}
