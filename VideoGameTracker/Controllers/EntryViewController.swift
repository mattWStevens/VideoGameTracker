//
//  ViewController.swift
//  VideoGameTracker
//
//  Created by Matthew Stevens on 6/18/22.
//

import UIKit
import DeviceKit

class EntryViewController: UIViewController {
    @IBOutlet weak var checkmarkImage: UIImageView!
    @IBOutlet weak var beatenGamesLabel: UILabel!
    @IBOutlet weak var wishListLabel: UILabel!
    @IBOutlet weak var beatenGamesLabelBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var beatenGamesButton: UIButton!
    @IBOutlet weak var wishListButton: UIButton!
    var specialDevice = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.checkmarkImage.clipsToBounds = true
        specialDevice = determineIfSpecial()
        
        self.view.backgroundColor = UIColor(named: K.BrandColors.midnightPurple)
        beatenGamesButton.backgroundColor = UIColor(named: K.BrandColors.mauve)
        wishListButton.backgroundColor = UIColor(named: K.BrandColors.mauve)
        beatenGamesLabel.text = K.LabelStrings.beatenGames
        wishListLabel.text = K.LabelStrings.wishList
        
        // Listen for orientation change.
        NotificationCenter.default.addObserver(self, selector: #selector(orientationChanged), name:  Notification.Name("UIDeviceOrientationDidChangeNotification"), object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    @objc func orientationChanged() {
        if Orientation.isPortrait && !Orientation.isLandscape {
            beatenGamesLabelBottomConstraint.constant = !specialDevice ? 26.5 : 5
        } else if Orientation.isLandscape && !Orientation.isPortrait {
            beatenGamesLabelBottomConstraint.constant = 2
        }
    }
    
    func determineIfSpecial() -> Bool {
        return "\(Device.current)".contains("iPhone SE (2nd generation)") || "\(Device.current)".contains("iPhone 8")
    }
}
