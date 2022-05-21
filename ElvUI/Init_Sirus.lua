-- local AddOnName = ...
local E, L, V, P, G = unpack(ElvUI)
local EP = E.Libs.EP

local S = E:GetModule("Sirus")

local wipe = table.wipe
local tinsert = table.insert

local GetNumBattlefieldStats = GetNumBattlefieldStats



-- function S:GetOptions()
-- 	--ActionBars
-- 	E.Options.args.actionbar.args.microbar.args.buttonsPerRow.max = #SHARED_MICROMENU_BUTTONS
-- 	-- Auras
-- 	E.Options.args.auras.args.buffs.args.filter = {
-- 		order = 15,
-- 		type = "select",
-- 		sortByValue = true,
-- 		name = L["Add Regular Filter"],
-- 		desc = L["These filters use a list of spells to determine if an aura should be allowed or blocked. The content of these filters can be modified in the 'Filters' section of the config."],
-- 		values = function()
-- 			local filters = {}
-- 			filters[""] = NONE
-- 			local list = E.global.unitframe.aurafilters
-- 			if list then
-- 				for filter in pairs(list) do
-- 					filters[filter] = filter
-- 				end
-- 			end

-- 			return filters
-- 		end
-- 	}
-- 	E.Options.args.auras.args.debuffs.args.filter = {
-- 		order = 15,
-- 		type = "select",
-- 		sortByValue = true,
-- 		name = L["Add Regular Filter"],
-- 		desc = L["These filters use a list of spells to determine if an aura should be allowed or blocked. The content of these filters can be modified in the 'Filters' section of the config."],
-- 		values = function()
-- 			local filters = {}
-- 			filters[""] = NONE
-- 			local list = E.global.unitframe.aurafilters
-- 			if list then
-- 				for filter in pairs(list) do
-- 					filters[filter] = filter
-- 				end
-- 			end

-- 			return filters
-- 		end
-- 	}

