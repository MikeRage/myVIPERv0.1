//
//  ViewController.swift
//  myVIPER
//
//  Created by Белецкий Михаил Александрович on 03.04.2019.
//  Copyright © 2019 Белецкий Михаил Александрович. All rights reserved.
//

import UIKit
import MapKit
class AuthorizationViewController: UIViewController, CLLocationManagerDelegate {

    var output: AuthorizationViewOutput!

    @IBOutlet weak var wrongAuthLabel: UILabel!
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    lazy var row: String = {
        return "some string"
    }()
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
       print(row)
        
        let configurator = AuthorizationConfigurator()
        configurator.configureModule(view: self)
        
        #if DEBUG
            print("debuging")
        #endif
        
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("location = \(locValue.latitude) \(locValue.longitude)")
    }
    
    @IBAction func authorize(_ sender: Any) {
        wrongAuthLabel.isHidden = true
        output.authorization(login: loginField.text ?? "", password: passwordField.text ?? "")
        
    }
    @IBAction func about(_ sender: Any) {
        output.showAbout()
    }
}


extension AuthorizationViewController: AuthorizationViewInput{
    func authorizationSuccess() {
        wrongAuthLabel.text = "success authorization"
        wrongAuthLabel.isHidden = false

    }
    
    func authorizationFailed() {
        wrongAuthLabel.text = "wrong login/pass"
        wrongAuthLabel.isHidden = false
    }

    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        var mt = motion
        if motion == .motionShake{
            print("Why are you shaking me?")
        }
    
    }
    
}

