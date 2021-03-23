//
//  GameViewController.swift
//  Kosuke_Appdojo_Part22
//
//  Created by Kosuke Nagao on 2021/03/17.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let scene = GameScene(size: CGSize(width: 750, height: 1334))
        guard let skView = self.view as? SKView else { return }
        scene.scaleMode = .aspectFit
        skView.presentScene(scene)
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
