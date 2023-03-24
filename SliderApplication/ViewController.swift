//
//  ViewController.swift
//  SliderApplication
//
//  Created by 林仲景 on 2023/3/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!

    
    @IBOutlet weak var earth: UIImageView!
    @IBOutlet weak var sakura1: UIImageView!
    @IBOutlet weak var sakura2: UIImageView!
    @IBOutlet weak var sakura3: UIImageView!
    @IBOutlet weak var sakura4: UIImageView!
    
    @IBOutlet weak var sunflower1: UIImageView!
    @IBOutlet weak var sunflower2: UIImageView!
    @IBOutlet weak var sunflower3: UIImageView!
    @IBOutlet weak var sunflower4: UIImageView!
    
    @IBOutlet weak var cosmos1: UIImageView!
    @IBOutlet weak var cosmos2: UIImageView!
    @IBOutlet weak var cosmos3: UIImageView!
    @IBOutlet weak var cosmos4: UIImageView!
    
    @IBOutlet weak var lavender1: UIImageView!
    @IBOutlet weak var lavender2: UIImageView!
    @IBOutlet weak var lavender3: UIImageView!
    @IBOutlet weak var lavender4: UIImageView!
    
    //四季的顏色
    let springColor = UIColor(red: 187/255, green: 214/255, blue: 184/255, alpha: 1).cgColor
    let summerColor = UIColor(red: 228/255, green: 147/255, blue: 147/255, alpha: 1).cgColor
    let autumnColor = UIColor(red: 243/255, green: 224/255, blue: 181/255, alpha: 1).cgColor
    let winterColor = UIColor(red: 133/255, green: 205/255, blue: 253/255, alpha: 1).cgColor
    

    ///四季顏色轉換的設定
    func interpolateColor(from startColor: CGColor, to endColor: CGColor, with fraction: CGFloat) -> CGColor {
        guard let startComponents = startColor.components, let endComponents = endColor.components else {
            return startColor
        }

        let startRed = startComponents[0]
        let startGreen = startComponents[1]
        let startBlue = startComponents[2]
        let startAlpha = startComponents[3]

        let endRed = endComponents[0]
        let endGreen = endComponents[1]
        let endBlue = endComponents[2]
        let endAlpha = endComponents[3]

        let red = startRed + (endRed - startRed) * fraction
        let green = startGreen + (endGreen - startGreen) * fraction
        let blue = startBlue + (endBlue - startBlue) * fraction
        let alpha = startAlpha + (endAlpha - startAlpha) * fraction

        return CGColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //固定物件一開始的位置與狀態
        earth.center = CGPoint(x: 196.5, y: 852)
        sunflowerChange(degree: 0)
        sakuraChange(degree: 0)
        cosmosChange(degree: 0)
        LavenderChange(degree: 0)
        //一開始背景顏色的顯示
        view.backgroundColor = UIColor(red: 187/255, green: 214/255, blue: 184/255, alpha: 1)
    }
    ///設定櫻花樹轉動的function
    func sakuraChange(degree:CGFloat){
        sakura1.center = CGPoint(x: 196.5, y: 852)
        sakura2.center = CGPoint(x: 196.5, y: 852)
        sakura3.center = CGPoint(x: 196.5, y: 852)
        sakura4.center = CGPoint(x: 196.5, y: 852)
        sakura1.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: -133, y: -313)
        sakura2.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: -36, y: -340)
        sakura3.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: 66, y: -335)
        sakura4.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: 160, y: -290)
    }
    ///設定太陽花轉動的function
    func sunflowerChange(degree:CGFloat){
        sunflower1.center = CGPoint(x: 196.5, y: 852)
        sunflower2.center = CGPoint(x: 196.5, y: 852)
        sunflower3.center = CGPoint(x: 196.5, y: 852)
        sunflower4.center = CGPoint(x: 196.5, y: 852)
        sunflower1.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: -330, y: 120)
        sunflower2.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: -350, y: 20)
        sunflower3.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: -330, y: -80)
        sunflower4.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: -290, y: -160)
        }
    ///設定波斯菊轉動的function
    func cosmosChange(degree:CGFloat){
        cosmos1.center = CGPoint(x: 196.5, y: 852)
        cosmos2.center = CGPoint(x: 196.5, y: 852)
        cosmos3.center = CGPoint(x: 196.5, y: 852)
        cosmos4.center = CGPoint(x: 196.5, y: 852)
        cosmos1.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: 133, y: 280)
        cosmos2.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: 36, y: 300)
        cosmos3.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: -66, y: 300)
        cosmos4.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x:-160, y: 260)
        
    }
    ///設定薰衣草轉動的function
    func LavenderChange(degree:CGFloat){
        lavender1.center = CGPoint(x: 196.5, y: 852)
        lavender2.center = CGPoint(x: 196.5, y: 852)
        lavender3.center = CGPoint(x: 196.5, y: 852)
        lavender4.center = CGPoint(x: 196.5, y: 852)
        lavender1.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: 290, y: -170)
        lavender2.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: 340, y: -70)
        lavender3.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: 330, y: 30)
        lavender4.transform = CGAffineTransform.identity.rotated(by: degree).translatedBy(x: 300, y: 110)
        }
    ///slider做動時觸發的function
    @IBAction func sliderMove(_ sender: Any) {
        let degree = .pi/180*CGFloat(slider.value)
        earth.transform = CGAffineTransform.identity.rotated(by:degree)
        sakuraChange(degree: degree)
        sunflowerChange(degree: degree)
        cosmosChange(degree: degree)
        LavenderChange(degree: degree)
        //四季顏色漸層變化的設定
        let newDegree = slider.value
        if newDegree <= 90 {
            let percentage = newDegree / 90
            view.backgroundColor = UIColor(cgColor: interpolateColor(from: springColor, to: summerColor, with: CGFloat(percentage)))
        } else if newDegree <= 180 {
            let percentage = (newDegree - 90) / 90
            view.backgroundColor = UIColor(cgColor: interpolateColor(from: summerColor, to: autumnColor, with: CGFloat(percentage)))
        } else if newDegree <= 270 {
            let percentage = (newDegree - 180) / 90
            view.backgroundColor = UIColor(cgColor: interpolateColor(from: autumnColor, to: winterColor, with: CGFloat(percentage)))
        }
    }
}
    

