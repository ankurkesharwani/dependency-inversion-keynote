//
//  MoviesUI.swift
//  MeetupSample
//
//  Created by Ankur Kesharwani on 06/10/18.
//  Copyright © 2018 Ankur Kesharwani. All rights reserved.
//

import Foundation

protocol MoviesUI {
    static func newInstance() -> MoviesUI
    
    func dismiss()
}
