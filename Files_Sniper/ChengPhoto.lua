
local function ChengPhoto(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then 
local SniperChengPhoto = database:get(bot_id.."Sniper:Cheng:Photo"..data.id_)
if not data.profile_photo_ then 
if SniperChengPhoto then 
send(msg.chat_id_, msg.id_, "حذف كل صوره الحلو 😂👌🏻")
database:del(bot_id.."Sniper:Cheng:Photo"..data.id_) 
end
end
if data.profile_photo_.big_.persistent_id_ then 
if SniperChengPhoto ~= data.profile_photo_.big_.persistent_id_ then 
local Text = {
"صورتك الجديدة تخبل ضلعي😹🌝",
  "ها يول شكو غيرت الصوره 🙁؟",
  "صورتك تخبل ضلعي 😁💘",
  "ففوف شهل صوره ☹️💞",
  "شو غيرت صورتك شنو هددوك ؟😹🌝",
  "آمنوره صورتك ححبي 😁💘",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."Sniper:Cheng:Photo"..data.id_, data.profile_photo_.big_.persistent_id_) 
end
end
end
end,nil)   
end

end
return {Sniper = ChengPhoto}
