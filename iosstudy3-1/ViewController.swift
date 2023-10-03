//
//  ViewController.swift
//  iosstudy3-1
//
//  
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var carrotTableView: UITableView!
    let carrotImages = ["2.png", "3.png", "4.png", "5.png", "6.png"]
    let carrotTitles = ["[급구] 50만원 제공!", "에어팟맥스실버", "에어팟 맥스 스페이스그레이", "[S급]에어팟 맥스 스페이스 그레이", "보일러 온돌(배관)"]
    let carrotAddresses = ["당근알바 ∙ 이벤트", "서울특별시 양천구 ∙ 6일 전", "서울특별시 양천구 ∙ 3시간 전", "서울특별시 양천구 ∙ 1일 전", "서울특별시 양천구 ∙ 2일 전"]
    let carrotPrices = ["", "370,000원", "490,000원", "550,000원", ""]
    let carrotComments = ["", "❍ 5  ♡ 23", "❍ 1  ♡ 4", "❍ 1  ♡ 7", ""]
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carrotTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarrotTableViewCell", for: indexPath) as! CarrotTableViewCell
                
        cell.carrotImage.image = UIImage(named: carrotImages[indexPath.row])
        cell.carrotTitle.text = carrotTitles[indexPath.row]
        cell.carrotAddress.text = carrotAddresses[indexPath.row]
        cell.carrotPrice.text = carrotPrices[indexPath.row]
        cell.carrotComment.text = carrotComments[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carrotTableView.delegate = self
        carrotTableView.dataSource = self
        
        writeButton.tintColor = .orange
    }

    @IBOutlet var writeButton: UIButton!
    
}

