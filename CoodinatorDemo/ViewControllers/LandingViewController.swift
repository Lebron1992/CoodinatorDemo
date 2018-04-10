//
//  LandingViewController.swift
//  CoodinatorDemo
//
//  Created by Lebron on 2018/4/9.
//  Copyright © 2018 Lebron. All rights reserved.
//

import UIKit

protocol LandingViewControllerDelegate: class {
    func landingViewControllerSignUpButtonTapped(_ viewController: LandingViewController)
    func landingViewControllerLoginButtonTapped(_ viewController: LandingViewController)
}

class LandingViewController: UIViewController, Storyboarded {

    weak var delegate: LandingViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Actions

    @IBAction func signUpButtonTapped() {
        delegate?.landingViewControllerSignUpButtonTapped(self)
    }

    @IBAction func logInButtonTapped() {
        delegate?.landingViewControllerLoginButtonTapped(self)
    }

}
