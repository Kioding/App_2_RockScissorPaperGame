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
    
    var myChoice: Rps = Rps.rock
    var computerChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. 첫번째/두번째 이미지뷰에 준비 이미지 띄우기
        computerImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 2. 첫번째/두번째 레이블에 "준비" 라고 띄우기
        computerChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
    }
    
    // 선택한 가위 or 바위 or 보 를 저장하기
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 선택한 타이틀 가져오기
        guard let title = sender.currentTitle else {
            return
        }
        
        switch title {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
        }
    }
        
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터가 랜덤 선택한 것을 이미지 뷰에 표시하기
        // 2. 컴퓨터가 랜덤 선택한 것을 레이블에 표시하기
        switch computerChoice {
        case Rps.rock:
            computerImageView.image = #imageLiteral(resourceName: "rock")
            computerChoiceLabel.text = "바위"
        case Rps.paper:
            computerImageView.image = #imageLiteral(resourceName: "paper")
            computerChoiceLabel.text = "보"
        case Rps.scissors:
            computerImageView.image = #imageLiteral(resourceName: "scissors")
            computerChoiceLabel.text = "가위"
        }
        
        // 3. 내가 선택한 것을 이미지 뷰에 표시하기
        // 4. 내가 선택한 것을 레이블에 표시하기
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        // 5. 선택한 정보를 바탕으로 컴퓨터가 선택한 정보랑 비교해서 이겼는지 졌는지 mainLabel에 출력하기
        if computerChoice == myChoice {
            mainLabel.text = "비겼다"
        } else if (computerChoice == .rock && myChoice == .paper) ||
                    (computerChoice == .scissors && myChoice == .rock) ||
                    (computerChoice == .paper && myChoice == .scissors) {
            mainLabel.text = "이겼다"
        } else {
            mainLabel.text = "졌다"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1. 첫번째/두번째 이미지뷰에 준비 이미지 띄우기
        computerImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 2. 첫번째/두번째 레이블에 "준비" 라고 띄우기
        computerChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"

        // 3. mainLabel에 "선택하세요" 표시
        mainLabel.text = "선택하세요"
        
        // 4. 컴퓨터의 가위바위보 랜덤으로 다시 돌리기
        computerChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
}

