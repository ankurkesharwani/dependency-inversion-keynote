//
//  MoviesUIPresenter.swift
//  MeetupSample
//
//  Created by Ankur Kesharwani on 06/10/18.
//  Copyright © 2018 Ankur Kesharwani. All rights reserved.
//

import UIKit

struct MoviesUIInitParams {
    
}

protocol MoviesUIPresenter {
    func initMoviesUI(initParams: MoviesUIInitParams) -> MoviesUI
    func presentMoviesUI(_ ui: MoviesUI)
}

extension MoviesUIPresenter {
    func initMoviesUI(initParams: MoviesUIInitParams) -> MoviesUI {
        return MoviesViewController.newInstance()
    }
}

extension MoviesUIPresenter where Self: UIViewController {
    func presentMoviesUI(_ ui: MoviesUI) {
        navigationController?.pushViewController(ui as! UIViewController, animated: true)
    }
}

extension MoviesUIPresenter where Self: AppDelegate {
    func presentMoviesUI(_ ui: MoviesUI) {
        let navigationController = UINavigationController.init(rootViewController: ui as! UIViewController)
        
        window?.rootViewController = navigationController
    }
}
