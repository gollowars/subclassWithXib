# xibをつかってUIViewのsubclassを作るとき

1. uiviewを継承したsubclassのファイルとxibファイルを作る
2. xibのfile's Ownerでclass名を先ほど作ったしたクラス名にする

uiviewのsublassはこんな感じにする。


```
class CustomTabView: UIView {

  @IBOutlet var contentView: UIView!

  override init(frame: CGRect) {
		super.init(frame: frame)

    NSBundle.mainBundle().loadNibNamed("CustomTabView", owner: self, options: nil)
		contentView.frame = frame
    addSubview(contentView)

  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

}
```

なんか二度手間感半端ないけど、xibのviewをsubclassに貼り付けるみたいなやりかた。。    
xibのclass名をsubclassのクラス名にしてawakeFromNibを呼ぶだけだとなぜかできなかった。。
