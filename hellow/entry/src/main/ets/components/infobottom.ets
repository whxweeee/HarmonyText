@Component
struct InfoBottom {
  @State txt:string=''
  onSubmitComment=(content:string)=>{}
  build() {
    Row(){
      Row(){
        Image($r('app.media.edit'))
          .width(20)
          .margin({left:20})
        TextInput({
          placeholder:'写评论...',
          text:this.txt
        })
          .backgroundColor(Color.Transparent)
          .fontSize(18)
          .onSubmit(()=>{
              this.onSubmitComment(this.txt)
          })
          .onChange(value=>{
            this.txt=value
          })
      }
      .height(40)
      .backgroundColor('#f7f8fA')
      .borderRadius(20)
      .margin({left:15,right:20,top:10,bottom:10})
      .layoutWeight(1)
      Image($r('app.media.Thumbs'))
        .width(25)
        .margin({left:6,right:6})
      Image($r('app.media.collection'))
        .width(25)
        .margin({left:6,right:6})
    }
    .width('100%')
    .height(50)
  }
}

export default InfoBottom