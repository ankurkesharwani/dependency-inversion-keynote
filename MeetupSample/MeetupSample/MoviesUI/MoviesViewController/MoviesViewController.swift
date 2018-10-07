//
//  MoviesUIViewController.swift
//  MeetupSample
//
//  Created by Ankur Kesharwani on 06/10/18.
//  Copyright © 2018 Ankur Kesharwani. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController, MoviesUI, MovieDetailsUIPresenter {
    
    class func newInstance() -> MoviesUI {
        return MoviesViewController.init(nibName: "MoviesViewController", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func dismiss() {
        
    }

    @IBAction func touchUpInsideOpenBollywoodMovieDetailButton() {
        let bollywoodMovie = Movie()
        bollywoodMovie.title = "Bahubali 2"
        bollywoodMovie.industry = .bollywood
        
        var initParams = MovieDetailsUIInitParams()
        initParams.movie = bollywoodMovie
        let ui = initMovieDetailsUI(initParams: initParams)
        presentMovieDetailsUI(ui)
    }
    
    @IBAction func touchUpInsideOpenHollywoodMovieDetailButton() {
        let hollywoodMovie = Movie()
        hollywoodMovie.title = "Avengers Infinity War"
        hollywoodMovie.industry = .hollywood
        
        var initParams = MovieDetailsUIInitParams()
        initParams.movie = hollywoodMovie
        let ui = initMovieDetailsUI(initParams: initParams)
        presentMovieDetailsUI(ui)

    }
}
