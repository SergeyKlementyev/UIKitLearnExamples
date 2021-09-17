//
//  ViewController.swift
//  UIVisualEffectsExamples
//
//  Created by Сергей Клементьев on 17.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(frame: view.bounds)
        backgroundImageView.image = UIImage(named: "main")
        view.addSubview(backgroundImageView)
        //
        let buttonShowVC: UIButton = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            let vc: NarutoViewController = NarutoViewController()
            vc.modalPresentationStyle = .overCurrentContext
            self?.present(vc, animated: false, completion: nil)
        }))
        buttonShowVC.frame = CGRect(origin: CGPoint(x: 0, y: 50), size: CGSize(width: 100, height: 50))
        buttonShowVC.setTitle("GOGOGOG", for: .normal)
        view.addSubview(buttonShowVC)
    }
    


}

