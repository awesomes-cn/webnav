navs = [
  {
    name: '百度1',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }, {
    name: '淘宝',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }, {
    name: 'Ruby-China',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }, {
    name: '开发者头条开发者头条',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '稀土掘金',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '极客头条',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: 'Hacker News',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }, {
    name: 'Ruby-China',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }, {
    name: '开发者头条开发者头条',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '稀土掘金',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
]

searchs = [
  {
    name: '百度',
    field: 'wd',
    action: "https://www.baidu.com/s"
  },
  {
    name: 'Google',
    field: 'q',
    action: "http://gufensoso.com/search/"
  },
  {
    name: 'Bing',
    field: 'q',
    action: "http://cn.bing.com/search"
  }
]


skins = ["http://3.su.bdimg.com/skin/609.jpg","http://2.su.bdimg.com/skin/632.jpg"]




Config =
  set: (key,val)->
    localStorage.setItem(key,JSON.stringify(val))
  get: (key)->
    if localStorage.getItem(key) then $.parseJSON(localStorage.getItem(key)) else ''


Config.set('searchs',searchs)
Config.set('navs',navs)

Config.set('skins',skins)

#alert( localStorage.skin)


$ ()->
  app = new Vue
    el: '#app'
    data:
      navs: Config.get('navs')
      searchs: Config.get('searchs')
      engine: Config.get('engines') || searchs[0]
      skin:  Config.get('skins')[0]

    methods:
      switch_search: (item)->
        app.engine = item
        Config.set('engines',item)

      add_nav: ()->
         navs.push({})

