//
//  MyCell.swift
//  GeminiAnimation
//
//  Created by Lucas Dahl on 1/5/19.
//  Copyright © 2019 Lucas Dahl. All rights reserved.
//

import Foundation
import Gemini

class MyCell: GeminiCell {
    
    // oultets
    @IBOutlet weak var mainImageView: UIImageView!
    
    // Setup the cell
    func setCell(imageName: String) {
        
        // Set the imageView
        mainImageView.image = UIImage(named: imageName)
        
    }
    
}
