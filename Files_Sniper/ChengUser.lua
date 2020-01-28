
local function ChengUserName(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local SniperChengUserName = database:get(bot_id.."Sniper:Cheng:UserName"..data.id_)
if not data.username_ then 
if SniperChengUserName then 
send(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه  : [@"..SniperChengUserName..']')
database:del(bot_id.."Sniper:Cheng:UserName"..data.id_) 
end
end
if data.username_ then 
if SniperChengUserName ~= data.username_ then 
local Text = {'شكو غيرت معرفك ضلعي 🌚💘',
"ها غيرت معرفك بسلا هددوك 😹🌝",
"شني غيرت معرفك 🙁؟ ",
"هاذ غير معرفه☹️\n اخمطو بسع🤣 : @"..data.username_.."",
'ها حب مو جان معرفك \n حلو ليش غيرته 🌚 @'..data.username_..' ',
'ها يول شو مغير معرفك😎💘', 
"منور معرف جديد وكذا 😃: "..data.username_.."",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."Sniper:Cheng:UserName"..data.id_, data.username_) 
end
end
end
end,nil)   
end

end
return {Sniper = ChengUserName}
