//
//  DrillViewController.swift
//  Eyexercise
//
//  Created by Kevin Bi on 1/12/19.
//  Copyright © 2019 Kevelopment. All rights reserved.
//

import UIKit

class DrillViewController: UIViewController {
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var imgLeft: UIImageView!
    @IBOutlet weak var imgRight: UIImageView!
    
    let holdTime = 3;
    var elapsedTime = 0;
    var timer : Timer!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
        btnStart.frame.origin.y = AppDelegate.ScreenSize.height - (btnStart.frame.height * 1.5);
        btnStart.frame.origin.x = (AppDelegate.ScreenSize.width / 2) - (btnStart.frame.width / 2);
        // Do any additional setup after loading the view.
    }
    
    override var shouldAutorotate: Bool {
        return false;
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btnStart_Touch(_ sender: Any) {
        if(btnStart.isEnabled){
            elapsedTime = 0;
            if(timer != nil) {
                timer.invalidate();
                btnStart.setTitle("\(holdTime)", for: .disabled)
                btnStart.isEnabled = false;
                
            }
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer : Timer) in
                self.elapsedTime += 1;
                if(self.elapsedTime >= self.holdTime){
                    self.timer.invalidate();
                    self.btnStart.isEnabled = true;
                }
                else{
                    self.btnStart.setTitle("\(self.holdTime - self.elapsedTime)", for: .disabled);
                }
            };
        }
    }
    
}
