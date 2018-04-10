//
//  OnboardingCoordinator.swift
//  CoodinatorDemo
//
//  Created by Lebron on 2018/4/10.
//  Copyright © 2018 Lebron. All rights reserved.
//

import UIKit

final class OnboardingCoordinator: CoordinatorType {
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func launch() {
        let landingVC = LandingViewController.instantiate()
        landingVC.delegate = self
        navigationController.pushViewController(landingVC, animated: false)
        AppDelegate.shared?.window?.rootViewController = navigationController
    }
}

// MARK: - Flow Control
extension OnboardingCoordinator {
    func navigateToSignUpView() {
        let signUpVC = SignUpViewController.instantiate()
        navigationController.pushViewController(signUpVC, animated: true)
    }

    func navigateToLogInView() {
        let logInVC = LogInViewController.instantiate()
        navigationController.pushViewController(logInVC, animated: true)
    }
}

// MARK: - LandingViewControllerDelegate
extension OnboardingCoordinator: LandingViewControllerDelegate {
    func landingViewControllerSignUpButtonTapped(_ viewController: LandingViewController) {
        navigateToSignUpView()
    }
    
    func landingViewControllerLoginButtonTapped(_ viewController: LandingViewController) {
        navigateToLogInView()
    }
}
