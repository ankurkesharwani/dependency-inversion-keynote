//
//  HollywoodMovieDetailsViewController.swift
//  MeetupSample
//
//  Created by Ankur Kesharwani on 06/10/18.
//  Copyright © 2018 Ankur Kesharwani. All rights reserved.
//

import UIKit

class HollywoodMovieDetailsViewController: UIViewController, MovieDetailsUI {
    
    static func newInstance() -> MovieDetailsUI {
        return HollywoodMovieDetailsViewController.init(nibName: "HollywoodMovieDetailsViewController", bundle: nil)
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
