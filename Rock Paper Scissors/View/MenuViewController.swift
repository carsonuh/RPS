//
//  MenuViewController.swift
//  Rock Paper Scissors
//
//  Created by Carson Uecker-Herman on 11/20/19.
//  Copyright © 2019 armin. All rights reserved.
//

import UIKit
import GameKit



class MenuViewController: UIViewController {
    
    var SD = ScoreData()
    
    func showLeaderboards() {
        let gcVC = GKGameCenterViewController()
        gcVC.gameCenterDelegate = self
        gcVC.viewState = .leaderboards
        gcVC.leaderboardIdentifier = ID.HIGHSCORE
        present(gcVC, animated: true, completion: nil)
    }
    
    func showAchievements() {
        let gcVC = GKGameCenterViewController()
        gcVC.gameCenterDelegate = self
        gcVC.viewState = .achievements
        present(gcVC, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        GameCenterHelper.helper.viewController = self
        SD.loadAchievementProgress()
    }
    
    @IBAction func localGameBtn(_ sender: Any) {
        
    }
    @IBAction func AchievementsBtn(_ sender: Any) {
        showAchievements()
    }
    
    @IBAction func GameCenterBtn(_ sender: Any) {
        showLeaderboards()
    }
}

func loadPlayers(forIdentifiers identifiers: [String],
                 withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil){
    print(identifiers)
}


extension MenuViewController: GKGameCenterControllerDelegate {
    func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController) {
        gameCenterViewController.dismiss(animated: true, completion: nil)
    }
}
