//
//  PopViewController.swift
//  Pixel City
//
//  Created by Žan Fras on 02/04/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class PopViewController: UIViewController, UIGestureRecognizerDelegate {
    
    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var popImageView: UIImageView!
    
    //MARK: - Properties
    /***************************************************************/
    var passedImage: UIImage!
    
    //MARK: - Methods
    /***************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popImageView.image = passedImage
        
        addDoubleTap()
    }
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    func addDoubleTap() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapToDismiss))
        tap.numberOfTapsRequired = 2
        tap.delegate = self
        view.addGestureRecognizer(tap)
    }
    
    @objc func tapToDismiss() {
        dismiss(animated: true, completion: nil)
    }

}
