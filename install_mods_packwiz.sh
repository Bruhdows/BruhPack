#!/usr/bin/env bash
set -u

# Generated from the uploaded mod list.
# Run from inside an initialized packwiz directory, e.g.:
#   packwiz init
#   bash install_mods_packwiz.sh

FAILED=()

install_modrinth() {
  local name="$1"
  local project_id="$2"
  echo "==> [Modrinth] $name ($project_id)"
  if ! packwiz modrinth add --project-id "$project_id" -y; then
    echo "FAILED: $name"
    FAILED+=("Modrinth: $name ($project_id)")
  fi
}

install_curseforge() {
  local name="$1"
  local addon_id="$2"
  echo "==> [CurseForge] $name ($addon_id)"
  if ! packwiz curseforge add --addon-id "$addon_id" -y; then
    echo "FAILED: $name"
    FAILED+=("CurseForge: $name ($addon_id)")
  fi
}

# Modrinth projects
install_modrinth AE2WTLib pNabrMMw
install_modrinth Almanac Gi02250Z
install_modrinth AmbientSounds fM515JnW
install_modrinth AppleSkin EsAfCjCV
install_modrinth 'Applied Energistics 2' XxWD5pD3
install_modrinth 'Applied Mekanistics' IiATswDj
install_modrinth 'Aquaculture 2' Vl1uNAuy
install_modrinth 'Aquaculture Delight' U9GJqWrI
install_modrinth Artifacts P0Mu4wcQ
install_modrinth Athena b1ZV3DIJ
install_modrinth AttributeFix lOOpEntO
install_modrinth Balm MBAkmtvl
install_modrinth 'Better Advancements' Q2OqKxDG
install_modrinth BetterF3 8shC1gFX
install_modrinth Bookshelf uy4Cnpcm
install_modrinth 'Chat Heads' Wb5oqrBJ
install_modrinth 'Chefs Delight' pvcsfne4
install_modrinth Chipped BAscRYKm
install_modrinth 'Cloth Config v15 API' 9s6osm5g
install_modrinth Clumps Wnxd13zP
install_modrinth 'CodeChicken Lib' 2gq0ALnz
install_modrinth Collective e0M1UDsY
install_modrinth Comforts SaCpeal4
install_modrinth CommonCapabilities oFXrCkDI
install_modrinth 'Construction Sticks' ooyjDLZt
install_modrinth Continuity 1IjD5062
install_modrinth Controlling xv94TkTM
install_modrinth 'Crafting On A Stick' Tg5fXO1x
install_modrinth 'Crafting Tweaks' DMu0oBKf
install_modrinth Create LNytGWDc
install_modrinth 'Create Aeronautics' oWaK0Q19
install_modrinth 'Create Big Cannons' GWp4jCJj
install_modrinth 'Create Crafts & Additions' kU1G12Nn
install_modrinth 'Create Deco' sMvUb4Rb
install_modrinth 'Create JEI Compat' 1fkSpqmV
install_modrinth 'Create Slice & Dice' GmjmRQ0A
install_modrinth 'Create: Bells & Whistles' gJ5afkVv
install_modrinth 'Create: Central Kitchen' btq68HMO
install_modrinth 'Create: Connected' Vg5TIO6d
install_modrinth 'Create: Copycats+' UT2M39wf
install_modrinth 'Create: Dragons Plus' dzb1a5WV
install_modrinth 'Create: Enchantment Industry' JWGBpFUP
install_modrinth 'Create: Steam '"'"'n'"'"' Rails 1.21.1' L3Jv0QZI
install_modrinth CreativeCore OsZiaDHq
install_modrinth 'Cucumber Library' Rw1NrDzF
install_modrinth 'Curios API' vvuO3ImH
install_modrinth 'Cyclops Core' Z9DM0LJ4
install_modrinth 'Dynamic FPS' LQ3K71Q1
install_modrinth 'Easy Piglins' l6n94pax
install_modrinth 'Easy Villagers' Kaov2qgi
install_modrinth 'End'"'"'s Delight' yHN0njMr
install_modrinth EnderStorage BbrHg80P
install_modrinth 'Entity Model Features' 4I1XuqiY
install_modrinth 'Entity Texture Features' BVzZfTc1
install_modrinth EntityCulling NNAgCjsB
install_modrinth 'Euphoria Patcher' 4H6sumDB
install_modrinth 'Expanded Delight' e9V6wFcR
install_modrinth Exposure hB899VmG
install_modrinth 'Exposure Catalog' PWcQ3kcp
install_modrinth 'Exposure Polaroid' WEWiqYkW
install_modrinth ExtendedAE JiOqfoFM
install_modrinth 'Farmer'"'"'s Delight' R2OftAxM
install_modrinth 'Ferrite Core' uXXizFIs
install_modrinth 'Forgified Fabric API' Aqlf1Shp
install_modrinth 'Fzzy Config' hYykXjDp
install_modrinth GeOre Xw6zG9hl
install_modrinth Glodium UhW5uCKw
install_modrinth GuideME Ck4E7v7R
install_modrinth 'Hardcore Revival' HqKoXaXz
install_modrinth ImmediatelyFast 5ZwdcRci
install_modrinth IntegratedCrafting qwpACdla
install_modrinth IntegratedDynamics yYzdQHJI
install_modrinth IntegratedTerminals HmLJoQ1K
install_modrinth IntegratedTunnels Etqy1Omb
install_modrinth Iris YL57xq9U
install_modrinth 'Iron Furnaces' yPlaLxD1
install_modrinth Jade nvQzSEkH
install_modrinth 'Jade Addons' xuDOzCLy
install_modrinth 'Just Enough Items' u6dRKJwZ
install_modrinth 'Just Enough Professions (JEP)' kB56GtWA
install_modrinth 'Just Enough Resources' uEfK2CXF
install_modrinth 'Just Hammers' edU0NbZZ
install_modrinth 'Kotlin for Forge' ordsPcFz
install_modrinth 'L_Ender'"'"'s Cataclysm 1.21.1' 46KJle7n
install_modrinth LambDynamicLights yBW8D80W
install_modrinth 'Let Me Despawn' vE2FN5qn
install_modrinth Lithium gvQqBUqZ
install_modrinth Lootr EltpO5cN
install_modrinth 'ME Requester' E6BFl96N
install_modrinth 'Macaw'"'"'s Bridges' GURcjz8O
install_modrinth 'Macaw'"'"'s Doors' kNxa8z3e
install_modrinth 'Macaw'"'"'s Fences and Walls' GmwLse2I
install_modrinth 'Macaw'"'"'s Furniture' dtWC90iB
install_modrinth 'Macaw'"'"'s Holidays' rH20L2Lp
install_modrinth 'Macaw'"'"'s Lights and Lamps' w4an97C2
install_modrinth 'Macaw'"'"'s Paintings' okE6QVAY
install_modrinth 'Macaw'"'"'s Paths and Pavings' VRLhWB91
install_modrinth 'Macaw'"'"'s Roofs' B8jaH3P1
install_modrinth 'Macaw'"'"'s Stairs and Balconies' iP3wH1ha
install_modrinth 'Macaw'"'"'s Trapdoors' n2fvCDlM
install_modrinth 'Macaw'"'"'s Windows' C7I0BCni
install_modrinth McJtyLib 1Zu0uTEE
install_modrinth Mekanism Ce6I4WUE
install_modrinth 'Mekanism: Additions' a6F3uASn
install_modrinth 'Mekanism: Generators' OFVYKsAk
install_modrinth 'Mekanism: Tools' tqQpq1lt
install_modrinth ModernFix nmDcB62a
install_modrinth 'Moonlight Lib' twkfQtEc
install_modrinth 'More Overlays Updated' Thy5Pqut
install_modrinth 'Mouse Tweaks' aC3cM3Vq
install_modrinth 'Mystical Agradditions' pl0jGXIx
install_modrinth 'Mystical Agriculture' C95ReXie
install_modrinth NetherPortalFix nPZr02ET
install_modrinth 'No Chat Reports' qQyHxfxd
install_modrinth 'Ocean'"'"'s Delight' DGiq4ZSW
install_modrinth OctoLib RH2KUdKJ
install_modrinth PacketFixer c7m1mi73
install_modrinth 'Pickle Tweaks' J868sgbE
install_modrinth Pipez iRmWy6ga
install_modrinth Powah KZO4S4DO
install_modrinth PrickleMC aaRl8GiW
install_modrinth RFToolsBase hIO8IsD8
install_modrinth RFToolsBuilder e0IclJLr
install_modrinth RFToolsUtility 7n3HbHSE
install_modrinth 'Reese'"'"'s Sodium Options' Bh37bMuy
install_modrinth Relics OCJRPujW
install_modrinth 'Resourceful Lib' G1hIVOrD
install_modrinth 'Ritchie'"'"'s Projectile Library' B3pb093D
install_modrinth Sable T9PomCSv
install_modrinth Searchables fuuu3xnx
install_modrinth ShulkerBoxTooltip 2M01OLQq
install_modrinth 'Sinytra Connector' u58R1TMW
install_modrinth Sodium AANobbMI
install_modrinth 'Sodium Extra' PtjYWJkn
install_modrinth 'Sophisticated Backpacks' TyCTlI4b
install_modrinth 'Sophisticated Backpacks Create Integration' s85zLEDe
install_modrinth 'Sophisticated Core' nmoqTijg
install_modrinth 'Sophisticated JEI Index' u7Rbf90L
install_modrinth 'Sophisticated Storage' hMlaZH8f
install_modrinth 'Sophisticated Storage Create Integration' MJ0hdevs
install_modrinth 'Sophisticated Storage In Motion' 6vtFbyaJ
install_modrinth SophisticatedSorter 2LPywrDb
install_modrinth 'Sound Physics Remastered' qyVF9oeo
install_modrinth 'Stack Refill' mQWkB9ON
install_modrinth 'Storage Drawers' guitPqEi
install_modrinth Supplementaries fFEIiSDQ
install_modrinth 'Tom'"'"'s Simple Storage Mod' XZNI4Cpy
install_modrinth 'WI Zoom' o7DitHWP
install_modrinth WaterFrames eBzFuVTM
install_modrinth WaterMedia G922NeHS
install_modrinth 'WaterMedia YT Plugin' P0w3IrnX
install_modrinth 'WaterMedia: Binaries' 4997XcoK
install_modrinth WaterVision dGGbEGoV
install_modrinth Waystones LOpKHB2A
install_modrinth 'When Dungeons Arise' 8DfbfASn
install_modrinth 'Xaero'"'"'s Minimap' 1bokaNcj
install_modrinth 'Xaero'"'"'s World Map' NcUtCpym
install_modrinth '[Let'"'"'s Do] Vinery' 1DWmBJVA
install_modrinth libIPN onSQdWhM
install_modrinth lionfishapi FoVacERa
install_modrinth reliquified_artifacts GnU07giL

