//
//  ViewController.swift
//  DCCG
//
//  Created by  abcxdx@sina.com on 2018/2/27.
//  Copyright © 2018年 xdxbus@sina.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var collectoinView:UICollectionView?
    var dataArr:NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = LTBGColor
        layout()
    }
    
    func layout() {
        
        collectoinView = collectionView()
        collectoinView?.delegate   = self
        collectoinView?.dataSource = self
        view.addSubview(collectoinView!)
    }
    
    func collectionView() -> UICollectionView {
        
        let collectionView = UICollectionView(frame: view.bounds)
        return collectionView
    }
    
    // MARK: - uicollectionview delegate
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    // MARK: - uicollectionview datasource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return (dataArr?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
}

