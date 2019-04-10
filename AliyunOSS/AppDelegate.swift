//
//  AppDelegate.swift
//  AliyunOSS
//
//  Created by weifans on 2019/4/8.
//  Copyright © 2019 weifans. All rights reserved.
//

import UIKit
import AliyunOSSiOS

let SLEEP_WIND_API = "https://sleepwind.com/service/?command="
let OSS_ENDPOINT = "http://oss-cn-qingdao.aliyuncs.com"
let OSS_TOKEN = "ossToken"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var ossClient: OSSClient!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        OSSDDLog.removeAllLoggers();
        OSSLog.enable();
        
        let provider = OSSAuthCredentialProvider(authServerUrl: SLEEP_WIND_API + OSS_TOKEN)
        ossClient = OSSClient(endpoint: OSS_ENDPOINT, credentialProvider: provider)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}

