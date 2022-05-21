-- English localization file for enUS and enGB.
local E = unpack(select(2, ...)); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local L = E.Libs.ACL:NewLocale("ElvUI", "enUS", true, true)

L[" |cff00ff00bound to |r"] = true
L["%s frame(s) has a conflicting anchor point, please change either the buff or debuff anchor point so they are not attached to each other. Forcing the debuffs to be attached to the main unitframe until fixed."] = true
L["%s is attempting to share his filters with you. Would you like to accept the request?"] = true
L["%s is attempting to share the profile %s with you. Would you like to accept the request?"] = true
L["%s: %s tried to call the protected function '%s'."] = true
L["(Hold Shift) Memory Usage"] = true
L["(Modifer Click) Collect Garbage"] = true
L["A raid marker feature is available by pressing Escape -> Keybinds scroll to the bottom under ElvUI and setting a keybind for the raid marker."] = true
L["A setting you have changed will change an option for this character only. This setting that you have changed will be uneffected by changing user profiles. Changing this setting requires that you reload your User Interface."] = true
L["ABOVE_THREAT_FORMAT"] = "%s: %.0f%% [%.0f%% above |cff%02x%02x%02x%s|r]"
L["AFK"] = true
L["Accepting this will reset the UnitFrame settings for %s. Are you sure?"] = true
L["Accepting this will reset your Filter Priority lists for all auras on NamePlates. Are you sure?"] = true
L["Accepting this will reset your Filter Priority lists for all auras on UnitFrames. Are you sure?"] = true
L["Adjust the UI Scale to fit your screen, press the autoscale button to set the UI Scale automatically."] = true
L["All keybindings cleared for |cff00ff00%s|r."] = true
L["Already Running.. Bailing Out!"] = true
L["Are you sure you want to apply this font to all ElvUI elements?"] = true
L["Are you sure you want to disband the group?"] = true
L["Are you sure you want to reset all the settings on this profile?"] = true
L["Are you sure you want to reset every mover back to it's default position?"] = true
L["Arena Frames"] = true
L["Aura Bars & Icons"] = true
L["Auras Set"] = true
L["Auras"] = true
L["Auto Scale"] = true
L["Avoidance Breakdown"] = true
L["BG"] = true
L["BGL"] = true
L["BNet Frame"] = true
L["Bag Mover (Grow Down)"] = true
L["Bag Mover (Grow Up)"] = true
L["Bag Mover"] = true
L["Bags"] = true
L["Bank Mover (Grow Down)"] = true
L["Bank Mover (Grow Up)"] = true
L["Bank"] = true
L["Bar "] = true
L["Bars"] = true
L["Battleground datatexts temporarily hidden, to show type /bgstats or right click the 'C' icon near the minimap."] = true
L["Battleground datatexts will now show again if you are inside a battleground."] = true
L["Binding"] = true
L["Binds Discarded"] = true
L["Binds Saved"] = true
L["BoE"] = true
L["BoU"] = true
L["Boss Frames"] = true
L["Buffs"] = true
L["CVars Set"] = true
L["CVars"] = true
L["Calendar"] = true
L["Can't Roll"] = true
L["Can't buy anymore slots!"] = true
L["Caster DPS"] = true
L["Character: "] = true
L["Chat Set"] = true
L["Chat"] = true
L["Choose a theme layout you wish to use for your initial setup."] = true
L["Classbar"] = true
L["Classic"] = true
L["Combat Time"] = true
L["Combobar"] = true
L["Config Mode:"] = true
L["Confused.. Try Again!"] = true
L["Continue"] = true
L["Coords"] = true
L["Count"] = true
L["DND"] = true
L["DPS"] = true
L["Dark"] = true
L["Data From: %s"] = true
L["Data To: %s"] = true
L["Dead"] = true
L["Debuffs"] = true
L["Deficit:"] = true
L["Delete gray items?"] = true
L["Detected that your ElvUI OptionsUI addon is out of date. This may be a result of your Tukui Client being out of date. Please visit our download page and update your Tukui Client, then reinstall ElvUI. Not having your ElvUI OptionsUI addon up to date will result in missing options."] = true
L["Disable Warning"] = true
L["Disable"] = true
L["Disband Group"] = true
L["Discard"] = true
L["Discord"] = true
L["Do you enjoy the new ElvUI?"] = true
L["Do you swear not to post in technical support about something not working without first disabling the addon/module combination first?"] = true
L["Earned:"] = true
L["ElvUI Installation"] = true
L["ElvUI Plugin Installation"] = true
L["ElvUI has a dual spec feature which allows you to load different profiles based on your current spec on the fly. You can enable this from the profiles tab."] = true
L["ElvUI is five or more revisions out of date. You can download the newest version from https://github.com/ElvUI-WotLK/ElvUI"] = true
L["ElvUI is out of date. You can download the newest version from https://github.com/ElvUI-WotLK/ElvUI"] = true
L["ElvUI needs to perform database optimizations please be patient."] = true
L["ElvUI was updated while the game is still running. Please relaunch the game, as this is required for the files to be properly updated."] = true
L["Empty Slot"] = true
L["Enable"] = true
L["Error resetting UnitFrame."] = true
L["Experience Bar"] = true
L["Experience"] = true
L["Export Now"] = true
L["Farm Mode"] = true
L["Filter download complete from %s, would you like to apply changes now?"] = true
L["Finished"] = true
L["Fishy Loot"] = true
L["Focus Castbar"] = true
L["Focus Frame"] = true
L["FocusTarget Frame"] = true
L["For technical support visit us at https://github.com/ElvUI-WotLK."] = true
L["Frame"] = true
L["Friends List"] = true
L["G"] = true
L["GM Ticket Frame"] = true
L["General"] = true
L["Ghost"] = true
L["Gold"] = true
L["Grid Size:"] = true
L["HP"] = true
L["HPS"] = true
L["Healer"] = true
L["Hit"] = true
L["BlockC"] = true
L["BlockA"] = true
L["Hold Control + Right Click:"] = true
L["Hold Shift + Drag:"] = true
L["Hold Shift + Right Click:"] = true
L["Home Latency:"] = true
L["Hover your mouse over any actionbutton or spellbook button to bind it. Press the ESC key to clear the current actionbutton's keybinding."] = true
L["I Swear"] = true
L["INCOMPATIBLE_ADDON"] = "The addon %s is not compatible with ElvUI's %s module. Please select either the addon or the ElvUI module to disable."
L["Icons Only"] = true
L["If you accidently remove a chat frame you can always go the in-game configuration menu, press install, go to the chat portion and reset them."] = true
L["If you are experiencing issues with ElvUI try disabling all your addons except ElvUI, remember ElvUI is a full UI replacement addon, you cannot run two addons that do the same thing."] = true
L["If you have an icon or aurabar that you don't want to display simply hold down shift and right click the icon for it to disapear."] = true
L["Import Now"] = true
L["Importance: |cff07D400High|r"] = true
L["Importance: |cffD3CF00Medium|r"] = true
L["Importance: |cffFF0000Low|r"] = true
L["In Progress"] = true
L["Installation Complete"] = true
L["Invalid Target"] = true
L["Item Level:"] = true
L["KEY_ALT"] = "A"
L["KEY_CTRL"] = "C"
L["KEY_DELETE"] = "Del"
L["KEY_HOME"] = "Hm"
L["KEY_INSERT"] = "Ins"
L["KEY_MOUSEBUTTON"] = "M"
L["KEY_MOUSEWHEELDOWN"] = "MwD"
L["KEY_MOUSEWHEELUP"] = "MwU"
L["KEY_NUMPAD"] = "N"
L["KEY_PAGEDOWN"] = "PD"
L["KEY_PAGEUP"] = "PU"
L["KEY_SHIFT"] = "S"
L["KEY_SPACE"] = "SpB"
L["Key"] = true
L["LOGIN_MSG"] = "Welcome to %sElvUI|r version %s%s|r, type /ec to access the in-game configuration menu. If you are in need of technical support you can visit us at https://github.com/ElvUI-WotLK/ElvUI or join our Discord: https://discord.gg/UXSc7nt"
L["Layout Set"] = true
L["Layout"] = true
L["Left Chat"] = true
L["Left Click:"] = true
L["List of installations in queue:"] = true
L["Lock"] = true
L["Loot / Alert Frames"] = true
L["Loot Frame"] = true
L["Lord! It's a miracle! The download up and vanished like a fart in the wind! Try Again!"] = true
L["MA Frames"] = true
L["MT Frames"] = true
L["Micro Bar"] = true
L["Minimap"] = true
L["MirrorTimer"] = true
L["Miss Chance"] = true
L["Mitigation By Level: "] = true
L["Movers"] = true
L["Must be in group with the player if he isn't on the same server as you."] = true
L["No Guild"] = true
L["No bindings set."] = true
L["No gray items to delete."] = true
L["No, Revert Changes!"] = true
L["Nudge"] = true
L["O"] = true
L["Objective Frame"] = true
L["Offline"] = true
L["Oh lord, you have got ElvUI and Tukui both enabled at the same time. Select an addon to disable."] = true
L["On screen positions for different elements."] = true
L["One or more of the changes you have made require a ReloadUI."] = true
L["One or more of the changes you have made will effect all characters using this addon. You will have to reload the user interface to see the changes you have made."] = true
L["P"] = true
L["PL"] = true
L["Party Frames"] = true
L["Pending"] = true
L["Pet Bar"] = true
L["Pet Castbar"] = true
L["Pet Frame"] = true
L["PetTarget Frame"] = true
L["Player Buffs"] = true
L["Player Castbar"] = true
L["Player Debuffs"] = true
L["Player Frame"] = true
L["Player Powerbar"] = true
L["Please click the button below so you can setup variables and ReloadUI."] = true
L["Please click the button below to setup your CVars."] = true
L["Please press the continue button to go onto the next step."] = true
L["Preview Changes"] = true
L["Preview"] = true
L["Profile download complete from %s, but the profile %s already exists. Change the name or else it will overwrite the existing profile."] = true
L["Profile download complete from %s, would you like to load the profile %s now?"] = true
L["Profile request sent. Waiting for response from player."] = true
L["Profit:"] = true
L["Purchase Bags"] = true
L["PvP"] = true
L["R"] = true
L["RL"] = true
L["RW"] = true
L["Raid Frames"] = true
L["Raid Menu"] = true
L["Raid Pet Frames"] = true
L["Raid-40 Frames"] = true
L["Reload UI"] = true
L["Remaining:"] = true
L["Remove Bar %d Action Page"] = true
L["Reputation Bar"] = true
L["Request was denied by user."] = true
L["Reset Counters: Hold Shift + Left Click"] = true
L["Reset Data: Hold Shift + Right Click"] = true
L["Reset Position"] = true
L["Rested:"] = true
L["Right Chat"] = true
L["Right Click:"] = true
L["Middle Click:"] = true
L["SP"] = true
L["Save"] = true
L["Saved Dungeon(s)"] = true
L["Saved Raid(s)"] = true
L["Select the type of aura system you want to use with ElvUI's unitframes. Set to Aura Bar & Icons to use both aura bars and icons, set to icons only to only see icons."] = true
L["Server: "] = true
L["Session:"] = true
L["Setup CVars"] = true
L["Setup Chat"] = true
L["Show BG Texts"] = true
L["Skip Process"] = true
L["Sort Bags"] = true
L["Spell/Heal Power"] = true
L["Spent:"] = true
L["Stance Bar"] = true
L["Stats For:"] = true
L["Steps"] = true
L["Sticky Frames"] = true
L["System"] = true
L["Talent Specialization:"] = true
L["Tank / Physical DPS"] = true
L["Target Castbar"] = true
L["Target Frame"] = true
L["Target Powerbar"] = true
L["TargetTarget Frame"] = true
L["TargetTargetTarget Frame"] = true
L["Targeted By:"] = true
L["Temporary Move"] = true
L["The UI Scale has been changed, if you would like to preview the change press the preview button. It is recommended that you reload your User Interface for the best appearance."] = true
L["The chat windows function the same as Blizzard standard chat windows, you can right click the tabs and drag them around, rename, etc. Please click the button below to setup your chat windows."] = true
L["The focus unit can be set by typing /focus when you are targeting the unit you want to focus. It is recommended you make a macro to do this."] = true
L["The in-game configuration menu can be accessed by typing the /ec command or by clicking the 'C' button on the minimap. Press the button below if you wish to skip the installation process."] = true
L["The profile you tried to import already exists. Choose a new name or accept to overwrite the existing profile."] = true
L["The spell '%s' has been added to the Blacklist unitframe aura filter."] = true
L["Theme Set"] = true
L["Theme Setup"] = true
L["This install process will help you learn some of the features in ElvUI has to offer and also prepare your user interface for usage."] = true
L["This part of the installation process sets up your World of Warcraft default options it is recommended you should do this step for everything to behave properly."] = true
L["This part of the installation process sets up your chat windows names, positions and colors."] = true
L["This setting caused a conflicting anchor point, where '%s' would be attached to itself. Please check your anchor points. Setting '%s' to be attached to '%s'."] = true
L["This will change the layout of your unitframes and actionbars."] = true
L["To move abilities on the actionbars by default hold shift + drag. You can change the modifier key from the actionbar options menu."] = true
L["To setup which channels appear in which chat frame, right click the chat tab and go to settings."] = true
L["Toggle Bags"] = true
L["Toggle Chat Frame"] = true
L["Toggle Configuration"] = true
L["Tooltip"] = true
L["Total CPU:"] = true
L["Total Memory:"] = true
L["Total: "] = true
L["Trigger"] = true
L["Type /hellokitty to revert to old settings."] = true
L["UI Scale"] = true
L["Unhittable:"] = true
L["Vehicle Seat Frame"] = true
L["Vendor / Delete Grays"] = true
L["Vendored gray items for: %s"] = true
L["Vendoring Grays"] = true
L["Welcome to ElvUI version %s!"] = true
L["Wintergrasp"] = true
L["XP:"] = true
L["Yes, Keep Changes!"] = true
L["You are going to copy settings for |cffD3CF00\"%s\"|r from your current |cff4beb2c\"%s\"|r profile to |cff4beb2c\"%s\"|r profile. Are you sure?"] = true
L["You are going to copy settings for |cffD3CF00\"%s\"|r from |cff4beb2c\"%s\"|r profile to your current |cff4beb2c\"%s\"|r profile. Are you sure?"] = true
L["You are now finished with the installation process. If you are in need of technical support please visit us at https://github.com/ElvUI-WotLK."] = true
L["You are using CPU Profiling. This causes decreased performance. Do you want to disable it or continue?"] = true
L["You can access copy chat and chat menu functions by mouse over the top right corner of chat panel and left/right click on the button that will appear."] = true
L["You can always change fonts and colors of any element of ElvUI from the in-game configuration."] = true
L["You can now choose what layout you wish to use based on your combat role."] = true
L["You can see someones average item level of their gear by holding shift and mousing over them. It should appear inside the tooltip."] = true
L["You can set your keybinds quickly by typing /kb."] = true
L["You can toggle the microbar by using your middle mouse button on the minimap you can also accomplish this by enabling the actual microbar located in the actionbar settings."] = true
L["You can use the /resetui command to reset all of your movers. You can also use the command to reset a specific mover, /resetui <mover name>.\nExample: /resetui Player Frame"] = true
L["You cannot copy settings from the same unit."] = true
L["You don't have enough money to repair all items."] = true
L["You don't have enough money to repair."] = true
L["You don't have permission to mark targets."] = true
L["You have imported settings which may require a UI reload to take effect. Reload now?"] = true
L["You must purchase a bank slot first!"] = true
L["You still have ElvUI_Config installed. ElvUI_Config has been renamed to ElvUI_OptionsUI, please remove it."] = true
L["Your items have been repaired for: "] = true
L["Your items have been repaired using guild bank funds for: "] = true
L["Your profile was successfully recieved by the player."] = true
L["copperabbrev"] = "|cffeda55fc|r"
L["goldabbrev"] = "|cffffd700g|r"
L["lvl"] = true
L["says"] = true
L["silverabbrev"] = "|cffc7c7cfs|r"
L["whispers"] = true
L["yells"] = true
L["|cFFE30000Lua error recieved. You can view the error message when you exit combat."] = true

----------------------------------
L["RED_ENABLE"] = "|cFFff3333Enable|r"
L["GREEN_ENABLE"] = "|cFF33ff33Enable|r"
L["DESC_MOVERCONFIG"] = [=[Movers unlocked. Move them now and click Lock when you are done.

Options:
  LeftClick - Toggle Nudge Frame.
  RightClick - Open Config Section.
  Shift + RightClick - Hides mover temporarily.
  Ctrl + RightClick - Resets mover position to default.
]=]