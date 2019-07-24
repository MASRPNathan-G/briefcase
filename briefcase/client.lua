----Script Made By Nathan G.
----Please Do Not Reupload Without My Permission
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1,  10 ) then ----change 10 to another key (Default Page Up) Controls Can Be Found At: https://docs.fivem.net/game-references/controls/
            giveWeapon("weapon_briefcase") ----Steel Briefcase
            DisplayNotification("Picked Up Briefcase")
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1,  11 ) then ----change 11 to another key (Default Page Down) Controls Can Be Found At: https://docs.fivem.net/game-references/controls/
            giveWeapon("weapon_briefcase_02") ----Leather Brifcase
            DisplayNotification("Picked Up Briefcase")
        end
    end
end)

---------------------------------------------------------------------------------------------------
------------DO NOT EDIT-----------------DO NOT EDIT---------------DO NOT EDIT----------------------
---------------------------------------------------------------------------------------------------

function giveWeapon(gunhash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(gunhash), 1, false, true)
    SetPedArmour(GetPlayerPed(-1), 100)
end

function DisplayNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end