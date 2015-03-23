//
//  ShokenWordStore.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/03/08.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import Foundation


class ShokenWordStore: WordStore{
    func returnCaption() -> String{
        return "証券用語"
    }
    
    func ReturningWordArray() -> Array<String>{
        var ReturnWordArray:[String] = []
        
        //http://www.nomura.co.jp/terms/a_index.html
        
        var wordArray = ["ISM製造業景況感指数","アイランドリバーサル","アウトルック","青空銘柄","アカウンタビリティ","赤字国債","アクティビスト","アクティブ運用","あく抜け","アグフレーション","アコード","アジアインフラ投資銀行",
            "アジア開発銀行","アセットクラス","頭打ち","アナリスト","アノマリー","アベノミクス","アメリカンタイプ","あや","あや戻し","α","アンダーパフォーム","アンダーライティング","安定操作","アンビシャス","アーニングサプライズ",
            "RR分類","EONIA","遺産整理業務","遺産分割協議書","イスラム債","板","委託手数料","委託保証金","一段高","一年基準","一目均衡表","一般会計","一般競争入札","一般信用取引","一服","移動平均線","イナゴ投資家",
            "IFRS","イミュニゼーション","遺留分","インカムアプローチ","インサイダー取引","姻族","インターコンチネンタル取引所","インターバンク市場","インデックス","インデックスファンド","インフォメーションレシオ",
            "インフレギャップ","インフレヘッジ","インフレ連動債","インプライドボラティリティ","イン・ザ・マネー","イールドカーブ","イールドダッチ方式","イールドレシオとイールドスプレッド","ウィンブルドン現象",
            "受渡し","薄商い","売上総利益","売上高成長率","売掛債権","売り気配","売りたい強気","売り建て玉","売り乗せ","上値","運営管理機関","運用会社","運用スタイル","運用報告書","ALM","永久資産","営業外収益",
            "営業循環基準","営業利益","HFRXグローバル・ヘッジファンド・インデックス","益出し","エクイティファイナンス","エクスワラント","エコファンド","SEC基準","EDINET","FX取引","エマージング市場","MM理論",
            "ERISA法","縁故地方債","エンジェル税制","円高","エンディングノート","円安","追い証","黄金株","欧州金融安定基金","欧州経済共同体","欧州通貨単位","応募者利回り","大型株","中型株","大型株、中型株、小型株",
            "大阪取引所","大台","大天井","お化粧買い","押し目待ちに押し目なし","落ちてくるナイフはつかむな","オバマケア","オフショア市場","オフバランスシート","オプション取引","思惑買い","親引け","織込み済み",
            "オルタナティブ投資","終値","オーバーアロットメント","オーバーシュート","オールインコスト","事業報告","相対売買","アウトパフォーム","アウト・オブ・ザ・マネー","青天井","赤三兵","アキュムレーション",
            "アクティビスト・ファンド","アクティブリターン","悪目買い","上げ足","足どり","アジア欧州会合","アセットアロケーション","アセットスワップ","アット・ザ・マネー","アニュアルレポート","アフリカ開発銀行",
            "甘い","アモチゼーション","あやおし","アルゴリズム取引","アンダーウェイト","アンダーライター","安定株主","安定配当","アンワインド","アービトラージャー","委員会設置会社","移管","遺産分割協議","イスラム金融",
            "遺贈","委託者","投資信託","委託売買","板寄せ売買","一段安","一部指定","往って来い","一般勘定","一般コース","一般担保付社債","移動平均乖離率","移動平均線","委任状闘争","イブニングセッション","嫌気",
            "遺留分減殺請求","インカムゲイン","インセンティブストックオプション","インタレストカバレッジレシオ","インターネット証券","インディカティブNVA","インデックス運用","インバージョン","租税地変換","インフラ関連株ファンド",
            "インフレターゲット","インフレリスク","インフレーション","陰陽線","EV/EBITDA倍率","イールドスプレッド","イールドレシオ","ウィルシャー5000","受取手形","受渡日","売上債権回転率","売上高経常利益率",
            "売掛金","売り崩し","売り越し","売出し","売り値","売るべし売るべからず","上値が重い","運用関連業務","運用指図","運用対象","運用方針","永久債","永久劣後債","営業キャッシュフロー","営業毎旬報告",
            "英国銀行協会","益金不算入制度","益利回り","エクスポージャー","エクセスリターン","S＆Pケース・シラー住宅指数","ST倍率","NT倍率","FFレート","MSCI指数","エリオット波動","円貨建て債券","エンジェル",
            "円短期運用","円建外債","エンハンスト・インデックス運用","円安圧力","オイルマネー","黄金分割比率","欧州銀行間取引金利","欧州通貨制度","欧州連合","大株主","大口取引","大底","大手証券","大引け","押し目買い",
            "オシレーター","踊り場","オフィス空室率","オフショア人民元","オプション","オペレーショナルインテリジェンス","親会社","オライオン","オリジネーター","卸売物価指数","オーダードリブン","オーバーウェイト",
            "オープンエンド型投資信託","オールドエコノミー"]
        
        ReturnWordArray += wordArray
        
        wordArray = ["買い上がり","買掛金","海外直接投資","会計基準","買い越し","会社開示書類の電子化","会社更生法","会社法","買い建て玉","買取請求","介入","買い乗せ","買増制度","解約請求","買うべし買うべからず",
             "顔合せ","価格優先の原則","格付","格付マトリクス","確定給付年金","確定拠出年金規約","確定年金","貸株","貸株超過銘柄","貸株申込制限銘柄","貸出支援基金","カストディアン","片端入れ","CAC40指数","カバードプット",
             "株価","株価位置","株価指数オプション取引","株券","株券失効制度","株券不発行制度","株式移転","株式会社","株式先物取引","株式消却","株式投資のリスク","株式のリスクプレミアム","株式併合","株式持ち合い",
             "株式ロングショート","株主還元","株主資本回転率","株主資本配当率","株主提案権","株主名簿","株主優待","下方修正","空売り規制","仮需","カルテル","カレンシースワップ","為替オーバーレイ運用","為替差損益",
              "為替相場の企業業績への影響","為替の経常的取引","為替ヘッジ","為替レート","換金","監査報酬","監査役","閑散に売りなし","間接金融","関東・甲信インデックス","カントリーファンド","官民ファンド","関連会社",
             "外貨建てMMF","外貨建て投資信託","外国株式","外国為替先物予約","外国債","外国投資信託","外部金融","額面","合併比率","機械受注","企業会計原則","企業再生","企業年金連合会","企業の物価見通し",
             "企業向けサービス価格指数","期先限月","基準価額","規制銘柄","季節調整値","基礎率","キチンサイクル","記念配当","既発債","キャッシュフロー計算書","キャッシュ・コンバージョン・サイクル","CATボンド",
             "キャップレート","還元利回り","キャピタルゲイン課税","キャリートレード","九州インデックス","QE2","教育資金の一括贈与","共済年金","共通番号制度","協同組織金融機関","恐怖指数","拠出限度額","寄与度",
             "記録関連業務","金庫株","金融緩和","金融経済月報","金融再生プログラム","金融商品仲介業","金融商品取引法","金融政策決定会合","金融調節","金融引き締め","金利","金利と為替","金利と物価","金利リスク",
             "議決権行使助言会社","逆ウォッチ曲線","逆三尊型","逆張り","逆日歩に買いなし","ギャップダウン","業種別株価指数","業績予想","銀行","銀行間預金市場","食い合い","クオンツ","鯨幕相場","クセトラ",
             "クモ","クラウドファンディング","繰上償還","投資信託","クリアリング機構","くりっく365","繰延税金資産","クレジットコスト","クレジットと分散","クレジット・ウォッチ","クロス取引","クロスレート",
             "クローズド期間","グリーンシューオプション","グリーンメーラー","グレグジット","グレートローテーション","グロース投資","グローバルオファリング","グローバル債券","グローバルボンドプラス","グローバル・マクロ運用",
             "経営参加権","景気","景気循環","物価と経済成長率","景気動向指数","経済成長率","経済の局面","経常収支","継続企業の前提","決済","決算公告","決算","気配","建設国債","検認","権利落相場",
             "権利確定日","権利付相場","限月","現先取引","現在価値","減資","現実買い","減損会計","現提","限定追加型投資信託","現引","現物取引","ゲーム理論","コアCPI","公開買付け","公開価格","公共債",
             "高裁四類型","公社債店頭売買参考統計値","公証人","公正証書遺言","厚生年金保険","公的介護保険","公的年金","高配当株ファンド","高頻度取引","公募","公募株式投資信託の税金","公募投資信託",
             "効率的フロンティア","子会社","国外送金等調書","国際金融公社","国際資本統計","国債費","国税","国内公社債","国内投資信託","国民経済計算確報","国民年金","小口取引","小締る","個人消費支出",
             "個人年金保険","コストアプローチ","固定金利","固定資産","固定長期適合率","固定比率","個別元本","個別決算","コミットメントライン","コモディティスワップ","コモフレーション","コンセンサス調査",
             "コンティンジェント・キャピタル","コンプライアンス","コンベンショナル方式","コーポレートガバナンス","コールオプション","コールローン","ご祝儀相場","後場寄り","ゴールデン・パラシュート","GNP",
             "ポートフォリオ売買回転率","買入消却","買掛債務","回帰分析","買い気配","買い下がり","会社型投資信託","会社分割","買いたい弱気","買付手数料","買取請求","買い値","買増請求制度","買い持ち","乖離率",
             "カウンターパーティリスク","価格変動リスク","かぎ足","格付機関","確定給付企業年金","確定拠出年金","確定申告","確定利付債","貸株注意喚起銘柄","貸株停止銘柄","貸倒引当金","加重平均","課税標準",
             "カタリスト","カバードコール","カバードワラント","株価維持政策","株価指数","株価指標","株券オプション取引","株券電子化","株式","株式益利回り","株式交換","株式市場","株式投資信託","株式投資のリスクとリターン",
             "株式分割","株式無償割当て","株式累積投資","株主","株主資本","株主資本コスト","株主総会","株主の権利","株主名簿管理人","貨幣数量説","空売り","借換債","仮条件","カルパース","為替","為替感応度",
             "為替操作国","為替相場の経済への影響","為替の資本移動に伴う売買","為替リスク","為替レート","韓国銀行間取引金利","監査法人","閑散相場","幹事証券会社","完全失業率","カントリーアロケーション",
             "カントリーリスク","監理銘柄","外貨準備高","外貨建て債券","外国ETF","外国為替","外国為替市場","外国人投資家","外需関連株","額面金額","合併","元本","機関投資家","企業価値評価","企業年金","企業の将来価値",
             "企業物価指数","起債","基軸通貨","規制金利","季節調整","基礎年金","期待インフレ率","期近限月","希薄化","キャッシュフロー","キャッシュリッチ","キャッシング","CAPM","キャピタルゲイン","キャピタルフライト",
             "旧株","急騰","強圧的二段階買付","共益権","強制加入","京都・滋賀インデックス","共同発行地方債","拠出","居住者","寄与分","均一価格販売方式","金地金","金融経済","金融債","金融市場と経済循環",
             "金融商品取引業","金融政策","金融相場","金融の自由化","金融ビッグバン","金利自由化","金利と景気","金利敏感株","議決権","逆イールド","逆指値注文","逆ザヤ","逆日歩","ギャップアップ","ギヤリングレシオ",
             "業績相場","玉","銀行間相場","銀行代理店制度","クォートドリブン","クオンツ運用","クズネッツサイクル","口数","クラウディングアウト","クラウンジュエル","クリアストリーム","繰越欠損金","繰延資産",
             "繰延税金負債","クレジットデリバティブ","クレジットリンク債","クレジット・モニター","クロスボーダー取引","クローズドエンド型投資信託","クーポン","グリーンシート市場","グリーンメール","グレタイ証券市場",
             "グレーマーケット","グロースファンド","グローバル株式","グローバル投資パフォーマンス基準","グローバル・コーディネーター","GLOBEX","経過利子","景気ウォッチャ—調査","景気循環株","景気対策",
             "景況感格差","経済特区","経済の需給ギャップと金利変動","経常利益","契約型投資信託","決算","決算短信","血族","気配表示","堅調","権利落ち","権利確定","権利行使価格","減価償却費","限月間スプレッド取引",
             "現先レート","現在値","原資産","源泉分離課税","現代投資理論","限定承認","減配","現物","現渡し","コアコアCPI","小甘い","公開買付代理人","公開市場操作","鉱工業生産指数","公社債","公社債投資信託",
             "公示地価","厚生年金基金","公定歩合","公的資金","行動ファイナンス","購買力平価","交付目論見書","公募価格","公募地方債","効率的市場仮説","効力発生日","国外公社債","国債","国債先物","国際収支","国債補完供給",
             "国内ETF","国内公社債の税金","国富","国民所得の三面等価","国民年金基金","小確り","個人型確定拠出年金","個人投資家","個人向け国債","国家戦略特区","固定相場制","固定費","固定負債","個別競争売買",
             "コマーシャルペーパー","コミングリング・リスク","小戻す","コロケーション","混蔵保管","コンドラチェフサイクル","コンベクシティ","コーポレートアクション","コーラブル債","コール市場","合成先物","後場",
             "ゴールデンクロス","需給ギャップ","GDP"]
        
        ReturnWordArray += wordArray
        
        //http://www.nomura.co.jp/terms/sa_index.html
        
        wordArray = ["黒三兵","債券格付","債券単価","債権放棄","最終利回り","最小分散投資","裁定売り","裁定残","再投資","債務超過","最良執行","酒田五法","先物理論価格","差金決済","指値注文","サステナビリティー",
             "サブLIBOR","サマーラリー","さや","三角合併","三角保ち合い","三市場","三尊型","三点童子","サーキットブレーカー","財形貯蓄","在庫調整","財政再計算","財政投融資制度","財政方式","財投債","財務諸表",
             "財務代理人","材料出尽くし","ザラ場","残存口数","シェールガス革命","シカゴIMM投機筋ポジション","市況産業","仕組債","資源国","資産","資産買い入れ基金","資産管理機関","支持線","市場金利","システミックリスク",
             "自然成長率","下支え","市中金利","失権","執行コスト","執行役","質への逃避","指定替え","私的年金","品貸料","シニア債","支払手形","四半期配当","資本","資本コスト","資本剰余金","私募投資信託",
             "社外取締役","社債間限定同順位特約","シャドーバンキング","上海銀行間取引金利","シャープレシオ","収益分配金","終身雇用","終身保険","集団投資スキーム","出庫","主力株","償還期日","償還差益・償還差損",
             "証券化","証券外務員","証券コード","証券総合口座","証券取引所の株式会社化","証券取引法","商号変更","少数株主権","消費関連株","消費者信頼感指数","消費者物価指数","商品ファンド","所得控除",
             "所得の種類","ショーグン債","シリアル限月","新株落ち","新株引受権","新株予約権","シンガポール銀行間取引","新規公開","申告分離課税","深センA株","親族","信託","信託期間","信託契約","信託財産の分別管理",
             "信託報酬","新値足","新甫発会","新安値","信用緩和","信用残","信用乗数","信用取引銘柄","信用リスク","C重油","CDS指数","JS Price","自益権","時価総額","時価評価額","時間的価値","直物取引",
             "事業承継","時系列チャート","自己株式の処分","自己資本比率","自社株買い","実効為替レート","実質金利","実質破綻時免除特約","実需","実物資本","ジニーメイ","地場証券","ジム・ロジャーズ","ジャパン・パッシング",
             "受遺者","住宅金融支援機構","重要事実","受益者","受給権","授権資本","受託者責任","準大手証券","循環株","循環買い","純資産","純投資","順張り","自由金利","上昇基調","上場","上場廃止","譲渡制限株式",
             "情報の非対称性","除権決定","ジョージ・ソロス","ジリ安","人口ボーナス","GDP成長率の読み方","スイッチング","推定相続人の廃除","スタグフレーション","スティープ化","ステープル証券","ストックオプション",
             "ストップ高比例配分・ストップ安比例配分","ストラテジック・バイヤー","ストラドル","ストリップス債","スピンアウト","スプレッド","スペキュレーション取引","スペグジット","スポットレート","スマイルカーブ",
             "スマートハウス","スリッページ","スワップ","正規分布","政策投資","生産財","清算分配金","成長株","制度信用取引","政府短期証券","政府保証債","世界銀行","セクターファンド","設定日","セデル","セリング・クライマックス",
             "宣言的決議","潜在成長率","選択権付債券売買","セントレックス","セーフティネット","税効果会計","税引前当期利益","税方式","絶対収益追求型投資信託","ゼロクーポン債","全国銀行協会","前日比","前引け",
             "相関係数","総合課税","相互会社","相続開始","相続時精算課税制度","相続税の基礎控除","相対パフォーマンス","想定為替レート","相場のことは相場にきけ","底入れ","底を打つ","租税条約","その他剰余金",
             "ソフトランディング","ソブリン債","ソリシター","ソロスチャート","損益通算","損切り","ソーシャル・ネットワーク・ファンド","増資","贈与税","続落","債券","債券貸借取引","債券投資のリスク","サイコロジカルライン",
             "歳出","再生エネルギー","裁定買い","裁定取引","歳入","最良気配","サウジアメリカ","先物取引","先渡し取引","下げ足","サスティナブル成長率","サブプライムローン","様変り","サムライローン","サヤ取り",
             "三角持ち合い","サンクコスト","サンセット条項","三大教書","三面等価の原則","サービサー","在庫指数","財政","財政政策","財政の崖","財投機関債","財務キャッシュフロー","財務上の特約","材料","材料難",
             "残存期間","残余財産分配請求権","塩漬け","市況関連株","仕切売買","シクリカル","しこり","資産運用","資産管理","資産証券化商品","市場期待収益率","市場リスク","自然失業率","自然利子率","下値","確り",
             "執行","執行タイミング指定注文","失念株式","失望売り","仕手株","品薄株","シナジー効果","支払調書","四半期","四半期別GDP速報","資本金","資本準備金","資本注入","締る","社債","シャドーエコノミー",
             "上海A株","上海B株","週足","終活","終身年金","修正株価","主幹事会社","主要株主","種類株式","償還金","商業銀行","証券会社","証券金融会社","証券市場","証券取引所","証券取引等監視委員会","証券保管振替機構",
             "少数株主","少数株主持分","消費財","消費者態度指数","消費動向調査","商法","所得税","所有期間利回り","ショートポジション","新株","新株発行","新株引受権付社債","新株予約権付社債","新規求人倍率",
             "新興市場","シンジケートローン","深センB株","新高値","信託型ライツプラン","信託期間の延長","信託財産","信託財産留保額","信託約款","新値三本足","新窓販国債","信用買い残・売り残","信用危機","信用収縮",
             "信用取引","信用倍率","心理的節目","シーズンストック","地合い","Jカーブ効果","時価会計","時価発行増資","時間軸政策","時間優先の原則","事業債","事業譲渡","自己株式取得","自己資本","自己売買",
             "事前警告型防衛策","実質為替レート","実質GDP","実現損益","実物経済","自動継続投資コース","地場受け","自筆証書遺言","ジャカルタ銀行間取引金利","ジャンクボンド","十字線","住民税","受益権","受益証券",
             "ジュグラーサイクル","受託銀行","受託者","準確定申告","循環株投資","循環物色","純資産総額","純投資","準備預金","自由貿易協定","上昇局面","上場基準","上方修正","剰余金","除数","自律反発狙いの買い",
             "人口オーナス","GDP成長率","GDPデフレーター","推定相続人","スクリーニング","スチュワードシップコード","ステークホルダー","ストキャスティクス","ストックレンディング","ストラテジスト","ストラテジー取引",
             "ストラングル","ストレステスト","スピンオフ","スプレッド取引","スポット型投資信託","スポネ","スマートグリッド","スマートベータ指数","スローハンド型防衛策","スワップション","請求目論見書",
             "政策に売りなし","清算値段","生前贈与","成長株投資","政府系ファンド","政府の経済見通し","整理銘柄","セクターアナリスト","セクターローテーション","節分天井・彼岸底","セリング","セレクトファンド",
             "潜在株式","選択権付き為替予約","選択的債務不履行","先導株比率","税金","税効果資本","税引利益","絶対期日","ゼロ金利政策","ゼロサムゲーム","前日終値","前場","全面安","総還元性向","総合特区",
             "総資本回転率","相続欠格","相続税","相続放棄","相対力指数","相場","底","底堅い","底をつく","備えあれば迷いなし","ソフトダラー","ソブリンウェルスファンド","ソブリンリスク","ソルベンシーマージン比率",
             "損益計算書","損益分岐点","ソーシャルレンディング","増益率","増配","続伸"]
        
        ReturnWordArray += wordArray
        
        wordArray = ["対顧客相場","貸借取引","貸借銘柄","退職給付債務","大量保有報告書","高値覚え","高値引け","タクティカル・アセット・アロケーション","立会外取引","立会時間","立会内取引","建玉","棚卸資産回転率",
             "卵は一つのカゴに盛るな","短期金融資産","短期金利","短期プライムレート","単元未満株","探鉱権益","単純承認","タンス株券","担保","単利","第1号被保険者","第3号被保険者","大会社","代行部分","第三者割当増資",
             "ダイナミックヘッジ","大納会","代表取締役","代用有価証券","ダウンサイド確率","ダブルレバレッジ","だれる","地域経済報告","地方債","チャイナリスク","着地取引","チャート","チャート分析","中間配当",
             "中堅証券","中国・四国インデックス","忠実義務","長期金融市場","長期公社債投資信託","長期プライムレート","提灯をつける","直接利回り","直系卑属","ツイスト・オペ","通貨切下げ","通貨選択型投資信託",
             "月足","突込み買い","積立方式","強含み横バイ","Tick","ティン・パラシュート","低位株","定額年金保険","定時償還","定時定型投資信託","抵当証券","テイラールール","手掛かり難","適温相場","適格機関投資家等特例業務",
             "適債基準","敵対的TOB","適用為替","テクニカル分析","手仕舞い","手詰まり","手控え","転換価格","天候デリバティブ","天井","店頭FX","店頭市場","店頭取引","債券市場","テーパリング","テール","出合い",
             "ディスカウントブローカー","ディスクロージャー","DCF法","ディーリング","デカップリング","出来高10位占有率","デジタル・クーポン債","デットエクイティースワップ","デッドクロス","デッド・キャット・バウンス",
             "デフォルト","デフレスパイラル","デュアルカレンシー債","デューデリジェンス","デルタ","電子交付","東海三県インデックス","当期純利益","投機的水準","等金額リバランス","統合報告","当座比率","投資",
             "投資型年金保険","投資銀行","投資財","投資信託","投資信託法","投資適格","投資の三原則","投資有価証券","東証銀行業株価指数先物取引","東証Mothers","東北インデックス","騰落レシオ","登録金融機関",
             "特殊法人","特定遺贈","特定口座","特別売り気配","特別会計","特別勘定","特別口座","特別受益者","特別分配金","特別目的会社","特例国債","途中償還","突飛安","TOPIX","TOPIX先物取引","トムネ",
             "トラッキングストック","トリガー条項","取組高","取締役","取引所外取引","トリプルウィッチング","Treasury notes","トレンド","トレーダー","トータルリターン","動意","独歩高","ドテン",
             "ドミニオン・ボンド・レーティング・サービシズ","ドルコスト平均法","ドローダウン","貸借対照表","貸借倍率","退職給付会計","退職所得控除","高値","高値づかみ","多議決権種類株","他社株償還条項付債",
             "立会外分売","立会場","タックス・ヘイブン","棚卸資産","他人資本","単位型投資信託","短期金融市場","短期公社債投資信託","単元株制度","単元未満株の取扱い","短資会社","単純平均株価","単独株主権",
             "担保掛け目","ターゲットイヤーファンド","第2号被保険者","第一部市場、第二部市場","代行協会員","代行返上","代襲相続","ダイナミック・アセット・アロケーション","大発会","大名債","ダウ平均","打診買い",
             "ダボス会議","ダークプール","地政学的リスク","地方税","チャイニーズウォール","ちゃぶつく","チャートの見方","注意銘柄","中会社","中国株式","超過準備","長期金利","長期債務格付け","調整","直接金融",
             "直系尊属","追加型投資信託","通貨オプション","通貨戦争","通貨マフィア","突込み売り","つなぎ売り","強含み","Tier1","TIPs","TDnet","定款","抵抗線","定時償還","定性評価","低ボラティリティ運用",
             "定量評価","手形売買市場","適格機関投資家","適格退職年金","適時開示","敵対的買収","テクニカル指標","手口","手じまい売り","テナースワップ","手元流動性","転換社債型新株予約権付社債","点心債","天井三日、底百日",
             "店頭オプション","店頭デリバティブ","展望レポート","テーマ型ファンド","テールリスク","ディスインフレーション","ディスカウント・ファクター","ディフェンシブストック","ディーラー","デイトレード",
             "出来高","出口戦略","デットアサンプション","デットファイナンス","デッドハンド型防衛策","出直り","デフレギャップ","デフレーション","デュレーション","デリバティブ","デルタヘッジ","電力債","投機",
             "投機的格付","東京レポ・レート","当限","当座資産","当座預金","投資一任契約","投資キャッシュフロー","投資顧問業","投資者保護基金","投資信託のコンセプト","投資その他の資産","投資適格債","投資ファンド",
             "東証外国株","東証配当フォーカス100指数","当日決済取引","騰落率","登録株","登録債","特設注意市場銘柄","特定金銭信託","特定受遺者","特別縁故者","特別買い気配","特別気配","特別債","特別配当",
             "特別マル優","特別利益","ToSTNeT市場","突飛高","トップダウンアプローチ","TOPIXオプション取引","TOPIX連動型ファンド","トラッキングエラー","トリガー価格","取組み","トリクルダウン理論","取引残高報告書",
             "取引報告書","トリプル安","Treasury bonds","トレンドフォロー","トンチン保険","トービン税","独立委員会","独歩安","ドバイ原油","ドラゴン債","ドルペッグ"]
        
        ReturnWordArray += wordArray
        
        //http://www.nomura.co.jp/terms/na_index.html
        
        wordArray = ["内需関連株","内部留保","仲値","投げ","ナスダック総合指数","夏枯れ相場","成行注文","軟調","二市場","二重天井","日銀短観","日銀ネット","日経225先物取引","日経300先物取引","日経商品指数","日経通貨インデックス",
              "日経配当指数","日経平均ノックイン債","日経リンク債","日証金残高","日本銀行","日本株ファンド","日本国債","日本取引所グループ","入庫","入札","ニュートラル","人気買い","NISA","値洗い","値頃","ネットキャッシュ倍率",
              "ネットバブル","値付率","値ぼれ買い","ねんきん定期便","年初来安値","ノックアウトプット売り型","ノッチ","NOMURA-BPI","ノン・デリバラブル・フォワード","内部金融","NYMEX","凪相場","投げ売り",
              "NAPM指数","なでしこ銘柄","軟化","ナンピン","二重底","日銀券ルール","日銀当座預金残高","日経225オプション取引","日経225mini","日経株価指数300","日経ジャスダック平均株価","日経東工取商品指数",
              "日経平均株価","日経平均ボラティリティ・インデックス","日経・東大日次物価指数","日中足","日本銀行当座預金","日本銀行政策委員会","日本証券業協会","日本版401(k)","入札価格（新規公開企業）","ニューエコノミー",
              "任意償還","ニンジャローン","抜く","値がさ株","ネットキャッシュ","ネット取引","値付き","値幅制限","年足","年金資産","年初来高値","年末調整","ノックインプット売り型","NOMURA日本株地域別インデックス",
              "のれん","ノーロード","株式等振替制度","排出量取引","配当異動","配当落調整金","配当起算日","配当控除","配当利回り","ハイブリッド証券","ハイ・イールド債ファンド","跛行色","発行価格","発行市場（株式）",
              "発行体","発行日決済取引","半期報告書","反対売買","半値押し","半値戻し","販売会社（投資信託）","販売費及び一般管理費","反落","バイアウトファンド","買収","バイナリーオプション","売買代金","売買手数料",
              "バスケット取引","バブル景気","バリュエーション","バリュー投資","バリューファンド","バルチック海運指数","バンコク銀行間取引","パススルー証券","パフォーマンス","パラボリック","パー","冷え込む","日柄",
              "引受シンジケート団","引け、引け値","ヒゲ","ヒストリカルボラティリティ","一口注文","日計り商い","非不胎化介入","標準偏差・分散","表面利率","ビジネスサイクル","BIS規制","ビッグマック指数","BBレシオ",
              "ファット・テール","ファミリーファンド方式","ファンダメンタルズ分析","ファンドオブファンズ","ファンドマネージャー","フィッシャー方程式","フィボナッチ","フェイル","フォワードレート","フォワードガイダンス",
              "深押し","復配","含み損益","負債","負債比率","双子の赤字","復興特別所得税","普通取引","不出来","不成注文","踏み","踏み上げ","フラット35","フラット35（保証型）","不良債権","フレディマック",
              "物価","物価連動国債","ブックランナー","物色買い","ブラックショールズモデル","BRICs","ブルベア型","ブルーチップ","ブレークイーブンインフレ率","ブローカー","分割原資","ブンズ","分配金","分離課税",
              "プライベートエクイティファンド","プライマリー商品","プライムレート","プラスアルファ部分","プルーデントマンルール","プロキシミティ","プロスペクト理論","プロポーザル方式","平成景気","ヘッジファンド",
              "ヘリコプターマネー","変動金利","変動費","ヘンリーハブ","ベアマーケット","米州開発銀行","ベビーファンド","ベンチマーク","ベンチャー企業","ベーシススワップ","ベージュブック","ペイオフ","包括遺贈",
              "法人企業統計調査","法定準備金","保管振替制度","保険会社","保護預かり","Hot issue","ホワイトナイト","香港銀行間取引","香港レッドチップ株","棒上げ","棒下げ","暴落","ぼける","ボックス","ボトムアップアプローチ",
              "ボラティリティ","ボルカールール","ポイズンピル","ポジション","ポートフォリオ","ポートフォリオマネージャー","フィリップス曲線","ハイイールド債","配当","配当落ち","配当可能限度額","配当金の税金",
              "配当性向","配当割引モデル","配分変更","端株","始値","発行価額","発行済株式","発行登録制度","初値","ハンセン中国レッドチップス指数","反騰","半値八掛け二割引","半値戻しは全値戻し","販売手数料",
              "反発","ハードランディング","媒介","買収防衛策","売買回転率","売買停止","場況","パックマン・ディフェンス","バランス型ファンド","バリュー","バリュートラップ","割安のわな","バリュー平均法","バレル",
              "バーナンキ・プット","パッシブ運用","パフォーマンス評価","パリティ","日足","東アジア地域包括的経済連携","引受","非居住者","引成り","非時系列チャート","非ゼロサムゲーム","人の行く裏に道あり、花の山",
              "日々公表銘柄","日歩","表面税率","非連結子会社","美人投票","ビッグデータ","ビットコイン","ファイナンス","ファニーメイ","ファンダメンタルズ","ファンドアナリスト","ファンドトラスト","ファンドラップ",
              "フィナンシャル・バイヤー","風説の流布","フェニックス銘柄制度","フォワードレートのもつ意味","フォーミュラファンド","賦課方式","含み資産","複利","負債コスト","不胎化介入","札割れ","普通株式","普通分配金",
              "浮動株","不美人投票","踏みあげ","フラッシュクラッシュ","フラット35","借換融資","振替口座簿","フリーキャッシュフローバリエーション","VWAPギャランティー取引","物価指数","ブックビルディング方式",
              "ブッシェル","物上担保債","ブラックスワン理論","ブル","ブルマーケット","ブレイクアウト","ブロックトレーディング","ブローカー業務","分散投資","分配型","分別管理","プットオプション","プライマリー収支",
              "プライマリーバランス","プラザ合意","プラス成長","プレミアム","プログラム売買","プロフィットファクター","プロ向けファンド","ヘッジ取引","ヘッジャー","変額年金保険","変動相場制","変動利付債","ベア",
              "米国債","米ドル建て債券","弁済","ベンチャー","ベンチャーキャピタル","ベーシスポイント","β","ペッグ制","包括受遺者","法人税","法定相続人","北陸・北海道インデックス","保険支払能力格付け","北海ブレント",
              "ホワイトスクワイア","香港H株","香港ハンセン指数","ホールセール業務","貿易収支","暴騰","簿価","墓石広告","ボックス圏相場","募入決定額","ボリンジャーバンド","ぼんやり","ポイントアンドフィギュア",
              "ポータビリティー","ポートフォリオ運用","ポートフォリオ理論","初値倍率"]
        
        ReturnWordArray += wordArray
        
        //http://www.nomura.co.jp/terms/ma_index.html
        
        wordArray = ["マイナス金利","マクロ経済","マザーファンド","マッチング理論","マネタイゼーション","マネタリーベース","マネーストック統計","マネープールファンド","幻のSQ","マル優","マンデート","マーケットアプローチ",
               "マーケットニュートラル","マーケットメイク","ミクロ経済","未公開株式","ミシガン大学消費者態度指数","見せ板","ミディアムタームノート","みなし額面","みなし配当","ミニゴールデンクロス","ミリオン",
               "無額面株式","無形固定資産","無担保債","無配転落","ムンバイ銀行間取引金利","MIBOR","名目金利","メコン経済圏","メザニン債","目論見書制度","持ち合い解消","持株制度","持ち高調整","餅つき相場",
               "持分法適用会社","元引受契約","戻り足","戻り天井","もみあい","モメンタム株","モラトリアム","モンスター・ストック","モーゲージ証券","マイナス成長","マクロ分析","マスタートラスト","窓","マネタリーサーベイ",
               "マネーサプライ","マネーフロー","マネーローンダリング","真水","満期償還","マーケット","マーケットインパクト","マーケットポートフォリオ","見切り千両","ミクロ分析","未済","未上場","ミセス・ワタナベ",
               "見直し買い","みなし取得費","ミニ株","ミューチュアルファンド","民事再生法","無議決権株式","無担保コールオーバーナイト物","無配","無分配型","銘柄","名目GDP","目先","目論見書","保ち合い",
               "持株会社","持株比率","持ち高調整の売り","持分変動利益","モデル・ポートフォリオ","戻す","戻り売り","戻り待ちの売り","モメンタム","模様眺め","モラルハザード","モーゲージ","モーゲージ統計"]
        
        ReturnWordArray += wordArray
        
        //http://www.nomura.co.jp/terms/ya_index.html
        
        wordArray = ["約定","約定日","安値覚え","山高ければ谷深し","遺言","遺言書管理業務","有価証券","有期年金","有限責任事業組合","有効フロンティア","優先株式","優先出資証券","有利子負債","ユニバーサルバンク",
                "輸入予約","ユーロ","ユーロクリア","ユーロ市場","ユーロネクスト","預金","預金準備率操作","与信","預託","予備格付け","寄付き、寄付き値","弱含み","四本値","約定代金","安値","休むも相場","やれやれの売り",
                "遺言執行者","遺言信託","有価証券報告書","有形固定資産","有効求人倍率","有事のドル買い","優先市場","有配株","有利子負債利子率","ユニバース","ユーザンス金利","ユーロ円債","ユーロ債","ユーロ建て債",
                "曜日効果","預金準備率","預金ファシリティー金利","預貸率","予定利率","呼び値","寄り前","弱含み横バイ","ヨーロピアンタイプ"]
        ReturnWordArray += wordArray
        
        wordArray = ["ライツイシュー","ライフプラン","ラダーポートフォリオ","ラッセル1000","ランダム・ウォーク","利益準備金","利益相反","利益超過分配金","利落ち","リキャップCB","リコノミクス","理財商品","利子",
                "リスクオフ","リスクキャピタル","リスクコントロール型ファンド","リスクフリー","リスクプレミアム","リターン","利付金融債","利付債","リデノミネーション","リバランス","リバースモーゲージローン",
                "リパッケージ債","リビジョンインデックス","リフレ政策","利回り","流通市場","流動性","流動性リスク","流動負債","両建て","量的緩和解除","両端入れ","リレーションシップバンキング","REIT","類似会社比準価格算定方式",
                "累積投資コース","レアメタル","劣後株式","レバレッジ型上場投資信託","レポ取引","連結決算","連結財務諸表","レンジ相場","連続約定気配","レーティング","投資信託","路線価","ロングオンリー",
                "ロンバート型貸出制度","ローソク足","ローリング効果","ローレイテンシー","ローンチ","ライフスタイルファンド","LIBORフラット","ラチェット死亡保障","ラップアカウント","利益確定売り","利益剰余金",
                "利益増減分析","利益配当請求権","リオープン","利食い","利下げ","利ざや","リスク","リスクオン","リスク許容度","リスクの種類","リスクフリーレート","理想買い","リターン・リバーサル","利付国債",
                "リテール業務","利払い日","リバーサル","リバースレポ","リパトリエーション","利含み","リフレーション","流通市場","流動資産","流動性の罠","流動比率","漁師は潮をみる","量的緩和","量的・質的金融緩和",
                "利率","リーグテーブル","リーブオーダー","類似業種比準方式","累積リターン","レッドチップス","劣後債","レバレッジ効果","レモン市場","連結子会社","連結の範囲","連想売り","連単倍率","レーティング・モニター",
                "狼狽売り","ロックアップ","ロングポジション","ローカル・アベノミクス","ロードショー","ロールオーバー","ローン債権","ローンチスプレッド"]
        
        ReturnWordArray += wordArray
        
        wordArray = ["ワラント","割引国債","割引率","割安株","割高株","割引債","割り負け","割安株ファンド","13WMA","26WMA","5DMA","5%ルール（独占禁止法の）","IR","Ifo","ISA","IBRD","ASEAN","RMBS","ROE",
                "ROC","RTGS","ESOP","ERM","ESG投資","ECB","ETF","EBITDA","EPS","EV","APEC","SEC","SOR注文","S＆P500","XBRL","NRSRO","NOI利回り","NDF","FRS","FRB","FOMC","MRF","MMF","MBO",
                "LME","LTRO","L.P.","ADS","OIS","OTC","QE3","QFII","GAAP","QUICK短観","CAPE","CIO","CSR","CFPS","CMO","CLO","CTA","CDS","CB","J-Stock Index","JPX日経インデックス400",
                "G8","GNI","GDR","G20","SWIFT","SEDOLコード","Target","DAX指数","WTI","TTB","T+3","DI","DMA","TOKYO PRO Market","TOPIX1000","TOPIXリスクコントロール指数","NYSEユーロネクスト",
                "NAV","BIGPIS","BSI","BB","PTS","PSR","PCFR","PPI","FINRA","VaR","MACD","LIBOR","WACC","25DMA","401(k)プラン","5%ルール（株券の大量保有に関する）","72の法則","IRS","IMF",
                "ISINコード","IPO","RICI","ROI","ROA","RCI","ISDA","1月効果","ERM II","ECN","ETN","EBIT","EBS","EPA","EVA","SRI","SMA","SGX","SFAS160","HPO","NOI","NCF（Net Cash Flow）",
                "NVDR","FRA","FHA","M＆A","MEBO","MLP","MPO","LSAPs","LBO","ADR","ABS","OECD","CAP","CUSIPコード","Q-BOARD","QUICKコンセンサス","QUICK FUND RISK（QFR）","5月に売り逃げろ",
                "CEO","CSA","CMEグループ","CMBS","COO","CD","CDO","CBO","J-REIT","JASDAQインデックス","GSE","GDI","GDE","GPIF","SPAN","TIBOR","Target","WMA","TTS","TPP","DR","DMI",
                "DVP","特別清算指数（SQ）","TOPIX100","TB","NASDAQ","NIKKEI QUICK投信実力ランキング","BIレート","BOPビジネス","BPS","PER","PMI","PBR","FATCA","FLOOR","put-through",
                "EURO STOXX 50","CRB Index"]
        
        ReturnWordArray += wordArray
        
        
        //http://www.weblio.jp/category/business/tshsh#AA_OO
        //投資信託用語集
        wordArray = ["アクティブ運用","アグレッシブ・グロース型ファンド","アジア・オセアニア型ファンド","アセット","アセットアロケーション","アナリスト","アンダーウェイト","委託会社","委託会社の忠実義務","委託者",
                "委託者指図型投資信託","一部解約請求権","一口当り純資産額",]
        
        return ReturnWordArray

    }
}
