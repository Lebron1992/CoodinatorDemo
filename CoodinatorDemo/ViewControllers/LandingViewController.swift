//
//  LandingViewController.swift
//  CoodinatorDemo
//
//  Created by Lebron on 2018/4/9.
//  Copyright © 2018 Lebron. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController, Storyboarded {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Actions

    @IBAction func signUpButtonTapped() {
        AppDelegate.shared?.mainCoordinator
            .onboardingCoordinator.navigateToSignUpView()
    }

    @IBAction func logInButtonTapped() {
        AppDelegate.shared?.mainCoordinator
            .onboardingCoordinator.navigateToLogInView()
    }

}
