//
//  HomeViewController.swift
//  BaedalUITask
//
//  Created by 강민혜 on 7/8/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet var sectionImageViews: [UIImageView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        // 요소별 회색 테두리 설정
        for i in sectionImageViews {
            i.layer.borderWidth = 2
            i.layer.borderColor = UIColor.systemGray5.cgColor
            i.layer.cornerRadius = 10
            i.clipsToBounds = true
        }
        
        // 텍스트필드 그림자 효과 설정
        searchButton.layer.shadowColor = UIColor.gray.cgColor
        searchButton.layer.shadowOpacity = 0.5
        searchButton.layer.shadowOffset = CGSize.zero
        searchButton.layer.shadowRadius = 3
        
        // 상단뷰 하단의 2개 모서리만 둥글게 설정
        topView.roundCorners(cornerRadius: 8, maskedCorners: [.layerMinXMaxYCorner, .layerMaxXMaxYCorner])
    }

}
