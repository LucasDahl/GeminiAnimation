//
//  ViewController.swift
//  GeminiAnimation
//
//  Created by Lucas Dahl on 1/5/19.
//  Copyright © 2019 Lucas Dahl. All rights reserved.
//

import UIKit
import Gemini

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    //Outlets
    @IBOutlet weak var collectionView: GeminiCollectionView!
    
    // Properties
    let photos = ["1", "2", "3", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegates and datasource
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Configure the animation - Change this part to change the animation(from Gemini github)
        collectionView.gemini
            .cubeAnimation()
            .cubeDegree(90)
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // Animate
        self.collectionView.animateVisibleCells()
        
    }

    //=================================
    // MARK: - Datasource and Delegates
    //=================================
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // Return the total number of photos
        return photos.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Create the cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gemCell", for: indexPath) as! MyCell
        
        // Set the image
        cell.setCell(imageName: photos[indexPath.row])
        
        // Animate
        self.collectionView.animateCell(cell)
        
        // Return the cell
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        // Animate after checking if its nil
        if let cell = cell as? MyCell {
            self.collectionView.animateCell(cell)
        }
        
    }
    
}

