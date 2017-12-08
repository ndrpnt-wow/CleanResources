local _, ns = ...

if ns.hideFeedback then
	PlayerFrameManaBar.FeedbackFrame:Hide()
end

if ns.hideFullPower then
	PlayerFrameManaBar.FullPowerFrame:Hide()
end

if ns.hideComboAnim then
	hooksecurefunc(ComboPointPlayerFrame, "UpdateMaxPower", function(self)
		for i = 1, #self.ComboBonus do
			self.ComboBonus[i].AnimIn = self.ComboBonus[i]:CreateAnimationGroup()
			self.ComboBonus[i].AnimOut = self.ComboBonus[i]:CreateAnimationGroup()
		end
		for i = 1, #self.ComboPoints do
			self.ComboPoints[i].PointAnim = self.ComboPoints[i]:CreateAnimationGroup()
			self.ComboPoints[i].AnimIn = self.ComboPoints[i]:CreateAnimationGroup()
			self.ComboPoints[i].AnimOut = self.ComboPoints[i]:CreateAnimationGroup()
		end
	end)
	hooksecurefunc(ComboPointPlayerFrame, "AnimIn", function(_, frame)
		frame.Point:SetAlpha(1)
	end)
	hooksecurefunc(ComboPointPlayerFrame, "AnimOut", function(_, frame)
		frame.Point:SetAlpha(0)
	end)
end

