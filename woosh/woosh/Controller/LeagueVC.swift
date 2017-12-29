//
//  LeagueVC.swift
//  woosh
//
//  Created by Duong Dang Hoang on 28/12/17.
//  Copyright © 2017 Duong. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet var selectBtnCollection: [BorderButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func leagueButtonTapped(_ sender: Any) {
        for btn in selectBtnCollection{
            btn.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
        }
        let selectedBtn = sender as! UIButton
        selectedBtn.backgroundColor = UIColor(red: 0.138, green: 0.251, blue: 0.23, alpha: 0.8)
        
        nextBtn.isEnabled = true
        nextBtn.backgroundColor = UIColor(red: 0.138, green: 0.251, blue: 0.23, alpha: 0.8)
        
        self.selectLeague(league: selectedBtn.titleLabel!.text!)
    }
    
    func selectLeague(league: String){
        player.desiredLeague = league
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
               skillVC.player = self.player
        }
    }
}
