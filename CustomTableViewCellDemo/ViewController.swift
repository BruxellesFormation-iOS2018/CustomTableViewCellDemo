//
//  ViewController.swift
//  CustomTableViewCellDemo
//
//  Created by Florian Praile on 27/08/2018.
//  Copyright © 2018 Underside. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var values = ["hello", "iz azpd pza dp adz jpj azd"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "cellId")
        self.tableView.estimatedRowHeight = 50
        
        values.append("""
        //
        //  CustomTableViewCell.swift
        //  CustomTableViewCellDemo
        //
        //  Created by Florian Praile on 27/08/2018.
        //  Copyright © 2018 Underside. All rights reserved.
        //
        """)
        
        values.append("""
        ACCEPTANCE OF PRIVACY POLICY

        By accessing and using our Services, you signify acceptance to the terms of this Privacy Policy. Where we require your consent to process your personal information, we will ask for your consent to the collection, use, and disclosure of your personal information as described further below. CB may provide additional "just-in-time" disclosures or additional information about the data collection, use and sharing practices of specific Services. These notices may supplement or clarify CB’s privacy practices or may provide you with additional choices about how CB processes your data.

        If you do not agree with or you are not comfortable with any aspect of this Privacy Policy, you should immediately discontinue access or use of our Services.


        """)
        
        values.append("If you do not agree with or you are not comfortable with any aspect of this Privacy Policy, you should immediately discontinue access or use of our Services.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let text = values[indexPath.row]
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as!  CustomTableViewCell
        cell.demoLabel.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

