//
//  resultViewController.swift
//  psychologicalTestApp
//
//  Created by 曾曜澤 on 2022/8/2.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var questionLabel1: UILabel!
    @IBOutlet weak var questionLabel2: UILabel!
    @IBOutlet var resultLabel: [UILabel]!
    @IBOutlet weak var Previous: UIButton!
    
    var resultdata = [Answer(question: "Q1：船夫說：「你可以坐上我的船，但要以身上的一樣物品交換。」那樣物品會是什麼呢？", result: "測你最害怕因為結婚失去什麼？", choose: ["A / 衣服：你認為自由最可貴，所以最害怕因為婚姻失去自由。", "B / 鞋子：你認爲物質最重要，害怕婚後無法自由支配金錢。", "C / 帽子：你害怕每天只能圍繞在柴米油鹽上打轉，害怕失去隨意支配的時間，最終變成一個平凡的黃臉婆。", "", ""]),Answer(question: "Q2：船行駛到河中央，你發現船底開了一個洞。這時你會怎麼辦？", result: "測當婚姻出現問題時，你會怎麼處理？", choose: ["A / 把洞堵上：會努力進行修復，通過冷靜的溝通解決婚姻中的問題。", "B / 下船游到對岸：根據情況而定，如果對方犯了原則性錯誤，會選擇離婚。", "C / 請船家滑快一點：會反覆強調自己的觀點，雖然想和平解決問題，但會控制不住自己的情緒，亂發脾氣。", "", ""]), Answer(question: "Q3：終於到達了對岸。這時你會說句什麼呢（小聲低咕）？", result: "你所低咕的內容，其實是你對「婚姻」的真實感想，或者說在婚姻後你會這麼想。", choose: ["", "", "", "", ""]), Answer(question: "Q4：你上岸之後，發現有一條小路，沿著這條路一直走，你看到一間小屋，這間小屋要用密碼才能打開。下面這4組密碼，你認為哪個是正確的？", result: "測你當下對愛情的真實看法。", choose: ["A / 6700：內心深處一直藏著 喜歡的人。", "B / 6094：渴望被別人呵護疼愛。", "C / 7450：不想為了愛情放棄自由。", "D / 6805：很孤獨，特別想結婚。", ""]),Answer(question: "Q5：你打開門走進入後，發現屋子裡空蕩蕩的，但是在屋子中央有一個水桶。你認為水桶裡有水嗎？", result: "測你當下對生活的滿意程度。", choose: ["A / 滿滿的一桶水：你認為目前的生活非常滿意。", "B / 有一半的水：你目前的生活只有一半達到理想，還有一些地方需要努力。" ,"C / 空水桶，沒有水：你對當下的生活很不滿意，有些問題困擾著你，搞得你壓力很大，甚至焦頭爛額。", "", ""]),Answer(question: "Q6：你走出屋子，繼續向前走，發現前面有一個瀑布。你認爲這個瀑布的水流速度是多少？", result: "測你當下對性的慾望強烈程度。", choose: ["A / 0：你幾乎沒有性慾。", "B / 1-4：你的性慾很低。" ,"C / 5：一般般的性慾望。", "D / 6-9：強烈的性慾。" , ""]),Answer(question: "Q7：在陽光的照耀下，瀑布的水流散發著美麗的光芒。你看完這美景，你準備繼續向前走，卻發現地上有一把鑰匙串。你認為有多少鑰匙被串在一起呢？", result: "測你對朋友看法。", choose: ["A / 1：你只有一個好朋友。", "B / 2-5：你認為朋友貴精不貴多，所以你的真心朋友雖然不多，但各個可以兩肋插刀。" ,"C / 6-10：生活中有許多好朋友，但真正能說句心裡話的卻很少，這使你經常感到寂寞。", "", ""]), Answer(question: "Q8：再繼續向前走，突然發現眼前出現一個熱氣球。你認為這個熱氣球是？", result: "測你對過去感情的看法。", choose: ["A / 新的：這說明你以前交往的戀人帶給你很多美好的記憶，即時你們已經分開了，你還是會永遠記住這個人。", "B / 舊的：這說明過去的戀人帶給你很多傷害，甚至這種傷害讓你對愛情的看法產生了很大的改變。" ,"", "", ""]), Answer(question: "Q9：你圍繞著熱氣圈走了一圈，發現旁邊有個箱子。你覺得這個箱子的尺寸是？", result: "箱子的大小，代表你的自負程度。", choose: ["A / 小箱子：你比較謙遜，明白「人外有人，天外有天」的道理。", "B / 中箱子：你比較自負，但不自大。你會透過努力讓自己成為被他人羨慕的人。" ,"C / 大箱子：你特別自負，天老大、地老二，你就是老三。", "", ""]), Answer(question: "Q10：你覺得這個箱子的材質是什麼？", result: "這道題能看出你的感情狀況。", choose: ["A / 塑膠：你們的感情看似很堅固，可遇到問題時一碰即碎。", "B / 金屬：你們的感情很穩固，不過生活裡缺少一些浪漫的儀式感。", "C / 木頭：你們目前正處於磨合期，會發現彼此觀念上存在一些差異。不過若好好溝通，這些問題都可以解決的。", "", ""]), Answer(question: "Q11：你準備乘著熱氣球旅行，但發現因為超重無法起飛。下面有5樣東西，你會先拋下哪樣物品來減輕重量呢？", result: "測你目前正遇到哪方面的難題。", choose: ["A / 照相機：你處在迷茫之中，正在為未來而煩惱。", "B / 一個鐘錶：你最近身體狀況不太好，如果不舒服別硬撐，快去看醫生。", "C / 大皮箱：最近特別缺錢，所以正在為錢的事情發愁。", "D / 照明燈：你正被家庭問題所困擾，或者說最近和親人因為觀念不同而產生矛盾。", "E / 罐頭：你正在為異性問題而煩惱，你可能想要脫單，或正準備為感情間做下某個重要決定。"])]
    
    var index = 0
    var restart = ""
    var answerbox = [String](repeating: "", count: 11)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        result()
    }
    
    func result() {
        func resultAnswer() {
            questionLabel1.text = resultdata[index].question
            questionLabel2.text = resultdata[index].result
            for i in 0...4 {
                resultLabel[i].text = resultdata[index].choose[i]
            }
        }
        func resultAnswerColor() {
            let answerIndex = Int(answerbox[index])!
            if resultLabel[1].text == "" {
                resultLabel[1].backgroundColor = UIColor.clear
            } else {
                resultLabel[answerIndex].backgroundColor = UIColor(displayP3Red: 218/255, green: 247/255, blue: 201/255, alpha: 1)
            }
            }
        if index == -1 {
            index = 0
            Previous.isHidden = true
        } else if index == 0 {
            Previous.isHidden = true
        } else if index == 11 {
            restart = "go"
            index = 10
        } else {
            Previous.isHidden = false
        }
        resultAnswer()
        resultAnswerColor()
    }
  
    func clearBackground() {
        for i in 0...4 {
            resultLabel[i].backgroundColor = UIColor.clear
        }
    }
    
    @IBAction func Previous(_ sender: UIButton) {
        index -= 1
        restart = ""
        clearBackground()
        result()
    }
    //返回最初始頁面
    func restartTest() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func next(_ sender: UIButton) {
        index += 1
        clearBackground()
        result()
        if restart == "go" {
            let restartAlert = UIAlertController(title: "心裡測驗結束", message: "是否要重新測驗？", preferredStyle: .alert)
            let restartAction1 = UIAlertAction(title: "確認", style: .default) { (_) in self.restartTest()
            }
            let restartAction2 = UIAlertAction(title: "取消", style: .default)
            restartAlert.addAction(restartAction1)
            restartAlert.addAction(restartAction2)
            self.present(restartAlert, animated: true)
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
