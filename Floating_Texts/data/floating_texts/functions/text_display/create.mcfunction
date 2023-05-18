##
 # Description: Places a sign with the targeted armor stand's text and the selected color, then sets this text on the text_display
 # Called by:   #function -> floating_texts:text_display/chat_options
##

summon minecraft:text_display ~ ~2 ~ {text: '{"text":"Place an armor stand here and rename it with a name tag.\\nYou can then break it"}', see_through: 1b, default_background: 1b, billboard: "center", Tags: ["ft_text_display"]}
