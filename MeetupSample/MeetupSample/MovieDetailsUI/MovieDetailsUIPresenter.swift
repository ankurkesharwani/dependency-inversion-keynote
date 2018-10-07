//
//  MovieDetailsUIPresenter.swift
//  MeetupSample
//
//  Created by Ankur Kesharwani on 06/10/18.
//  Copyright © 2018 Ankur Kesharwani. All rights reserved.
//

import UIKit

struct MovieDetailsUIInitParams {
    var movie: Movie?
}

protocol MovieDetailsUIPresenter {
    func initMovieDetailsUI(initParams: MovieDetailsUIInitParams) -> MovieDetailsUI
    func presentMovieDetailsUI(_ ui: MovieDetailsUI)
}

extension MovieDetailsUIPresenter {
    func initMovieDetailsUI(initParams: MovieDetailsUIInitParams) -> MovieDetailsUI {
        if initParams.movie?.industry == .hollywood {
            var viewController = HollywoodMovieDetailsViewController.newInstance()
            viewController.movie = initParams.movie
            
            return viewController
        } else {
            var viewController = BollywoodMovieDetailsViewController.newInstance()
            viewController.movie = initParams.movie
            
            return viewController
        }
    }
}

extension MovieDetailsUIPresenter where Self: UIViewController {
    func presentMovieDetailsUI(_ ui: MovieDetailsUI) {
        navigationController?.pushViewController(ui as! UIViewController, animated: true)
    }
}