# CurseForge fallback / CurseForge-only projects
install_curseforge 'AE2 JEI Integration' 1074338
install_curseforge 'AE2 MEGA Things' 1150075
install_curseforge 'AE2 Things' 609977
install_curseforge 'Advanced AE' 1084104
install_curseforge 'All The Leaks' 1091339
install_curseforge Architectury 419699
install_curseforge 'Building Gadgets 2' 298187
install_curseforge 'FTB Chunks' 314906
install_curseforge 'FTB Library' 404465
install_curseforge 'FTB Quests' 289412
install_curseforge 'FTB Teams' 404468
install_curseforge 'FTB Ultimine' 386134
install_curseforge 'FTB XMod Compat' 889915
install_curseforge 'Fast Suite' 475117
install_curseforge 'Fast Workbench' 288885
install_curseforge FastFurnace 299540
install_curseforge 'Flux Networks' 248020
install_curseforge 'GeckoLib 4' 388172
install_curseforge 'Hostile Neural Networks' 552574
install_curseforge 'Just Dire Things' 1002348
install_curseforge 'MEGA Cells' 622112
install_curseforge Placebo 283644
install_curseforge Polymorph 388800

# Local/non-index entry from the source list:
# archive (archive.zip) - copy/import this manually if it contains overrides/configs/resources.

packwiz refresh

echo
if [ ${#FAILED[@]} -eq 0 ]; then
  echo "All indexed mods installed successfully."
else
  echo "Failed installs:"
  printf ' - %s\n' "${FAILED[@]}"
  exit 1
fi
