# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
  robot.hear /^(.+)\+\+$/i, (msg) ->
    user = msg.match[1]
 
    if not robot.brain.data[user]
      robot.brain.data[user] = 0
 
    robot.brain.data[user]++
    robot.brain.save()
 
    msg.send robot.brain.data[user]
   

