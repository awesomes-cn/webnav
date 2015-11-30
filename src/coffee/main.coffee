navs = [
  {
    name: '百度',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  },
  {
    name: '淘宝',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  },
  {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
]


temprender = (data,template,$contaniner)->
  temp = template.html()
  data.forEach (item)->
    for key in item
      reg = new RegExp("{{"+key+"}}","gi")
      temp = temp.replace(reg,item[key])
 
    $contaniner.append temp


$ ()->
  temprender(navs, $("#nav_temp") ,$("#navs > ul"))


