//
//  ViewController.swift
//  Conversion
//
//  Created by 미미밍 on 2021/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtExchange: UITextField!
    @IBOutlet weak var txtUSD: UITextField!
    @IBOutlet weak var lblKRW: UILabel!
    @IBOutlet weak var txtCelsius: UITextField!
    @IBOutlet weak var lblFa: UILabel!
    @IBOutlet weak var txtLiter: UITextField!
    @IBOutlet weak var lblGal: UILabel!
    @IBOutlet weak var txtkm: UITextField!
    @IBOutlet weak var lblMile: UILabel!
    @IBOutlet weak var txtMeter: UITextField!
    @IBOutlet weak var lblyd: UILabel!
    @IBOutlet weak var btnCon: UIButton!
    @IBAction func btnCon(_ sender: UIButton) {
        
        if let exchange = Double(txtExchange.text!), let usd = Double(txtUSD.text!){
            let won = exchange * usd
            lblKRW.text = numberFormat(won)
        }else {
            lblKRW.text = "0"
        }
        if let cel = Double(txtCelsius.text!){
            let fa = (cel * 1.8) + 32
            lblFa.text = numberFormat(fa)
        }else {
            lblFa.text = "0"
        }
        
        if let liter = Double(txtLiter.text!){
            let gal = liter*8
            lblGal.text = numberFormat(gal)
        }else {
            lblGal.text = "0"
        }
        
        if let km = Double(txtkm.text!){
            let mile = km*0.62
            lblMile.text = numberFormat(mile)
        }else {
            lblMile.text = "0"
        }
        
        if let meter = Double(txtMeter.text!){
            let yard = meter*1.09
            lblyd.text = numberFormat(yard)
        }else {
            lblyd.text = "0"
        }
        
    }
    
    
    func numberFormat(_ s1:Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(from: NSNumber(value: s1))!
        
        return result
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtExchange.text = "1187"
        btnCon.clipsToBounds = true
        btnCon.layer.cornerRadius = 7
    }


}

