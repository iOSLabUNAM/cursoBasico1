//
//  DetailViewController.swift
//  stormViewer
//
//  Created by 2020-1 on 9/17/19.
//  Copyright © 2019 2020-1. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var selectedImage: String?
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            imageView.image = UIImage (named : imageToLoad)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
