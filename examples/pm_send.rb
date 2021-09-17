# frozen_string_literal: true

# This bot shows off PM functionality by sending a PM every time the bot is mentioned.

require 'discordrb'

bot = Discordrb::Bot.new token: 'ODg4MTc5NDMwMzAyODEwMjE0.YUO7jQ.NTu2S0WI2RlPXBbRPXuXXZilUzI'

# The `mention` event is called if the bot is *directly mentioned*, i.e. not using a role mention or @everyone/@here.
bot.mention do |event|
  # The `pm` method is used to send a private message (also called a DM or direct message) to the user who sent the
  # initial message.
  event.user.pm('You have mentioned me!')
end

bot.run
