//
//  BollywoodMovieDetailsViewController.swift
//  MeetupSample
//
//  Created by Ankur Kesharwani on 06/10/18.
//  Copyright © 2018 Ankur Kesharwani. All rights reserved.
//

import UIKit

class BollywoodMovieDetailsViewController: UIViewController, MovieDetailsUI {

    static func newInstance() -> MovieDetailsUI {
        return BollywoodMovieDetailsViewController.init(nibName: "BollywoodMovieDetailsViewController", bundle: nil)
    }
    
    var movie: Movie?
    
    @IBOutlet var movieTitleLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitleLabel?.text = movie?.title
    }
    
    func dismiss() {
        
    }

}
