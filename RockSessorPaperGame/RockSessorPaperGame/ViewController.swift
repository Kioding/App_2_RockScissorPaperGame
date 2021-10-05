//
//  ViewController.swift
//  RockSessorPaperGame
//
//  Created by kio on 2021/10/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var computerChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. 첫번째/두번째 이미지뷰에 준비 이미지 띄우기
        computerImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 2. 첫번째/두번째 레이블에 "준비" 라고 띄우기
        computerChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
    }
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 선택한 가위 or 바위 or 보 를 저장하기
    }
        
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터가 랜덤 선택한 것을 이미지 뷰에 표시하기
        // 2. 컴퓨터가 랜덤 선택한 것을 레이블에 표시하기
        // 3. 내가 선택한 것을 이미지 뷰에 표시하기
        // 4. 내가 선택한 것을 레이블에 표시하기
        // 5. 선택한 정보를 바탕으로 컴퓨터가 선택한 정보랑 비교해서 이겼는지 졌는지 mainLabel에 출력하기
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터 다시 준비상태 이미지 뷰에 표시하기
        // 2. 컴퓨터 다시 준비상태 레이블에 표시하기
        // 3. 내 선택 이미지 뷰도 준비상태 표시하기
        // 4. 내 선택 레이블도 준비상태 표시하기
        // 5. mainLabel에 "선택하세요" 표시
    }
}

