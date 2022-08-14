//
//  chooseViewController.swift
//  psychologicalTestApp
//
//  Created by 曾曜澤 on 2022/8/2.
//

import UIKit

class chooseViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var chooseButton: [UIButton]!
    @IBOutlet var chooseLabel: [UILabel]!
    @IBOutlet weak var storyImage: UIImageView!
    
    var questiondata = [Question(question: "Q1：船夫說：「你可以坐上我的船，但要以身上的一樣物品交換。」那樣物品會是什麼呢？", choose: ["衣服", "鞋子", "帽子", "", ""]),Question(question: "Q2：船行駛到河中央，你發現船底開了一個洞。這時你會怎麼辦？", choose: ["把洞堵上", "下船游到對岸", "請船家滑快一點", "", ""]), Question(question: "Q3：終於到達了對岸。這時你會說句什麼呢（小聲低咕）？", choose: ["", "心裡記住回答，下一題", "", "", ""]), Question(question: "Q4：你上岸之後，發現有一條小路，沿著這條路一直走，你看到一間小屋，這間小屋要用密碼才能打開。下面這4組密碼，你認為哪個是正確的？", choose: ["6700", "6094", "7450", "6805", ""]),Question(question: "Q5：你打開門走進入後，發現屋子裡空蕩蕩的，但是在屋子中央有一個水桶。你認為水桶裡有水嗎？", choose: ["滿滿的一桶水", "有一半的水" ,"空水桶，沒有水", "", ""]),Question(question: "Q6：你走出屋子，繼續向前走，發現前面有一個瀑布。你認爲這個瀑布的水流速度是多少？", choose: ["靜止", "每小時1-4公里" ,"每小時5公里", "每小時6-9公里" , ""]),Question(question: "Q7：在陽光的照耀下，瀑布的水流散發著美麗的光芒。你看完這美景，你準備繼續向前走，卻發現地上有一把鑰匙串。你認為有多少鑰匙被串在一起呢？", choose: ["1支", "2-5支" ,"6-10支", "", ""]), Question(question: "Q8：再繼續向前走，突然發現眼前出現一個熱氣球。你認為這個熱氣球是？", choose: ["新的", "舊的" ,"", "", ""]), Question(question: "Q9：你圍繞著熱氣圈走了一圈，發現旁邊有個箱子。你覺得這個箱子的尺寸是？", choose: ["小箱子", "中箱子" ,"大箱子", "", ""]), Question(question: "Q10：你覺得這個箱子的材質是什麼？", choose: ["塑膠", "金屬", "木頭", "", ""]), Question(question: "Q11：你準備乘著熱氣球旅行，但發現因為超重無法起飛。下面有5樣東西，你會先拋下哪樣物品來減輕重量呢？", choose: ["照相機", "一個鐘錶", "大皮箱", "照明燈", "罐頭"])]
    //題目
    var index = 0
    //測驗回答選項
    var ansIndex = 0
    var answer = ["", "", "", "", "", "", "", "", "", "", ""]
    
    
    //出題
    func question(){
        if index == 11 {
            index = 10
        }
        questionLabel.text = questiondata[index].question
        for i in 0...4 {
            chooseLabel[i].text = questiondata[index].choose[i]
            if questiondata[index].choose[i] == "" {
                chooseButton[i].isHidden = true
            } else {
                chooseButton[i].isHidden = false
            }
        }
                
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        question()
    }
    
    @IBAction func chooseAnswer(_ sender: UIButton) {
        index += 1
        if index > 6 {
            storyImage.image = UIImage(named: "36241")
        } else if index > 4 {
            storyImage.image = UIImage(named: "Green & Gravity | Acrylic on Canvas | Koyman Galleries")
        } else if index > 2 {
            storyImage.image = UIImage(named: "A Cabin in the Woods")
        }
        question()
        answer[ansIndex] = (sender.titleLabel?.text)!
        print(answer)
        ansIndex += 1
        if ansIndex == 11 {
            ansIndex = 10
            performSegue(withIdentifier: "showResult", sender: sender)
        }
    }

    @IBSegueAction func showResult(_ coder: NSCoder) -> resultViewController? {
        let controller = resultViewController(coder: coder)
        //傳值
        controller?.answerbox = answer
        return controller
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            if let showVC = segue.destination as? resultViewController{
                showVC.answerbox = answer
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
