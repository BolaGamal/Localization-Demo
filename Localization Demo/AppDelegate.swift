//
//  AppDelegate.swift
//  Localization Demo
//
//  Created by BolaGamal on 5/20/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        LocalizationManager.shared.delegate = self
               LocalizationManager.shared.setAppInnitLanguage()
               return true
           }


       }

       extension AppDelegate: LocalizationDelegate {
           func resetApp() {
               guard let window = window else { return }
               let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let vc = storyboard.instantiateViewController(identifier: "ViewController")
               window.rootViewController = vc
               let options: UIView.AnimationOptions = .transitionCrossDissolve
               let duration: TimeInterval = 0.3
               UIView.transition(with: window, duration: duration, options: options, animations: nil, completion: nil)
           }
       }
