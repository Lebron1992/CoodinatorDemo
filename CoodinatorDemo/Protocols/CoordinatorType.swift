//
//  CoordinatorType.swift
//  CoodinatorDemo
//
//  Created by Lebron on 2018/4/9.
//  Copyright © 2018 Lebron. All rights reserved.
//

import UIKit

protocol CoordinatorType {
    var navigationController: UINavigationController { get }

    init(navigationController: UINavigationController)

    func launch()
}
