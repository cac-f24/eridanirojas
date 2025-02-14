#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import discord
from discord.ext import commands


# In[ ]:


channel = "channel id"
token = "token"


# In[ ]:


class MyClient(discord.Client):
    async def on_ready(self):
        print(f'Logged in as {self.user} (ID: {self.user.id})')
        print('------')

    async def on_message(self, message):
        # we do not want the bot to reply to itself
        if message.author.id == self.user.id:
            return

        if message.content.startswith('!hello'):
            await message.reply('Hello!', mention_author=True)


# In[ ]:


intents = discord.Intents.default()
intents.message_content = True


# In[ ]:


client = MyClient(intents=intents)
client.run(token)

