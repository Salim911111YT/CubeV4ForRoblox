local EntityESP
local connection

EntityESP = vape.Categories.Blatant:CreateModule({
  Name = "Entity ESP",
  Function = function(callback)
      if callback then
	 pcall(function()
	     connection = workspace["Entities"].ChildAdded:Connect(function(ent)
		 notif("Entity Detected", ent.Name.." has spawned.")
	     end)
	 end)
		else
			if connection then connection:Disconnect() end
		end
  end,
  Tooltip = "Notifies you of entities that appear."
})
