@Observed
export class CommentData{
  avatar:string
  name:string
  level:number
  likeNum:number
  commentText:string
  isLike:boolean
  levelIcon:Resource
  timeString:string
  time:number

  constructor(avatar:string,name:string,level:number,likeNum:number,commentText:string,isLike:boolean,time:number) {
    this.avatar=avatar
    this.name=name
    this.level=level
    this.likeNum=likeNum
    this.commentText=commentText
    this.isLike=isLike
    this.levelIcon=this.coverLevel(this.level)
    this.timeString=this.coverTime(time)
    this.time=time
  }
  coverTime(timestamp:number){
    const currentTimestamp=new Date().getTime();
    const timeDifference=(currentTimestamp-timestamp)/1000;
    if(timeDifference<0||timeDifference==0) return '刚刚';
    else if(timeDifference<60) return `${Math.floor(timeDifference)}秒前`;
    else if(timeDifference<3600) return `${Math.floor(timeDifference/60)}分钟前`;
    else if(timeDifference<86400) return `${Math.floor(timeDifference/3600)}小时前`;
    else if(timeDifference<604800) return `${Math.floor(timeDifference/86400)}天前`;
    else if(timeDifference<259200) return `${Math.floor(timeDifference/604800)}周前`;
    else if(timeDifference<3153600) return `${Math.floor(timeDifference/259200)}个月前`;
    else return `${Math.floor(timeDifference/3153600)}年前`;
  }
  coverLevel(level:number){
    const iconList=[
      $r('app.media.level_1'),
      $r('app.media.level_2'),
      $r('app.media.level_3'),
      $r('app.media.level_4'),
      $r('app.media.level_5')
    ]
    return iconList[level]
 }
}

export const createListRange=():CommentData[]=>{
  let result:CommentData[]=new Array()
  result=[
    new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3','猫猫',Math.floor(Math.random()*6),Math.floor(Math.random()*100),'喵喵喵',false,1721885250029),
  new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3','猫猫',Math.floor(Math.random()*6),Math.floor(Math.random()*100),'喵喵喵',false,1721885239029),
  new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3','猫猫',Math.floor(Math.random()*6),Math.floor(Math.random()*100),'喵喵喵',false,1721875259029),
  new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3','猫猫',Math.floor(Math.random()*6),Math.floor(Math.random()*100),'喵喵喵',false,1721885229029),
  new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3','猫猫',Math.floor(Math.random()*6),Math.floor(Math.random()*100),'喵喵喵',false,1721885059029),
  new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3','猫猫',Math.floor(Math.random()*6),Math.floor(Math.random()*100),'喵喵喵',false,1721885259009),
  new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3','猫猫',Math.floor(Math.random()*6),Math.floor(Math.random()*100),'喵喵喵',false,1720885259029),
    new CommentData('https://pics0.baidu.com/feed/9922720e0cf3d7caa0457ca26c30ec076a63a975.jpeg@f_auto?token=6891c4f40c67383951b54cc73af364d3','猫猫',Math.floor(Math.random()*6),Math.floor(Math.random()*100),'喵喵喵',false,1711885259029)
  ]
  return result
}