local ReplicatedStorage = game:GetService("ReplicatedStorage")
local chooseCharacterEvent = ReplicatedStorage:WaitForChild("ChooseCharacter")

local gui = script.Parent

gui.HumanButton.MouseButton1Click:Connect(function()
	chooseCharacterEvent:FireServer("Human")
	gui.Enabled = false
end)

gui.DogButton.MouseButton1Click:Connect(function()
	chooseCharacterEvent:FireServer("Dog")
	gui.Enabled = false
end)

gui.CatButton.MouseButton1Click:Connect(function()
	chooseCharacterEvent:FireServer("Cat")
	gui.Enabled = false
end)
