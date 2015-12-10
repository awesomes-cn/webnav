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
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }, {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }, {
    name: '腾讯',
    img: "http://assets.jq22.com/plugin/2015-10-27-16-10-20.png",
    link: 'http://www.baidu.com'
  }
  , {
    name: '腾讯',
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



$ ()->
  app = new Vue
    el: '#app'
    data:
      navs: navs
      searchs: searchs
      engine: searchs[0]

    methods:
      switch_search: (item)->
        app.engine = item


  $(".open-config").click ()->
    $("#config-wrap").slideToggle()

  $("#navs > div").mousedown (ev)->
    mel = $(this)
    $(document).mousemove (e)->
      mel.css("position","absolute").css('left',e.clientX).css('top',e.clientY)
      

  
  $(document).mouseup ()->
    $(document).unbind('mousemove')
        
