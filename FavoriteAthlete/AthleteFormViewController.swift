//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Soft Dev Student on 4/30/19.
//

import UIKit

class AthleteFormViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateView()
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
   
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        
        performSegue(withIdentifier: UnwindToAthleteTable, sender: self)
    }
    
    
    var athlete: Athlete?
    
    func updateView() {
        if let athleteInformation = athlete {
            ageTextField.text = athleteInformation.age
            leagueTextField.text = athleteInformation.league
            nameTextField.text = athleteInformation.name
            teamTextField.text = athleteInformation.team
        }
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
