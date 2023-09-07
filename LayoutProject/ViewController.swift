//
//  ViewController.swift
//  LayoutProject
//
//  Created by Ali serkan Boyracı  on 18.07.2022.
//
// yatay modu desteklememek icin, ayarlardan sadece portrait secersin.

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel() //label eklemeye yarar.
    var yenidegisken = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        yenidegisken = 3
        print(yenidegisken) //bu 3 ü bastırırken
        print(self.yenidegisken) // bu 4 ü bastırır.
        
        
        let widthFrame = view.frame.size.width //görüntünün çerçevesinin genişliğine eşit bir sabit tanımladık.
        let heightFrame = view.frame.size.height //görüntünün çerçevesinin yuksekligine eşit bir sabit tanımladık.
        
        //label
        
        myLabel.text = "BENIM LABEL" //label ismii verir.
        myLabel.textAlignment = .center // put it on the center.
        myLabel.frame = CGRect(x: widthFrame * 0.5 - widthFrame * 0.8/2, //tam ortayı ayarlamak için görüntü çerçevesinin ortasını yarısı alarak ama aynı zamanda labelin da yarısını çıkararak tam ortaya oturturuz.
                               y: heightFrame*0.5 - 30,
                               width: widthFrame*0.8, //labelin genişliğini çerçeveinin genişliğinin 0.8 katına ayarladık.
                               height: 60)
        //bunun yerine
        //myLabel.frame = CGRect(x: 40, y: 300, width: 100, height: 100) //you must arrange the size and location. // it starts with left upper corner.
        view.addSubview(myLabel) // to add label and see it on the mainstoryboard.
        
        // button
        let myButton = UIButton()
        myButton.setTitle("BENIM BUTTON", for: .normal) //UIControl.State.normal aynısı demek.
        myButton.setTitleColor(.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: widthFrame * 0.5 - widthFrame * 0.8/2,
                                y: heightFrame * 0.7,
                                width: widthFrame * 0.8, height: 100)
        view.addSubview(myButton)
        
        //buttonu aktif etme
        myButton.addTarget(self, //self yazarak kendisini hedef gösterilmeli
                           // VC nin kendisini soyluyoruz, baska bir yerde bisey yapmayacak
                           action: #selector(ViewController.benimfonk), //selector girilmek zorunda.
                           //viewcontroller dışına da objc func yazıp eklenmeli
                           for: UIControl.Event.touchUpInside) //sadece . ya basarak yada
                            //UIControl.Event. yaparak buttonun ne zaman çalıacağını seçebiliriz.
        
                           
    
        
    }
    //IBAction func yazsan da olur.
    @objc func benimfonk() {
        myLabel.text = "User Tapped"
        print("Kullanıcı Tikladi")
    }


}

