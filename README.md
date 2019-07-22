# Welecome to the Galaxy: delta
Choose a language for reading.

## Languages
  * [中文](#中文)

---

## 中文
歡迎來到 Galaxy: delta!

Galaxy: delta 是一個想法基於[OKTW星系計畫](https://github.com/OKTW-Network/Galaxy)的 Minecraft 資料包專案，內容計畫包含[OKTW星系計畫](https://github.com/OKTW-Network/Galaxy)中的所有武器、工具、機器和其功能。



### 已實作
  __設定檔__
  
    檔案位置:
	  `datapack/Galaxy-delta/data/galaxy/config`


  __武器__
  
    * 武士刀
	  * 獲得方式
	    * 合成
		  * #TODO
		* 指令
		  * `function galaxy:weapon/katana/get/katana`
	  * 動作/技能
	    * 拔/收刀
		  1. 切換攻擊狀態
		  * 蹲下 + 使用鍵
		    1. 拔刀: 慣用手為空，非慣用手持刀
		    2. 收刀: 慣用手持刀，非慣用手持鞘
		  * 冷卻
			1. #TODO 使用後: ??tick
		* 擊暈
		  1. 使前方目標暈眩
		  * 拔刀時 + 使用鍵
		  * 冷卻
			1. 擊中: 80tick
		    2. 未擊中: 20tick
		* 閃瞬
		  #TODO
		  1. 瞬間移動至前方，並且傷害路徑上的目標
		  * 拔刀後立刻收刀
		  * 冷卻
			1. 使用後: ??tick


  __狀態效果__
  
    * 暈眩
	  1. 暈眩狀態期間，生物停止AI


  __抬頭顯示(HUD)__
  
    * 武士刀
	  * 未拔刀時:
	    * 拔刀動作提示
      * 拔刀時:
	    * 擊暈技能冷卻


### 已計畫
  待補

