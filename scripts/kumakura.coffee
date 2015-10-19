module.exports = (robot) ->

# OMG function
  robot.hear /^omg$/i, (msg) ->
    msg.send "http://img-cdn.jg.jugem.jp/0d0/1970761/20150715_1697304.png"