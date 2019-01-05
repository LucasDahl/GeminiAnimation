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
    @IBOutlet weak var collectionView: UICollectionView!
    
    // Properties
    let photos = ["1", "2", "3", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegates and datasource
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }

    //=================================
    // MARK: - Datasource and Delegates
    //=================================
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        <#code#>
    }
    
}

