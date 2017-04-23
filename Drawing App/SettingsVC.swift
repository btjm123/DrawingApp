//
//  SettingsVC.swift
//  Drawing App
//
//  Created by roycetanjiashing on 18/12/16.
//  Copyright © 2016 examplecompany. All rights reserved.
//

import UIKit

protocol SettingsVCDelegate:class {
    func settingsViewControllerDidFinish(_ settingsVC:SettingsVC)
}

class SettingsVC: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var brushSizeLabel: UILabel!
    @IBOutlet var opacityLabel: UILabel!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var red:CGFloat = 0.0
    var green:CGFloat = 0.0
    var blue:CGFloat = 0.0
    var brushSize:CGFloat = 5.0
    var opacityValue:CGFloat = 1.0
    
    var delegate:SettingsVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        drawPreview(red: red, green: green, blue: blue)
        
        redSlider.value = Float(red)
        redLabel.text = String(Int(redSlider.value * 255))
        
        greenSlider.value = Float(green)
        greenLabel.text = String(Int(greenSlider.value * 255))
        
        blueSlider.value = Float(blue)
        blueLabel.text = String(Int(blueSlider.value * 255))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(_ sender: Any) {
        if delegate != nil {
            delegate?.settingsViewControllerDidFinish(self)
        }
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func brushSizeChanged(_ sender: Any) {
        let slider = sender as! UISlider
        brushSize = CGFloat(slider.value)
        drawPreview(red: red, green: green, blue: blue)
    }
    @IBAction func opacityChanged(_ sender: Any) {
        let slider = sender as! UISlider
        opacityValue = CGFloat(slider.value)
        drawPreview(red: red, green: green, blue: blue)
    }
    @IBAction func redSliderChanged(_ sender: Any) {
        
        let slider = sender as! UISlider
        red = CGFloat(slider.value)
        drawPreview(red: red, green: green, blue: blue)
        redLabel.text = "\(Int(slider.value * 255))"
        
    }
    @IBAction func greenSliderChanged(_ sender: Any) {
        let slider = sender as! UISlider
        green = CGFloat(slider.value)
        drawPreview(red: red, green: green, blue: blue)
        greenLabel.text = "\(Int(slider.value * 255))"
    }
    @IBAction func blueSliderChanged(_ sender: Any) {
        let slider = sender as! UISlider
        blue = CGFloat(slider.value)
        drawPreview(red: red, green: green, blue: blue)
        blueLabel.text = "\(Int(slider.value * 255))"
    }
    
    func drawPreview (red:CGFloat,green:CGFloat,blue:CGFloat) {
        UIGraphicsBeginImageContext(imageView.frame.size)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setStrokeColor(UIColor(red: red, green: green, blue: blue, alpha: opacityValue).cgColor)
        context?.setLineWidth(brushSize)
        context?.setLineCap(CGLineCap.round)
        
        context?.move(to: CGPoint(x:70, y:70))
        context?.addLine(to: CGPoint(x: 70, y: 70))
        context?.strokePath()
        
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

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
