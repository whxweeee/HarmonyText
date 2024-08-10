
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column(){
      Column(){
        Stack({alignContent:Alignment.Bottom}){
          Image($r('app.media.bz_img'))
            .borderRadius({
              topLeft:10,topRight:10
            })
          Row(){
            Row({space:5}){
              Image($r('app.media.bz_play'))
                .width(14)
                .fillColor(Color.White)
              Text('288万')
                .fontSize(12)
                .fontColor(Color.White)
            }
            .margin({right:15})
            Row({space:5}){
              Image($r('app.media.bz_msg'))
                .width(14)
                .fillColor(Color.White)
              Text('8655万')
                .fontSize(12)
                .fontColor(Color.White)
            }
            Blank()
            Text('4:33')
              .fontSize(12)
              .fontColor(Color.White)
          }
          .width('100%')
          .height(24)
          .padding({left:5,right:5})
        }
        .width('100%')
        .height(125)

        Column(){
          Text('【凤凰传奇新歌】欢迎来到国风统治区：唢呐一响神曲《铁艺流派推广曲》')
            .fontSize(13)
            .textOverflow({overflow:TextOverflow.Ellipsis})
            .maxLines(2)
            .lineHeight(16)
          Row(){
            Text('19万点赞')
              .fontSize(10)
              .fontColor('#e66c43')
              .padding(5)
              .backgroundColor('#fef0ef')
              .borderRadius(2)
            Image($r('app.media.bz_more'))
              .width(14)
          }
          .width('100%')
          .margin({top:6})
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(5)
      }
      .width(200)
      .height(200)
      .backgroundColor(Color.White)
      .borderRadius(10)
      .margin({top:10})
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')

  }
}




