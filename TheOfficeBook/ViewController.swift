//
//  ViewController.swift
//  TheOfficeBook
//
//  Created by Hüseyin Kaya on 3.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myOfficers = [Office]()
    var chosenOfficer : Office?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Office
        let michael = Office(officeName: "Michael Scott", officeTitle: "Title: Regional Manager", officeBirthday:"Birthday: March 15 1965", officeBestLine: "Best Line: That's what she said", officeImage: UIImage(named: "michael")!)
        let dwight = Office(officeName: "Dwight Schrute", officeTitle: "Title: Assistant to the regional manager", officeBirthday: "Birthday: January 20, 1970", officeBestLine: "Best Line: Whenever I'm about to do something, I think, would an idiot do that? And if they would, I do not do that thing.", officeImage: UIImage(named: "dwight")!)
        let jim = Office(officeName: "Jim Halpert", officeTitle: "Title: Salesman", officeBirthday: "Birthday: October 1, 1978", officeBestLine: "Best Line: Best joke ever", officeImage: UIImage(named:"jim")!)
        let pam = Office(officeName: "Pam Beesly", officeTitle: "Title: Receptionist", officeBirthday: "Birthday: March 25, 1979", officeBestLine: "Best Line: I hate the idea that someone out here hates me. I even hate thinking that Al-Qaeda hates me. I think if they got to know me, they wouldn't hate me.", officeImage: UIImage(named: "pam")!)
        let kevin = Office(officeName: "Kevin Malone", officeTitle: "Title: Accountant", officeBirthday: "Birthday: June 1, 1968", officeBestLine: "Best Line: I have very little patience for stupidity.", officeImage: UIImage(named: "kevin")!)
        let creed = Office(officeName: "Creed Bratton", officeTitle: "Title: Quality Assurance", officeBirthday: "Birthday: November 1, 1925", officeBestLine: "Best Line: Nobody steals from Creed Bratton and gets away with it. The last person to do this disappeared. His name...? Creed Bratton", officeImage: UIImage(named: "creed")!)
        let angela = Office(officeName: "Angela Martin", officeTitle: "Title: Accountant", officeBirthday: "Birthday: November 11 1974", officeBestLine: "Best Line: NO! Orange is whorish.", officeImage: UIImage(named: "angela")!)
        let oscar = Office(officeName: "Oscar Martinez", officeTitle: "Title: Accountant", officeBirthday: "Birthday: November 15, 1972", officeBestLine: "Best Line: Around here, Oscar is known as Actually, because he will insert himself into just about any conversation to add facts or correct grammar. He really does fit that old stereotype of the smug gay Mexican.", officeImage: UIImage(named: "oscar")!)
        myOfficers.append(michael)
        myOfficers.append(dwight)
        myOfficers.append(jim)
        myOfficers.append(pam)
        myOfficers.append(kevin)
        myOfficers.append(creed)
        myOfficers.append(angela)
        myOfficers.append(oscar)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myOfficers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = myOfficers[indexPath.row].name //Obje verdiği için name vericez
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenOfficer = myOfficers[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedOfficer = chosenOfficer
        }
    }
    
    
    
    
}

