//
//  ViewController.swift
//  TrafficLight
//
//  Created by Шамин Владимир on 14.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLight {
        case red
        case yellow
        case green
    }
    
    private var lightOn: CGFloat = 1
    private var lightOff: CGFloat = 0.3
    private var currentLight = CurrentLight.red

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
        
        startNextButton.layer.cornerRadius = startNextButton.frame.height / 2
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }

    @IBAction func pressButton() {
        startNextButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            greenLightView.alpha = lightOff
            redLightView.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightOff
            yellowLightView.alpha = lightOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightOff
            greenLightView.alpha = lightOn
            currentLight = .red
        }
    }
    
}

