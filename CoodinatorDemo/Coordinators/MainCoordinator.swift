//
//  MainCoordinator.swift
//  CoodinatorDemo
//
//  Created by Lebron on 2018/4/10.
//  Copyright © 2018 Lebron. All rights reserved.
//

import UIKit

final class MainCoordinator: CoordinatorType {
    let navigationController: UINavigationController

    // MAKR: - Coordinators

    lazy var onboardingCoordinator: OnboardingCoordinator = {
        let nav = UINavigationController()
        let coordinator = OnboardingCoordinator(navigationController: nav)
        return coordinator
    }()

    // MARK: - Initializers

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func launch() {
        onboardingCoordinator.launch()
    }

}
