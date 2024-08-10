import InfoTop from '../components/info'
import InfoItem from '../components/infoitem'
import InfoBottom from '../components/infobottom'
import {CommentData,createListRange} from '../model/CommentData'
import data from '@ohos.telephony.data'
import systemDateTime from '@ohos.systemDateTime'

let listArr:CommentData[]=createListRange()
console.log('数组',JSON.stringify(listArr))

@Entry
@Component
struct Index {
  @State commentList:CommentData[]=createListRange()

  handleLike(index:number){
    let itemData=this.commentList[index]
    if(itemData.isLike) itemData.likeNum-=1;
    else itemData.likeNum+=1
    itemData.isLike=!itemData.isLike
    // this.commentList.splice(index,1,itemData)
  }
  handleSubmit(content:string){
    const currentTime=new Date().getTime();
    const newItem:CommentData=new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3'
      ,'我',5,0,content,false,currentTime)
    this.commentList=[newItem,...this.commentList]
  }
  handleSort(type:number){
    if(type===0){
      this.commentList.sort((a,b)=>{
        return b.time-a.time
      })
    }else{
      this.commentList.sort((a,b)=>{
        return b.likeNum-a.likeNum
      })
    }
  }

  build() {
    Column(){
      InfoTop({
        onSort:(type:number)=>{
        this.handleSort(type)
      }
      })
      List(){
        ForEach(this.commentList,(item:CommentData,index:number)=>{
          ListItem(){
            InfoItem({
              index:index,
              itemObj:item,
              onLikeClick:(index:number)=>{
                this.handleLike(index)
              }
            })
          }
        })
      }
      .width('100%')
      .layoutWeight(1)
      .padding({bottom:10})
      InfoBottom({
        onSubmitComment:(content:string)=>{
          this.handleSubmit(content)
        }
      })
    }
    .width('100%')
    .height('100%')
  }
}
