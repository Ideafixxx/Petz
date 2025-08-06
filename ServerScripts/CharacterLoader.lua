local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

local chooseCharacterEvent = ReplicatedStorage:WaitForChild("ChooseCharacter")

chooseCharacterEvent.OnServerEvent:Connect(function(player, characterType)
	local modelName = characterType .. "Character"
	local characterModel = ServerStorage:FindFirstChild(modelName)

	if characterModel then
		local clone = characterModel:Clone()
		clone.Name = player.Name

		-- Asegurarse de que tenga PrimaryPart
		if not clone.PrimaryPart then
			local hrp = clone:FindFirstChild("HumanoidRootPart")
			if hrp then
				clone.PrimaryPart = hrp
			else
				warn("El modelo no tiene HumanoidRootPart")
				return
			end
		end

		clone.Parent = workspace
		player.Character = clone
		clone:SetPrimaryPartCFrame(CFrame.new(0, 5, 0))
	end
end)
