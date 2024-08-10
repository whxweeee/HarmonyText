
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      //顶部
      Row(){
        Image($r('app.media.jd_cancel'))
          .width(20)
        Text('帮助')
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      //logo
      Image($r('app.media.jd_logo'))
        .width(250)
        .height(250)

      //国家
      Row(){
        Text('国家/地址')
          .layoutWeight(1)
          .fontColor('#666')
        Text('中国(+86)')
          .margin({right:5})
          .fontColor('#666')
        Image($r('app.media.jd_right'))
          .width(20)
          .fillColor('#666')
      }
      .width('100%')
      .height(40)
      .backgroundColor('#fff')
      .borderRadius(20)
      .padding({left:15,right:10})

      //手机号输入框
      TextInput({
        placeholder:'请输入手机号'
      })
        .placeholderColor('#666')
        .height(40)
        .borderRadius(20)
        .backgroundColor('#fff')
        .margin({
          top:20
        })

      //已阅读
      Row(){
        Checkbox()
          .width(10)
        Text(){
          Span('我已阅读并同意')
          Span('《京东隐私协议》').fontColor('#3274f6').fontSize(12)
          Span('《京东用户服务协议》').fontColor('#3274f6').fontSize(12)
          Span('未注册的手机号将自动创建京东账号')

        } .fontSize(12)
          .fontColor('#666')
        .lineHeight(20)
      }
      .alignItems(VerticalAlign.Top)
      .width('95%')
      .margin({top:20})

      //登录
      Button('登录')
        .width('100%')
        .backgroundColor('#bf2838')
        .margin({top:25})

      //新用户注册链接
      Row({space:25}){
        Text('新用户注册').fontColor('#666').fontSize(14)
        Text('账号密码登录').fontColor('#666').fontSize(14)
        Text('无法登录').fontColor('#666').fontSize(14)
      }.margin({top:15})

      Blank()

      //其他登录
      Column(){
        Text('其他登录方式')
          .height(22)
          .fontColor('#866')
          .fontSize(14)
          .margin({bottom:20})
        Row(){
          Image($r('app.media.jd_huawei')).width(34)
          Image($r('app.media.jd_wechat')).width(34).fillColor('#56a44a')
          Image($r('app.media.jd_weibo')).width(34).fillColor('#c8493b')
          Image($r('app.media.jd_QQ')).width(34).fillColor('#4ba0e8')
        }
        .width('100%')
        .margin({bottom:30})
        .justifyContent(FlexAlign.SpaceAround)
      }
      .width('100%')
    }
    .padding(20)
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.jd_login_bg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}




