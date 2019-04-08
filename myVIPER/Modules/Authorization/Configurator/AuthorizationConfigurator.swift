//
//  AuthorizationConfigurator.swift
//  myVIPER
//
//  Created by Белецкий Михаил Александрович on 03.04.2019.
//  Copyright © 2019 Белецкий Михаил Александрович. All rights reserved.
//

import Foundation

class AuthorizationConfigurator{
    
    func configureModule(view: AuthorizationViewController){
        
        let presenter = AuthorizationPresenter()
        let interactor = AuthorizationInteractor()
        let router = AuthorizationRouter(viewController: view)
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.output = presenter
        view.output = presenter
        
    }
}
