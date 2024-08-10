@Component
struct MyPanel{
  //成员变量-函数-可以外部传入覆盖
  title:string='默认标题'
  extrr:string='查看更多 >'
  //成员函数不可覆盖
  getMore=()=>{
    AlertDialog.show({
      message:'查看更多'
    })
  }
  sayHi(){
    AlertDialog.show({
      message:'hello'
    })
  }
  build() {
    Column(){
      Row(){
        Text(this.title).fontSize(18)
        Text(this.extrr).fontSize(18)
          .onClick(()=>{
            this.getMore()
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      Row(){
        Text('内容部分').fontSize(18)
      }
      .padding(20)
    }
    .padding(10)
    .width('100%')
    .height(200)
    .margin({bottom:20})
    .borderRadius(10)
    .backgroundColor(Color.White)
  }
}

@Entry
@Component
struct Index {
  build() {
    Column(){
      MyPanel({
        title:'我的订单',
        extrr:'全部订单 >',
        getMore(){
          AlertDialog.show({
            message:'点击了全部订单'
          })
        }
      })
      MyPanel()
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor('#ccc')
  }
}
