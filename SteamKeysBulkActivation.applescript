-- Activates all Steam keys' bundle from an opened web page into Steam.
-- Intended to use for Humble Bundle automation.
-- author: Timothy Basanov (timofey.basanov@gmail.com)

set user_browser to button returned of (display dialog "Which browser do you use?" buttons {"Cancel", "Safari", "Chrome"} default button 2)

tell application "System Events"
  set steam_application to application "/Applications/Steam.app"
	
	repeat
		-- Load page from Safari
		if user_browser is equal to "Safari" then
			tell application "Safari" to set page_contents to the text of document 1
		else if user_browser is equal to "Chrome" then
			tell application "Google Chrome" to tell active tab of window 1
				set page_contents to execute javascript "document.body.innerText"
			end tell
		end if
		
		
		-- Search for the Steam Keys in the page content
		set steam_keys to {}
		repeat with possible_key in paragraphs of page_contents
			-- Check if it is a Key
			if (possible_key's length) is greater than 9 and (possible_key's length) is less than 32 then
				set only_right_characters to true
				set contains_letter to false
				repeat with key_char in the characters of possible_key
					considering case
						if key_char is not in the characters of "ABCDEFGHIJKLMNOPQRSTUVWXYZ-0123456789_" then
							set only_right_characters to false
						end if
						if key_char is in the characters of "ABCDEFGHIJKLMNOPQRSTUVWXYZ" then
							set contains_letter to true
						end if
					end considering
				end repeat
				if only_right_characters and contains_letter then
					copy possible_key as string to the end of steam_keys
				end if
			end if
		end repeat
		
		-- Making sure keys are loaded
		if steam_keys's length is 0 then
			display dialog "This application will read Steam keys from a web page and will activate them one by one.

Looks like we can not find any Steam keys in your " & user_browser & ".
Please, make sure correct site's page is loaded and keys are visible." with title "Loading Steam keys" buttons {"Cancel", "Yes, now I can see my Steam keys in " & user_browser} default button 2
		else
			exit repeat
		end if
	end repeat
	
	-- Starting Steam and asking user for confirmation
	activate steam_application
	set AppleScript's text item delimiters to "
"
	display dialog ("Ready to activate next Steam keys:
" & steam_keys as string) & "

After activation process is started it's recommended to not to touch you Mac until its is finished." buttons {"Cancel", "I promise to not to touch my Mac"}
	activate steam_application
	set successes to 0
	-- provides some guaranties against data races
	repeat while successes is less than 3
		-- waiting for Steam app to load
		tell process "Steam"
			if (count of windows) is 0 then
				-- Steam is loaded, no windows open
				set successes to successes + 1
			end if
			if (count of (windows whose name is not "Steam")) is not 0 then
				set successes to successes + 1
			end if
			-- Special case for Steam window, waiting for a big one
			set found to false
			repeat with current_window in (windows whose name is "Steam")
				-- some weird hack to get around AppleScript's type system
				copy (current_window's size) to s
				if s's first item is greater than 600 and s's second item is greater than 400 then
					set successes to successes + 1
				end if
			end repeat
		end tell
		delay 1
	end repeat
	
	
	-- Entering all the keys gathered
	repeat with steam_key in steam_keys
		tell process "Steam"
			-- Close all opened windows
			delay 1
			repeat
				set window_menu_size to count of menu items of menus of menu bar item "Window" of menu bars
				click menu item "Close" of menus of menu bar item "Window" of menu bars
				delay 1
				if window_menu_size is equal to (count of menu items of menus of menu bar item "Window" of menu bars) then
					-- closing until everythin is closed
					exit repeat
				end if
			end repeat
			-- Click "Activate" in menu
			click menu item "Activate a Product on Steam..." of menus of menu bar item "Games" of menu bars
			-- Go to product code activation page
			delay 1
			keystroke return
			delay 1
			keystroke return
			-- Entering Key
			delay 2
			keystroke steam_key
			-- OK'ing all requests until window is closed
			set successes to 0
			-- provides some guaranties against data races
			repeat while successes is less than 5
				repeat while (count of (windows whose name is "Product Activation" or name starts with "Install")) is not 0
					set successes to 0
					delay 5
					keystroke return
				end repeat
				set successes to successes + 1
				delay 1
			end repeat
		end tell
	end repeat
	display dialog "It looks to me that your keys are imported, but it's always a good idea  to double-check." buttons {"Great!"}
end tell
