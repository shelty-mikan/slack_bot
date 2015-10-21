module.exports = (robot) ->
  
# aki
  robot.hear /^秋生$/, (msg) ->
    msg.send "優秀"

# 須藤
 robot.hear /^須藤$/, (msg) ->
    msg.send "ゆか"

# 須藤おはよう
 robot.hear /^おはよ！$/, (msg) ->
    msg.send "ゆかおはよう"
