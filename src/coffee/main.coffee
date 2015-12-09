navs = [
  {
    name: '百度',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  },
  {
    name: '淘宝',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.taobao.com'
  },
  {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.google.com'
  }
]


temprender = (data,template,$contaniner)->
  temp = template.html()
  data.forEach (item)->
    for k,v of item
      reg = new RegExp("{{"+k+"}}","gi")
      temp = temp.replace(reg,v)
 
    $contaniner.append temp


$ ()->
  temprender(navs, $("#nav_temp") ,$("#navs > ul"))


