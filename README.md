# Welecome to the Galaxy: delta

Choose a language for reading.

## Languages

* [中文](#中文)

---

## 中文

歡迎來到 Galaxy: delta!

Galaxy: delta 是一個想法基於[OKTW星系計畫](https://github.com/OKTW-Network/Galaxy)的 Minecraft 資料包專案，內容計畫包含[OKTW星系計畫](https://github.com/OKTW-Network/Galaxy)中的所有武器、工具、機器和其功能。

需要另外安裝[資源包](https://github.com/bill96012/Galaxy-delta-resourcepack)。

### 已實作

  #TODO 移動到WIKI

#### 設定檔

  檔案位置:
    `datapack/Galaxy-delta/data/galaxy/config`

#### 機器

* 高科技工作台
  1. 點擊式合成系統
  * 獲得方式
    * #TODO
    * 指令 `function galaxy:block/machine/get/hi-tech_crafting_table`

#### 功能方塊

* 刀架
  1. 裝飾用途
  2. 右鍵放置武士刀
  3. 兩種樣式
  * 獲得方式
    * 高科技合成
      * #TODO 材料
    * 指令
      * `function galaxy:block/functional/get/katana_showcase-1`
      * `function galaxy:block/functional/get/katana_showcase-2`

#### 武器

* 武士刀
  * 獲得方式
    * 高科技合成
      * 木棒 * 2
      * 鋼錠 * 3
      * 金粒 * 2
      * 剝皮黑橡木原木 * 2
    * 指令
      * `function galaxy:weapon/katana/get/katana`
  * 動作/技能
    * 拔/收刀
      1. 切換攻擊狀態
      * 蹲下 + 使用鍵
        1. 拔刀: 慣用手為空，非慣用手持刀
        2. 收刀: 慣用手持刀，非慣用手持鞘
      * 冷卻
        1. 使用後: 10tick
    * 擊暈
      1. 使前方目標暈眩
      * 拔刀時 + 使用鍵
      * 冷卻
        1. 擊中: 70tick
        2. 未擊中: 20tick
    * 閃瞬
      1. 瞬間移動至前方，並且傷害路徑上的目標
      * 拔刀後立刻收刀
      * 冷卻
        1. 使用後: 120tick

#### 狀態效果

* 暈眩
  1. 暈眩狀態期間，生物停止AI

#### 抬頭顯示(HUD)

* 武士刀
  * 未拔刀時+蹲下: (預設關閉)
    * 拔刀動作提示
  * 未拔刀時+蹲下:
    * 閃瞬技能冷卻
  * 拔刀時+蹲下:
    * 閃瞬觸發時間
  * 拔刀時:
    * 擊暈技能冷卻

### 已計畫

* 手槍
  1. 射速快短距離遠程武器

* 狙擊槍
  1. 射速低高精準遠距離武器

* 電梯
  1. 垂直移動
  2. 參考 Openblock

    (更多待補)
