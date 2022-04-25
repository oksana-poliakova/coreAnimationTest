//
//  ViewController.swift
//  CoreAnimationTest
//
//  Created by Oksana Poliakova on 20.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var greenQuadrate: UIView = {
        let view = UIView(frame: CGRect(x: 20, y: 100, width: 40, height: 40))
        return view
    }()
    
    private lazy var redView: UIView = {
        let view = UIView(frame: CGRect(x: 20, y: 100, width: 140, height: 100))
        view.backgroundColor = .systemRed
        return view
    }()
    
    private lazy var blueView: UIView = {
        let view = UIView(frame: CGRect(x: view.bounds.midX - 140/2,
                                        y: view.bounds.midY - 100/2,
                                        width: 140, height: 100))
        view.backgroundColor = .systemBlue
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
        view.addSubview(blueView)

        move()
        scale()
    }
    
    
    // MARK: - Moving
    
    private func move() {
        let animation = CABasicAnimation()
        animation.keyPath = "position.x"
        animation.fromValue = 100
        animation.toValue = 300
        animation.duration = 5
        
        redView.layer.add(animation, forKey: "basic")
        // update to final position
        redView.layer.position = CGPoint(x: 300, y: 150)
    }
    
    // MARK: - Scaling
    
    private func scale() {
        let animation = CABasicAnimation()
        animation.keyPath = "transform.scale"
        animation.fromValue = 1
        animation.toValue = 2
        animation.duration = 1
        
        blueView.layer.add(animation, forKey: "basic")
        blueView.layer.transform = CATransform3DMakeScale(2, 2, 1)
    }
}

