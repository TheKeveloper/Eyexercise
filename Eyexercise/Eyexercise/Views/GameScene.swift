//
//  GameScene.swift
//  Eyexercise
//
//  Created by Kevin Bi on 1/11/19.
//  Copyright © 2019 Kevelopment. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let LEFT_IMG_NAME = ""
    let RIGHT_IMG_NAME = ""
    var imageLeft : SKNode! = nil
    var imageRight : SKNode! = nil
    
    var distanceInches : CGFloat = 1;
    
    override func didMove(to view: SKView) {
    }
    
    override func sceneDidLoad(){
        scene?.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        imageLeft = SKShapeNode(circleOfRadius: AppDelegate.Pixels(fromInches: 0.5))
        imageRight = SKShapeNode(circleOfRadius: AppDelegate.Pixels(fromInches: 0.5))
        
        setImagePositions();
        scene?.addChild(imageLeft);
        scene?.addChild(imageRight);
    }
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func setImagePositions(){
        imageLeft.position.y = CGFloat(0);
        imageRight.position.y = CGFloat(0);
        let halfDist = CGFloat(distanceInches / 2);
        imageLeft.position.x = -AppDelegate.Pixels(fromInches: halfDist);
        imageRight.position.x = AppDelegate.Pixels(fromInches: halfDist);
    }
}
