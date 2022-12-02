//
//  SwitchView.swift
//  rn_native_modules
//
//  Created by Hihi on 02/12/2022.
//

import UIKit

class SwitchView: UIView {
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var textField: UILabel!
    @IBOutlet weak var switchView: UISwitch!
  
    @objc var label:String = "Label" {
        didSet {
            textField.text = label
        }
    }
    @objc var isOn:Bool = false {
        didSet {
            switchView.setOn(isOn, animated: false)
        }
    }
  
    @objc var onValueChange: RCTBubblingEventBlock?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initView() {
        Bundle.main.loadNibNamed("SwitchView", owner: self, options: nil)
        guard let content = containerView else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(content)
    }
    
    @IBAction func onToggleSwitch(_ sender: UISwitch) {
        if onValueChange != nil {
          onValueChange!(["isEnable": sender.isOn])
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
