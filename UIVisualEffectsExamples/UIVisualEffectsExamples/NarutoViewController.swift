//
//  NarutoViewController.swift
//  UIVisualEffectsExamples
//
//  Created by Сергей Клементьев on 17.09.2021.
//

import UIKit

class NarutoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let narutoImageView = UIImageView()
        narutoImageView.layer.masksToBounds = true
        narutoImageView.layer.cornerRadius = 200/2
        narutoImageView.image = UIImage(named: "naruto")
        //
        let blur = UIBlurEffect(style: .regular)
        let blurView = UIVisualEffectView(effect: blur)
        //
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blur)
        let vibrancyView = UIVisualEffectView(effect: vibrancyEffect)
        
        //
        view.addSubview(blurView)
        vibrancyView.contentView.addSubview(narutoImageView)
        blurView.contentView.addSubview(vibrancyView)
        //
        blurView.frame = view.frame
        vibrancyView.frame = blurView.frame
        narutoImageView.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
    }

}
