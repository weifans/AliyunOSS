//
//  ViewController.swift
//  AliyunOSS
//
//  Created by weifans on 2019/4/8.
//  Copyright © 2019 weifans. All rights reserved.
//

import UIKit
import AliyunOSSiOS

let BUCKET = "sleepwind-photos"
let Appdelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {

    var ossClient: OSSClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ossClient = Appdelegate.ossClient
    }
    
    @IBAction func button(_ sender: UIButton) {
        
        let request = OSSGetObjectRequest()
        request.bucketName = BUCKET
        request.objectKey = "5c7e986f4dcaaf42ca695a85_1551800807590"
        request.downloadProgress = { (bytesWritten: Int64, totalBytesWritten : Int64, totalBytesExpectedToWrite: Int64) -> Void in
            
            print("bytesWritten:\(bytesWritten)")
            print("totalBytesWritten:\(totalBytesWritten)")
            print("totalBytesExpectedToWrite:\(totalBytesExpectedToWrite)")
        }
        
        let task = ossClient.getObject(request);
        task.continue({(t) -> OSSTask<AnyObject>? in
            print(t)
            return nil
        })
        task.waitUntilFinished()
    }
}

