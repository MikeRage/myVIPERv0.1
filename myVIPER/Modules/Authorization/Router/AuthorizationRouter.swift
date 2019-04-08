//
//  AuthorizationRouter.swift
//  myVIPER
//
//  Created by Белецкий Михаил Александрович on 08.04.2019.
//  Copyright © 2019 Белецкий Михаил Александрович. All rights reserved.
//

import Foundation
import UIKit

class AuthorizationRouter {
    
    weak var viewController:UIViewController!
    
    init(viewController: UIViewController)
    {
        self.viewController = viewController
    }
    
    func showAboutScene(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "aboutView")
        viewController.present(controller, animated: true, completion: nil)
    }
}
