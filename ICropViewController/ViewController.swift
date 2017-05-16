//
//  ViewController.swift
//  ICropViewController
//
//  Created by XiaLuo on 2017/5/9.
//  Copyright © 2017年 Hangzhou Gravity Cyber Info Corp. All rights reserved.
//

import UIKit
import CTAssetsPickerController

class ViewController: UIViewController {
    
    @IBOutlet weak var height: NSLayoutConstraint!
    @IBOutlet weak var width: NSLayoutConstraint!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func selectedPhotoBtnAction(_ sender: UIButton) {
        
        IImagePickerManger.shared.selectedStyle = .multiple
        IImagePickerManger.shared.editingStyle = .custom
        IImagePickerManger.shared.delegate = self
        IImagePickerManger.shared.showImageActionSheet(invoker: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: IImagePickerMangerDelegate {
    func cropViewController(picker: UIViewController, images: [UIImage], thumImages: [UIImage]?) {
        picker.dismiss(animated: true, completion: nil)
        //imageView.image = images[0]
        width.constant = images[0].size.width
        height.constant = images[0].size.height
        
        //UIImageWriteToSavedPhotosAlbum(images[0], self, #selector(image(image:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    func image(image: UIImage, didFinishSavingWithError error: NSError?, contextInfo:UnsafeRawPointer){
    }
}



