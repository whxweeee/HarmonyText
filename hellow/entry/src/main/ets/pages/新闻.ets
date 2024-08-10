interface Article{
  title:string
  createtime:string
}

@Entry
@Component
struct Index {
  @State articles: Article[]=[
    { title:'啦啦啦啦啦啦啦啦啊啦啦啦啦',createtime:'2024-7-21 17:22'},
    { title:'嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻',createtime:'2024-7-21 17:23'},
    { title:'哈哈哈哈哈哈哈哈哈哈哈哈',createtime:'2024-7-21 17:22'}
  ]

  build() {
      Column(){
        ForEach(this.articles,(item:Article,index:number)=>{
          Column(){
            Text(item.title)
              .width('100%')
              .fontSize(15)
              .fontColor('#303030')
              .lineHeight(20)
            Text(item.createtime)
              .width('100%')
              .fontSize(12)
              .fontColor('rgb(192,192,192)')
              .margin({top:15})
          }
          .padding({top:15,bottom:15})
          .width('100%')
          .border({
            width:{bottom:2},
            color:{bottom:'#f4f4f4'}
          })
        })
      }
  }
}
