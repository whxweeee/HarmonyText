@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column(){
        //定位vip
        Text('VIP')
          .position({})
          .zIndex(1)
          .width(40)
          .height(20)
          .backgroundColor('#e49642')
          .borderRadius({
            topLeft:10,bottomRight:10,
          })
          .border({
            width:2,color:'#fbe7a3'
          })
          .fontColor('#fbe7a3')
          .fontStyle(FontStyle.Italic)
          .fontSize(14)
          .fontWeight(700)
          .textAlign(TextAlign.Center)
        //上图
        Image($r('app.media.position_moco'))
          .width('100%')
          .height(210)
          .borderRadius(10)
        //下Row（图＋文本）
        Row(){
          Image($r('app.media.position_earphone'))
            .width(20)
            .backgroundColor('#55b7f4')
            .borderRadius(10)
            .padding(3)
            .fillColor(Color.White)
            .margin({left:6,right:4})
          Text('飞狗MOCO')
            .fontWeight(700)
        }
        .height(30)
        .width('100%')
      }
      .width(160)
      .height(240)
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)
  }
}




