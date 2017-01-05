//
//  ASExhibitionListViewController.swift
//  ArtcmSwift
//
//  Created by Qiqingnan on 16/12/18.
//  Copyright © 2016年 smartrookie. All rights reserved.
//

import UIKit
import Alamofire

class ASExhibitionListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var dataSource: Array<Any>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        Alamofire.request("http://www.artcm.cn/api/v2/exhibition/brief/?limit=1&offset=0&period_type=process").responseJSON { (response) in
            
            let json = JSON(data: response.data!);
            
            print(json);
            
        }
    }
    
//MARK: -tableview delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExhibitionCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
//MARK: -MemoryWaring
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
