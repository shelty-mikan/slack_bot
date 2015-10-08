module.exports = (robot) ->

#時間割
  schedule =
    mon:
      name: "月曜日"
      timetable:
        1: "SD22 @354"
        2: "SD22 @354"
        3: "ST21 @257"
        4: "ST21 @257"
    tue:
      name: "火曜日"
      timetable:
        1: "NT23 @342"
        2: "NT23 @342"
    wed:
      name: "水曜日"
      timetable:
        1: "[A帯]SD22 @354 / [B帯]MK21 @247"
        2: "[A帯]SD22 @354 / [B帯]MK21 @247"
        3: "CS22"
    thu:
      name: "木曜日"
      timetable:
        1: "JV23 @345"
        2: "JV23 @345"
        3: "FX21 @312"
    fry:
      name: "金曜日"
      timetable:
        2: "DB23 @245"
        3: "DB23 @245"
        4: "CS22"
        5: "BT25 @311 ※秋生のみ"

#該当する曜日の時間割を表示
  robot.respond /tell me schedule for (.*)/i, (res) ->
    day = res.match[1]
    try
      schedule[day]
      res.send "#{schedule[day]['name']}の時間割は・・・\n"
      for key, value of schedule[day]['timetable']
        res.send "#{key}限: #{value}"
      res.send "ってなってるよ。"
    catch
      res.send "曜日が見つからないよ。"
