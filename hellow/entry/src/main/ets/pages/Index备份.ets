import InfoTop from '../components/info'

@Entry
@Component
struct Index {
  build() {
    Column(){
      InfoTop()
      List(){
        ForEach(Array.from({length:20}),()=>{
          ListItem(){
            Row(){}.width('80%').height(100).backgroundColor(Color.Red)
          }
          .padding(10)
        })
      }
      .width('100%')
      .layoutWeight(1)
      .backgroundColor(Color.Orange)
      .listDirection(Axis.Vertical) //主轴方向
      .lanes(2) //列数间距
      .scrollBar(BarState.Auto) //滚动条自动显示
      .divider({  //分割线样式
        strokeWidth:3,
        color:Color.Blue,
        startMargin:10,
        endMargin:10
      })
      Row(){

      }
      .width('100%')
      .height(50)
      .backgroundColor(Color.Pink)
    }
    .width('100%')
    .height('100%')
  }
}
