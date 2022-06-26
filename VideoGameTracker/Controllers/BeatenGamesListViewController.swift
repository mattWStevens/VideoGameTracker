//
//  BeatenGamesListViewController.swift
//  VideoGameTracker
//
//  Created by Matthew Stevens on 6/26/22.
//

import UIKit

class BeatenGamesListViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var beatenGamesCountLabel: UILabel!
    @IBOutlet weak var addNewGameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = K.LabelStrings.beatenGames
        beatenGamesCountLabel.textColor = UIColor(named: K.BrandColors.midnightPurple)
        addNewGameButton.backgroundColor = UIColor(named: K.BrandColors.basePurple)
        addNewGameButton.tintColor = UIColor(named: K.BrandColors.basePurple)
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
