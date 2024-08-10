// // @ts-nocheck

// //11111基础语法
// console.log('我说','helloworld11')
// let title: string='1232'
// console.log('字符串',title)
// let age: Number=10
// console.log(age)
// age=18
// console.log(age)
// const pi: Number=3.14
// console.log(pi)
// let names: String[]=['whx','lsy']
// console.log(names)
//
// function fn(x:Number){
//   console.log(x);
//   return x+1;
// }
// let x:Number=fn(age);
// console.log(x)
//
// let star=()=>{
//   console.log('.')
//   console.log('..')
//   console.log('...')
// }
// star()
//
// //222222定义接口
// interface Person{
//   name: String;
//   age: Number;
//   weight: Number;
// }
// //基于接口1
// let ym: Person={
//   name:'杨幂',
//   age:18,
//   weight:90
// }
// //获取1
// console.log(ym.weight)
// //基于接口2
// let lss:Person={
//   name:'刘诗诗',
//   age:28,
//   weight:100
// }
// //获取
// console.log(lss.weight)
//
// // 33333联合类型
// let judge:Number|string=100
// judge='A+'
// console.log(judge)
// let gender:'man'|'woman'|'secret'='man'
// console.log(gender)
// 枚举
// enum Thecolor{
//   Red='#ff0f29',
//   Orange='###7100',
//   Green='#30b30e'
// }
// let color:Thecolor=Thecolor.Orange
// console.log(color)

// //字符串拼接   +两边存在字符串就是拼接
// let name:String='吕布'
// let age:Number=18
// console.log('简介信息','姓名'+name)
// //模板字符串  适用于多个变量的字符串拼接(姓名前是反引号)
// console.log('简介信息',`姓名：${name},年纪：${age}岁`)
//
// //类型转化
// //Number(变量) 原样转数字  parseInt(变量)去掉小数  parseFlaot(变量)保留小数
// let money1:String='10000'
// let money2:String='500'
// console.log('总工资',Number(money1)+Number(money2))
// let str1:String ='1.1'
// let str2:String ='1.9'
// let str3:String ='1.99a'
// let str4:String ='a'
// //                                      Number    parseInt   parseFlaot
// console.log('Number',Number(str1))  //  1.1        1            1.1
// console.log('Number',Number(str2))  //  1.9        1            1.9
// console.log('Number',Number(str3))  //  NaN        1            1.99
// console.log('Number',Number(str4))  //  NaN        NaN          NaN
//
//
// let num1:Number=100.9
// //1.toString原样输出
// console.log('toString',num1.toString())
// //2.toFixed 保留几位小数四舍五入
// console.log('toFixed',num1.toFixed(2))





@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {

  }
}




