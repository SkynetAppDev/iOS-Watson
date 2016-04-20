//
//  ViewController.swift
//  AskLyte
//
//  Created by Jay Kesavan on 2/13/16.
//  Copyright © 2016 Jay Kesavan. All rights reserved.
//

import UIKit
import WatsonDeveloperCloud


class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("load IBM Service");
        let service = PersonalityInsights(username: "0e34286e-2a6e-4ad7-82d2-a32165c2e9d9", password: "Jz1h5lsBmYlP");
        
        let sampleText = "Call me Ishmael. Some years ago-never mind how long precisely-having "
            + "little or no money in my purse, and nothing particular to interest me on shore, "
            + "I thought I would sail about a little and see the watery part of the world. "
            + "It is a way I have of driving off the spleen and regulating the circulation. "
            + "Whenever I find myself growing grim about the mouth; whenever it is a damp, "
            + "drizzly November in my soul; whenever I find myself involuntarily pausing before "
            + "coffin warehouses, and bringing up the rear of every funeral I meet; and especially "
            + "whenever my hypos get such an upper hand of me, that it requires a strong moral "
            + "principle to prevent me from deliberately stepping into the street, and methodically "
            + "knocking people's hats off-then, I account it high time to get to sea as soon as I can. "
            + "This is my substitute for pistol and ball. With a philosophical flourish Cato throws himself "
            + "upon his sword; I quietly take to the ship. There is nothing surprising in this. "
            + "If they but knew it, almost all men in their degree, some time or other, cherish "
            + "very nearly the same feelings towards the ocean with me. There now is your insular "
            + "city of the Manhattoes, belted round by wharves as Indian isles by coral reefs-commerce surrounds "
            + "it with her surf. Right and left, the streets take you waterward.";
     
        print("After load IBM Service");
        //print(se
        //service.getProfile("Some text here

        
        service.getProfile(sampleText, completionHandler: { (profile, error) in
            print("test");
            //print(String(profile.dynamicType));
            //print(profile?.tree?.children)
            //let testPersonalityInsights_Trait = profile?.tree?.children?.count;
            //let testPersonalityInsights_Trait = profile?.tree;
            self.printProfile(profile!.tree);
            
            /*for var i = 0; i < profile?.tree?.children![2].children?.count ; ++i {
                print("---------in loop-------")
                print(profile?.tree?.children![2].children![i].ID);
                print(profile?.tree?.children![2].children![i].category);
                print(profile?.tree?.children![2].children![i].name);
            }*/
            
            //var test = testPersonalityInsights_Trait;
            //print(test)
            
            
            //print(profile.);
             //   print(profile.)
            print(error?.description);
        })
        //print(profile)
        print("End IBM Service");
        
        
        
        
        //let label = UILabel(frame: CGRect(x:10, y:50, width: 200, height:20))
        //label.text = "Ask Lyte"
        //view.addSubview(label)
        
        //let loginActionHandler = LoginActionHandler();
        
        let button = UIButton(type: UIButtonType.System) as UIButton
        button.setTitle("Tap Me!", forState: UIControlState.Normal)
        //button.buttonType = UIButtonType.System
        button.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        //button.frame = CGRectMake(200, 65, 46, 30)
        //button.addTarget(self, action: Selector("tapped:"), forControlEvents:
        //  UIControlEvents.TouchUpInside)
        
        //view.addSubview(button)
        
        let loginView = LoginView(frame: CGRectMake(10, 40, 500, 500))
        let loginActionHandler = LoginActionDelegateHandler();
        let loginWSDataHandler = LoginWSDataHandler();
        
        //circular reference
        loginActionHandler.loginUIViewDelegate = loginView;
        
        //Action handler needs a data handler.
        loginActionHandler.loginDataDelegate = loginWSDataHandler;
        //View needs a data handler.
        loginView.loginActionHandlerDelegate = loginActionHandler;
        //Pass a reference to the view.
        
        
        loginView.addCustomView();
        view.addSubview(loginView);
        

    }

    
    func printProfile(profile: PersonalityInsights.Trait){
        
        for var i = 0; i < profile.children.children![2].children?.count ; ++i {
            print("---------in loop-------")
            print(profile.tree?.children![2].children![i].ID);
            print(profile.tree?.children![2].children![i].category);
            print(profile.tree?.children![2].children![i].name);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*func tapped(sender : UIButton!) {
            
            _ = LoginVO(firstName: "Jay", lastName: "Kesavan")
            NSLog("tapped")
    }*/
    
}