-- 	-- General
-- 	E.Options.args.general.args.blizzUIImprovements.args.case = {
-- 		order = 9,
-- 		type = "toggle",
-- 		name = E.NewSign.."Улучшенная рулетка",
-- 		get = function(info) return E.db.sirus[info[#info]] end,
-- 		set = function(info, value)
-- 			E.db.sirus[info[#info]] = value
-- 			E:StaticPopup_Show("PRIVATE_RL")
-- 		end
-- 	}

-- 	--Skins
-- 	E.Options.args.skins.args.blizzard.args.deathRecap = {
-- 		type = "toggle",
-- 		name = DEATH_RECAP_TITLE_DONT_INFO,
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.guild = {
-- 		type = "toggle",
-- 		name = L["Guild"],
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.losscontrol = {
-- 		type = "toggle",
-- 		name = LOSS_OF_CONTROL,
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.store = {
-- 		type = "toggle",
-- 		name = "Магазин",
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.timer = {
-- 		type = "toggle",
-- 		name = "Таймер",
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.transmogrify = {
-- 		type = "toggle",
-- 		name = "Трансмогрификация",
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.collections = {
-- 		type = "toggle",
-- 		name = "Коллекции",
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.encounterjournal = {
-- 		type = "toggle",
-- 		name = "Путеводитель",
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.roulette = {
-- 		type = "toggle",
-- 		name = ROULETTE_TITLE,
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.mountChest = {
-- 		type = "toggle",
-- 		name = MOUNT_CHEST_LABEL,
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.blizzard.args.headhunting = {
-- 		type = "toggle",
-- 		name = HEADHUNTING,
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}

-- 	E.Options.args.skins.args.blizzard.args.extraButton = {
-- 		type = "toggle",
-- 		name = "Кнопки действий",
-- 		desc = L["TOGGLESKIN_DESC"]
-- 	}
-- 	E.Options.args.skins.args.cleanExtraButton = {
-- 		order = 9,
-- 		type = "toggle",
-- 		name = E.NewSign.."Упрощенные кнопки действий",
-- 		get = function(info) return E.private.skins.cleanExtraButton end,
-- 		set = function(info, value)
-- 			E.private.skins.cleanExtraButton = value
-- 			E:StaticPopup_Show("PRIVATE_RL")
-- 		end
-- 	}

-- 	E.Options.args.databars.args.honor = {
-- 		order = 5,
-- 		type = "group",
-- 		name = PVP_TAB_SERVICES,
-- 		get = function(info) return DB.db.honor[info[#info]] end,
-- 		set = function(info, value)
-- 			DB.db.honor[info[#info]] = value
-- 			DB:UpdateHonorDimensions()
-- 		end,
-- 		args = {
-- 			header = {
-- 				order = 1,
-- 				type = "header",
-- 				name = PVP_TAB_SERVICES
-- 			},
-- 			enable = {
-- 				order = 2,
-- 				type = "toggle",
-- 				name = L["Enable"],
-- 				set = function(info, value)
-- 					DB.db.honor[info[#info]] = value
-- 					DB:EnableDisable_HonorBar()
-- 				end
-- 			},
-- 			mouseover = {
-- 				order = 3,
-- 				type = "toggle",
-- 				name = L["Mouseover"]
-- 			},
-- 			hideOutsidePvP = {
-- 				order = 4,
-- 				type = "toggle",
-- 				name = L["Hide Outside PvP"],
-- 				set = function(info, value)
-- 					DB.db.honor[info[#info]] = value
-- 					DB:UpdateHonor()
-- 				end
-- 			},
-- 			hideInVehicle = {
-- 				order = 5,
-- 				type = "toggle",
-- 				name = L["Hide In Vehicle"],
-- 				set = function(info, value)
-- 					DB.db.honor[info[#info]] = value
-- 					DB:UpdateHonor()
-- 				end
-- 			},
-- 			hideInCombat = {
-- 				order = 6,
-- 				type = "toggle",
-- 				name = L["Hide In Combat"],
-- 				set = function(info, value)
-- 					DB.db.honor[info[#info]] = value
-- 					DB:UpdateHonor()
-- 				end
-- 			},
-- 			spacer = {
-- 				order = 7,
-- 				type = "description",
-- 				name = " "
-- 			},
-- 			orientation = {
-- 				order = 8,
-- 				type = "select",
-- 				name = L["Statusbar Fill Orientation"],
-- 				desc = L["Direction the bar moves on gains/losses"],
-- 				values = {
-- 					["HORIZONTAL"] = L["Horizontal"],
-- 					["VERTICAL"] = L["Vertical"]
-- 				}
-- 			},
-- 			width = {
-- 				order = 9,
-- 				type = "range",
-- 				name = L["Width"],
-- 				min = 5, max = ceil(GetScreenWidth() or 800), step = 1
-- 			},
-- 			height = {
-- 				order = 10,
-- 				type = "range",
-- 				name = L["Height"],
-- 				min = 5, max = ceil(GetScreenHeight() or 800), step = 1
-- 			},
-- 			font = {
-- 				order = 11,
-- 				type = "select", dialogControl = "LSM30_Font",
-- 				name = L["Font"],
-- 				values = AceGUIWidgetLSMlists.font
-- 			},
-- 			textSize = {
-- 				order = 12,
-- 				type = "range",
-- 				name = L["FONT_SIZE"],
-- 				min = 6, max = 22, step = 1
-- 			},
-- 			fontOutline = {
-- 				order = 13,
-- 				type = "select",
-- 				name = L["Font Outline"],
-- 				values = {
-- 					["NONE"] = L["NONE"],
-- 					["OUTLINE"] = "OUTLINE",
-- 					["MONOCHROMEOUTLINE"] = "MONOCROMEOUTLINE",
-- 					["THICKOUTLINE"] = "THICKOUTLINE"
-- 				}
-- 			},
-- 			textFormat = {
-- 				order = 14,
-- 				type = "select",
-- 				name = L["Text Format"],
-- 				width = "double",
-- 				values = {
-- 					NONE = L["NONE"],
-- 					CUR = L["Current"],
-- 					REM = L["Remaining"],
-- 					PERCENT = L["Percent"],
-- 					CURMAX = L["Current - Max"],
-- 					CURPERC = L["Current - Percent"],
-- 					CURREM = L["Current - Remaining"],
-- 					CURPERCREM = L["Current - Percent (Remaining)"],
-- 				},
-- 				set = function(info, value)
-- 					DB.db.honor[info[#info]] = value
-- 					DB:UpdateHonor()
-- 				end
-- 			}
-- 		}
-- 	}

-- 	E.Options.args.datatexts.args.ArenaRating = {
-- 		order = 7,
-- 		type = "group",
-- 		name = PVP_YOUR_RATING,
-- 		get = function(info) return E.db.datatexts.ArenaRating[tonumber(info[#info])] end,
-- 		set = function(info, value)
-- 			E.db.datatexts.ArenaRating[tonumber(info[#info])] = value
-- 			DT:LoadDataTexts()
-- 		end,
-- 		args = {
-- 			["1"] = {
-- 				order = 1,
-- 				type = "toggle",
-- 				name = "Solo",
-- 			},
-- 			["2"] = {
-- 				order = 2,
-- 				type = "toggle",
-- 				name = "2x2",
-- 			},
-- 			["3"] = {
-- 				order = 3,
-- 				type = "toggle",
-- 				name = "3x3",
-- 			},
-- 			["4"] = {
-- 				order = 4,
-- 				type = "toggle",
-- 				name = "RGB",
-- 			}
-- 		}
-- 	}
-- end





C_BattlefieldScoreManager.scoreData = {}

function C_BattlefieldScoreManager:GenerateScoreData()
	wipe(self.scoreData)

	local factionID = C_FactionManager:GetFactionOverride()

    for i = 1, self._GetNumBattlefieldScores() do
        local name, killingBlows, honorableKills, deaths, honorGained, faction, rank, race, class, classToken, damageDone, healingDone = self._GetBattlefieldScore(i)
        local additionalStatData = {}

        if self:IsValidation() then
            for statID = 1, GetNumBattlefieldStats() do
                tinsert(additionalStatData, GetBattlefieldStatData(i, statID))
            end

            if factionID then
				if name then
					local GUID = UnitGUID(name)

					if GUID then
						faction = factionID
					else
						faction = factionID == PLAYER_FACTION_GROUP.Alliance and PLAYER_FACTION_GROUP.Horde or PLAYER_FACTION_GROUP.Alliance
					end
                else
                    faction = factionID == PLAYER_FACTION_GROUP.Alliance and PLAYER_FACTION_GROUP.Horde or PLAYER_FACTION_GROUP.Alliance
                end
            end
        end

        if not self.selectedFaction or self.selectedFaction == faction then
            tinsert(self.scoreData, {name, killingBlows, honorableKills, deaths, honorGained, faction, rank, race, class, classToken, damageDone, healingDone, additionalStatData})
        end
    end
end

do
	local oldPlayerTalentFrame_Refresh = PlayerTalentFrame_Refresh
	function PlayerTalentFrame_Refresh()
		if not PlayerTalentFrame:IsShown() then return end

		return oldPlayerTalentFrame_Refresh()
	end
end

do -- temp fix extra ab
	local LAB = E.Libs.LAB
	local function Update(self)
		local name = self:GetName()

		if self:HasAction() then
			local actionType, id, _, spellID = GetActionInfo(self._state_action)
			if spellID then
				SPELL_ACTION_DATA[name] = spellID
			elseif actionType == "item" and id then
				ITEM_ACTION_DATA[name] = id
			end
		else
			SPELL_ACTION_DATA[name] = false
			ITEM_ACTION_DATA[name] = false
		end
	end

	local old_script = ExtraActionBarFrame.FindOnActionBar
	function ExtraActionBarFrame:FindOnActionBar(...)
		for button in next, LAB.buttonRegistry do
			if button._state_type == "action" then
				Update(button)
			end
		end

		return old_script(ExtraActionBarFrame, ...)
	end
end

local oldIsAddOnLoaded = IsAddOnLoaded
function IsAddOnLoaded(name)
	if name == "Blizzard_TimeManager" then
		return true
	else
		return oldIsAddOnLoaded(name)
	end
end

PVPUIFrame:HookScript("OnHide", function(self)
	if self.TitleTimer then
		self.TitleTimer:Cancel()
		self.TitleTimer = nil
	end
end)

PVPHonorFrame:HookScript("OnHide", function(self)
	local worldPVP2Button = self.BottomInset.WorldPVPContainer.WorldPVP2Button

	if worldPVP2Button.Timer then
		worldPVP2Button.Timer:Cancel()
		worldPVP2Button.Timer = nil
	end
end)

local function GameMenuFrame_UpdateVisibleButtons()
	if not GameMenuFrame.isSirus then
		GameMenuFrame.isSirus = true
	else
		GameMenuFrame:SetHeight(GameMenuFrame:GetHeight() + GameMenuButtonLogout:GetHeight() + 1)
	end

	local addonsButton = GameMenuButtonAddOns or ElvUI_AddonListButton
	if addonsButton then
		GameMenuButtonMacros:ClearAllPoints()
		GameMenuButtonMacros:Point("TOP", GameMenuButtonKeybindings, "BOTTOM", 0, -1)

		addonsButton:ClearAllPoints()
		addonsButton:Point("TOP", GameMenuButtonMacros, "BOTTOM", 0, -1)

		GameMenuFrame.ElvUI:ClearAllPoints()
		GameMenuFrame.ElvUI:Point("TOP", addonsButton, "BOTTOM", 0, -1)

		GameMenuFrame:SetHeight(GameMenuFrame:GetHeight() + GameMenuButtonLogout:GetHeight() + 1)
	end
end

function S:GetUnitCategory(unit)
	local category
	if ElvSirusDB[E.myrealm][unit] then
		category = self.Categories[self.CategoriesIDs[ElvSirusDB[E.myrealm][unit]]]
		return category.name, category.icon, category.name2
--	else

	end
end

function S:UPDATE_MOUSEOVER_UNIT()
	if UnitIsPlayer("mouseover") then
		local name = UnitName("mouseover")
		if not name or name == UNKNOWN then return end

		for i = 1, 40 do
			local _, _, _, _, _, _, _, _, _, _, spellID = UnitAura("mouseover", i, "HARMFUL")
			if not spellID then break end

			if self.Categories[spellID] then
				local id = self.Categories[spellID].id
				if ElvSirusDB[E.myrealm][name] ~= id then
					ElvSirusDB[E.myrealm][name] = id
				end
				break
			end
		end
	end
end

function S:FixArenaTaint()
	ArenaEnemyFrames.ClearAllPoints = E.noop
	ArenaEnemyFrames.SetPoint = E.noop
end

function S:ADDON_LOADED(_, addonName)
	if addonName == "Blizzard_ArenaUI" then
		self:FixArenaTaint()
	end
end

function S:Initialize()
	ElvSirusDB = ElvSirusDB or {}
	ElvSirusDB[E.myrealm] = ElvSirusDB[E.myrealm] or {}

	self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")

	if E.private.unitframe.disabledBlizzardFrames.arena then
		if not IsAddOnLoaded("Blizzard_ArenaUI") then
			self:RegisterEvent("ADDON_LOADED")
		else
			self:FixArenaTaint()
		end
	end

	hooksecurefunc("WorldStateScoreFrame_Update", function()
		local offset = FauxScrollFrame_GetOffset(WorldStateScoreScrollFrame)
		local _, name, nameText

		for i = 1, MAX_WORLDSTATE_SCORE_BUTTONS do
			name, _, _, _, _, faction, _, _, _, classToken = GetBattlefieldScore(offset + i)

			if name then
				local _, _, name2 = S:GetUnitCategory(name)
				if name2 then
					nameText = _G["WorldStateScoreButton"..i.."NameText"]
					nameText:SetFormattedText("%s |cffffffff%s|r", name, name2)
				end
			end
		end
	end)

	GameMenuFrame:HookScript("OnShow", GameMenuFrame_UpdateVisibleButtons)

	local function StaticPopup_OnShow(self)
		if self.ReplayInfoFrame then
			self.ReplayInfoFrame:Hide()
		end
	end

	for index = 1, 4 do
		E.StaticPopupFrames[index]:HookScript("OnShow", StaticPopup_OnShow)
	end
	-- S:GetOptions()
	-- print("515")
	-- EP:RegisterPlugin(S:GetName(), self.GetOptions)
end

local function InitializeCallback()
	S:Initialize()
end

E:RegisterModule(S:GetName(), InitializeCallback)