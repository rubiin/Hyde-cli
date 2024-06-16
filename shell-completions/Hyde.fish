function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "--browser" "shell" "Config" "info" "search" "set" "reload" "reset" "--animations" "version" "select" "--blur" "--site" "variety" "theme" "clean" "size" "reload" "-f" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[4] "	list and copy selected"
    set descriptions[5] " Default tranparency"
    set descriptions[6] "  Show the JSON format"
    set descriptions[7] " [*] Save power by disabling features"
    set descriptions[8] " [*] Unset specific changes"
    set descriptions[9] " wallbash light mode"
    set descriptions[10] "  Stop every instance of Screencap"
    set descriptions[11] " Disable animations"
    set descriptions[12] " Backing up commands"
    set descriptions[13] " Restores dots from previous backup"
    set descriptions[14] " List the backup"
    set descriptions[15] " Cursor setting"
    set descriptions[16] "  Show the pretty format"
    set descriptions[17] "    run without custom '.lst' bookmark files"
    set descriptions[18] " Only restores dots from default '/Configs'"
    set descriptions[19] " Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    set descriptions[20] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[21] "  Record focused monitor"
    set descriptions[22] " Theme commands"
    set descriptions[23] " [*] Bookmark selector"
    set descriptions[24] " wallbash disabled"
    set descriptions[25] "  Frozen screen, drag to manually snip an area"
    set descriptions[26] " Toggle ﯦ  Set/unset current changes'"
    set descriptions[27] " [*] Pastebin manager "
    set descriptions[28] " wallbash auto"
    set descriptions[29] " System information"
    set descriptions[30] " Change all the pre-set sizes"
    set descriptions[31] " Set cursor theme"
    set descriptions[32] "	list and delete selected"
    set descriptions[33] " Upgrades dots from the repository"
    set descriptions[34] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[35] " Waybar commands"
    set descriptions[36] " Just reload"
    set descriptions[37] " Pull updates from Hyde repository"
    set descriptions[38] " Backs up the current configuration"
    set descriptions[39] " Glyph selector"
    set descriptions[40] "	wipe database"
    set descriptions[41] "  Print focused monitor"
    set descriptions[42] " Toggle game mode"
    set descriptions[43] " browser to use"
    set descriptions[44] " Shell commands"
    set descriptions[45] " [*] Hyde Config File & Directory status"
    set descriptions[46] " Check active cursor status (only gsettings)"
    set descriptions[47] " [*] Web Search"
    set descriptions[48] " Set /Path/to/Wallpaper"
    set descriptions[49] " Reloads waybar"
    set descriptions[50] " Reset changes"
    set descriptions[51] " Default animations"
    set descriptions[52] " Hyde-cli version"
    set descriptions[53] " Theme selector"
    set descriptions[54] " Disable blur"
    set descriptions[55] " search engine to use"
    set descriptions[56] " [*] Use variety package to manage wallpapers"
    set descriptions[57] " Select sddm theme"
    set descriptions[58] " Clear some storage by deleting old backups"
    set descriptions[59] " [*]Set waybar size"
    set descriptions[60] " Reload cursors"
    set descriptions[61] "  Add custom file"
    set descriptions[62] "  Drag to manually snip an area"
    set descriptions[63] " reset hyde profile"
    set descriptions[64] " Reload wallpaper cache"
    set descriptions[65] " Restores dots from a clone repository "
    set descriptions[66] " Information about Hyde and its components"
    set descriptions[68] "   Diff mismatched dotfiles"
    set descriptions[69] " Previous wallpaper"
    set descriptions[70] " Disable border angle animation"
    set descriptions[71] " Wallpaper commands"
    set descriptions[72] " Default border angle animation"
    set descriptions[73] " Useful GUI util"
    set descriptions[74] " User/Device specific scripts that might be useful"
    set descriptions[75] " Power Options"
    set descriptions[76] " [*] Show keybind hints"
    set descriptions[77] " Force rebuild cache"
    set descriptions[78] " Use rofi to select screenshot options "
    set descriptions[79] " Show Manual"
    set descriptions[80] " Fixes issues for asus devices"
    set descriptions[81] " Watches hyprland events and executes actions"
    set descriptions[82] " Overwrite current dots from the preferred user dir "
    set descriptions[83] "   force rebuild cached bookmark paths"
    set descriptions[84] " Default blur"
    set descriptions[85] " Restore dots"
    set descriptions[86] "  Add custom delimiter symbol (default '>')"
    set descriptions[87] " Emoji selector"
    set descriptions[88] " Sddm commands"
    set descriptions[89] " Executable utilities"
    set descriptions[90] "	options"
    set descriptions[91] " Manages Hyde's cache"
    set descriptions[92] " Interactive control file"
    set descriptions[93] " Previous theme"
    set descriptions[94] " [*] Add chaotic aur to you mirror"
    set descriptions[95] "   Pipes STDOUT to less"
    set descriptions[96] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[97] " Disable tranparency"
    set descriptions[98] "  Reinitialize screencap"
    set descriptions[99] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[100] " Inhibits idle when player status: 'Playing"
    set descriptions[101] "  Print all outputs"
    set descriptions[102] " Next theme"
    set descriptions[103] "  Display this help message"
    set descriptions[104] " Wallpaper selector"
    set descriptions[105] "   Diff preserved dotfiles"
    set descriptions[106] " Set cursor size"
    set descriptions[107] " Next wallppaer"
    set descriptions[108] " Set preavailable Hyde branch"
    set descriptions[109] " Flatpak setup for HyDE"
    set descriptions[110] " Manage users restore control list"
    set descriptions[111] " [*] Screenshot and screenrecord tool"
    set descriptions[112] "  Drag to manually snip an area to screen record it"
    set descriptions[113] " wallbash dark mode"
    set descriptions[114] " Converts chaotic aur packages to AUR"
    set descriptions[115] " Set theme"
    set descriptions[116] " Patch a theme from different repository."
    set descriptions[117] " Shell selector"
    set descriptions[118] " Hyde core Package status"
    set descriptions[119] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 35 66 37 52 3 36 22 88 89 108 91 44 92 79 29 12 71 15 73 74 82 33 75 85; set tos 25 3 4 5 6 26 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 24 2 7"
    set literal_transitions[2] "set inputs 26 42 7 50 8; set tos 28 28 27 28 33"
    set literal_transitions[3] "set inputs 118 45; set tos 28 34"
    set literal_transitions[6] "set inputs 34 96; set tos 28 31"
    set literal_transitions[7] "set inputs 99 18 13 65; set tos 28 28 28 28"
    set literal_transitions[8] "set inputs 53 102 116 93 115; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 57; set tos 28"
    set literal_transitions[10] "set inputs 100 81 111; set tos 28 28 29"
    set literal_transitions[12] "set inputs 77 64; set tos 28 28"
    set literal_transitions[13] "set inputs 117; set tos 28"
    set literal_transitions[14] "set inputs 110; set tos 28"
    set literal_transitions[17] "set inputs 14 38 58 1; set tos 28 28 28 28"
    set literal_transitions[18] "set inputs 56 104 48 107 69; set tos 32 28 28 28 28"
    set literal_transitions[19] "set inputs 60 46 106 31; set tos 28 28 28 28"
    set literal_transitions[20] "set inputs 87 78 27 47 39 76 23; set tos 28 28 37 36 28 39 38"
    set literal_transitions[21] "set inputs 80 109 94; set tos 28 28 35"
    set literal_transitions[25] "set inputs 49 59 119; set tos 28 30 28"
    set literal_transitions[27] "set inputs 11 54 70 97; set tos 28 28 28 28"
    set literal_transitions[29] "set inputs 10 112 21 41 25 98 62 101 20; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[30] "set inputs 30; set tos 28"
    set literal_transitions[31] "set inputs 24 28 113 9; set tos 28 28 28 28"
    set literal_transitions[32] "set inputs 63; set tos 28"
    set literal_transitions[33] "set inputs 5 51 72 84; set tos 28 28 28 28"
    set literal_transitions[34] "set inputs 105 95 68; set tos 28 28 28"
    set literal_transitions[35] "set inputs 2 19 114; set tos 28 28 28"
    set literal_transitions[36] "set inputs 43 55; set tos 28 28"
    set literal_transitions[37] "set inputs 90 32 40 4; set tos 28 28 28 28"
    set literal_transitions[38] "set inputs 83 17; set tos 28 28"
    set literal_transitions[39] "set inputs 6 103 16 61 86; set tos 28 28 28 28 28"
    set literal_transitions[40] "set inputs 67; set tos 28"

    set --local match_anything_transitions_from 26 11 4 15 1 16 22 5 23 24
    set --local match_anything_transitions_to 28 28 28 28 23 28 28 28 40 28

    set --local state 1
    set --local word_index 2
    while test $word_index -lt $COMP_CWORD
        set --local -- word $COMP_WORDS[$word_index]

        if set --query literal_transitions[$state] && test -n $literal_transitions[$state]
            set --local --erase inputs
            set --local --erase tos
            eval $literal_transitions[$state]

            if contains -- $word $literals
                set --local literal_matched 0
                for literal_id in (seq 1 (count $literals))
                    if test $literals[$literal_id] = $word
                        set --local index (contains --index -- $literal_id $inputs)
                        set state $tos[$index]
                        set word_index (math $word_index + 1)
                        set literal_matched 1
                        break
                    end
                end
                if test $literal_matched -ne 0
                    continue
                end
            end
        end

        if set --query match_anything_transitions_from[$state] && test -n $match_anything_transitions_from[$state]
            set --local index (contains --index -- $state $match_anything_transitions_from)
            set state $match_anything_transitions_to[$index]
            set word_index (math $word_index + 1)
            continue
        end

        return 1
    end

    if set --query literal_transitions[$state] && test -n $literal_transitions[$state]
        set --local --erase inputs
        set --local --erase tos
        eval $literal_transitions[$state]
        for literal_id in $inputs
            if test -n $descriptions[$literal_id]
                printf '%s\t%s\n' $literals[$literal_id] $descriptions[$literal_id]
            else
                printf '%s\n' $literals[$literal_id]
            end
        end
    end


    return 0
end

complete --command Hyde --no-files --arguments "(_Hyde)"
