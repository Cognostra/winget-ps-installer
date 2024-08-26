Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Complete app categories and apps
$apps = @{
    "Productivity" = @(
        @{ Label = "Microsoft Office"; Winget = "Microsoft.Office" },
        @{ Label = "Notion"; Winget = "Notion.Notion" },
        @{ Label = "Trello"; Winget = "Trello.Trello" },
        @{ Label = "Todoist"; Winget = "Doist.Todoist" },
        @{ Label = "Evernote"; Winget = "Evernote.Evernote" },
        @{ Label = "Adobe Acrobat Reader"; Winget = "Adobe.Acrobat.Reader.64-bit" },
        @{ Label = "LibreOffice"; Winget = "TheDocumentFoundation.LibreOffice" },
        @{ Label = "Microsoft OneNote"; Winget = "Microsoft.OneNote" },
        @{ Label = "Google Drive"; Winget = "Google.Drive" },
        @{ Label = "Slack"; Winget = "SlackTechnologies.Slack" },
        @{ Label = "Microsoft To Do"; Winget = "Microsoft.ToDo" },
        @{ Label = "Zoho"; Winget = "Zoho.Zoho" }
    )
    "Web Browsers" = @(
        @{ Label = "Google Chrome"; Winget = "Google.Chrome" },
        @{ Label = "Mozilla Firefox"; Winget = "Mozilla.Firefox" },
        @{ Label = "Microsoft Edge"; Winget = "Microsoft.Edge" },
        @{ Label = "Brave"; Winget = "Brave.Brave" },
        @{ Label = "Opera"; Winget = "Opera.Opera" },
        @{ Label = "Vivaldi"; Winget = "Vivaldi.Vivaldi" }
    )
    "Development Tools" = @(
        @{ Label = "Visual Studio Code"; Winget = "Microsoft.VisualStudioCode" },
        @{ Label = "Git"; Winget = "Git.Git" },
        @{ Label = "Node.js"; Winget = "OpenJS.Nodejs.LTS" },
        @{ Label = "Python"; Winget = "Python.Python.3" },
        @{ Label = "Docker"; Winget = "Docker.DockerDesktop" },
        @{ Label = "Postman"; Winget = "Postman.Postman" },
        @{ Label = "MySQL Workbench"; Winget = "Oracle.MySQLWorkbench" },
        @{ Label = "JetBrains IntelliJ IDEA"; Winget = "JetBrains.IntelliJIDEA.Community" },
        @{ Label = "VS Code Insiders"; Winget = "Microsoft.VisualStudioCode.Insiders" },
        @{ Label = "Android Studio"; Winget = "Google.AndroidStudio" },
        @{ Label = "Ruby"; Winget = "Ruby.Ruby" },
        @{ Label = "PHP"; Winget = "PHP.PHP" },
        @{ Label = "Visual Studio Community"; Winget = "Microsoft.VisualStudioCommunity" }
    )
    "Communication" = @(
        @{ Label = "Zoom"; Winget = "Zoom.Zoom" },
        @{ Label = "Discord"; Winget = "Discord.Discord" },
        @{ Label = "Microsoft Teams"; Winget = "Microsoft.Teams" },
        @{ Label = "Skype"; Winget = "Microsoft.Skype" },
        @{ Label = "Telegram"; Winget = "Telegram.TelegramDesktop" },
        @{ Label = "WhatsApp"; Winget = "WhatsApp.WhatsApp" },
        @{ Label = "Viber"; Winget = "Viber.Viber" },
        @{ Label = "Signal"; Winget = "OpenWhisperSystems.Signal" },
        @{ Label = "WeChat"; Winget = "Tencent.WeChat" }
    )
    "Media" = @(
        @{ Label = "VLC Media Player"; Winget = "VideoLAN.VLC" },
        @{ Label = "Spotify"; Winget = "Spotify.Spotify" },
        @{ Label = "Audacity"; Winget = "Audacity.Audacity" },
        @{ Label = "iTunes"; Winget = "Apple.iTunes" },
        @{ Label = "PotPlayer"; Winget = "Kakao.PotPlayer" },
        @{ Label = "Kodi"; Winget = "XBMCFoundation.Kodi" },
        @{ Label = "GIMP"; Winget = "GIMP.GIMP" },
        @{ Label = "OBS Studio"; Winget = "OBSProject.OBSStudio" },
        @{ Label = "Shotcut"; Winget = "Meltytech.Shotcut" },
        @{ Label = "HandBrake"; Winget = "HandBrake.HandBrake" },
        @{ Label = "Adobe Premiere Pro"; Winget = "Adobe.Premiere.Pro" },
        @{ Label = "Adobe After Effects"; Winget = "Adobe.AfterEffects" },
        @{ Label = "Lightworks"; Winget = "Lightworks.Lightworks" }
    )
    "Security" = @(
        @{ Label = "Malwarebytes"; Winget = "Malwarebytes.Malwarebytes" },
        @{ Label = "Bitdefender"; Winget = "Bitdefender.Bitdefender" },
        @{ Label = "Avast"; Winget = "Avast.AvastFreeAntivirus" },
        @{ Label = "NordVPN"; Winget = "NordVPN.NordVPN" },
        @{ Label = "ExpressVPN"; Winget = "ExpressVPN.ExpressVPN" },
        @{ Label = "1Password"; Winget = "1Password.1Password" },
        @{ Label = "LastPass"; Winget = "LastPass.LastPass" },
        @{ Label = "Dashlane"; Winget = "Dashlane.Dashlane" },
        @{ Label = "Kaspersky"; Winget = "Kaspersky.Kaspersky" },
        @{ Label = "CCleaner"; Winget = "Piriform.CCleaner" },
        @{ Label = "Spybot Search & Destroy"; Winget = "SaferNetworking.Spybot" }
    )
    "System Utilities" = @(
        @{ Label = "WinRAR"; Winget = "WinRAR.WinRAR" },
        @{ Label = "7-Zip"; Winget = "7zip.7zip" },
        @{ Label = "PowerToys"; Winget = "Microsoft.PowerToys" },
        @{ Label = "TreeSize Free"; Winget = "JAMSoftware.TreeSizeFree" },
        @{ Label = "Sysinternals Suite"; Winget = "Microsoft.SysinternalsSuite" },
        @{ Label = "CPU-Z"; Winget = "CPUID.CPU-Z" },
        @{ Label = "HWMonitor"; Winget = "CPUID.HWMonitor" },
        @{ Label = "Rufus"; Winget = "Rufus.Rufus" },
        @{ Label = "CrystalDiskInfo"; Winget = "CrystalDewWorld.CrystalDiskInfo" },
        @{ Label = "Process Explorer"; Winget = "Microsoft.ProcessExplorer" }
    )
    "File Management" = @(
        @{ Label = "Total Commander"; Winget = "Ghisler.TotalCommander" },
        @{ Label = "FreeFileSync"; Winget = "FreeFileSync.FreeFileSync" },
        @{ Label = "Everything"; Winget = "Voidtools.Everything" },
        @{ Label = "TeraCopy"; Winget = "CodeSector.TeraCopy" },
        @{ Label = "Droplr"; Winget = "Droplr.Droplr" },
        @{ Label = "OneCommander"; Winget = "OneCommander.OneCommander" },
        @{ Label = "Q-Dir"; Winget = "Q-Dir.Q-Dir" },
        @{ Label = "Directory Opus"; Winget = "GPSoftware.DirectoryOpus" },
        @{ Label = "XYplorer"; Winget = "XYplorer.XYplorer" },
        @{ Label = "WinMerge"; Winget = "WinMerge.WinMerge" }
    )
    "Gaming" = @(
        @{ Label = "Steam"; Winget = "Valve.Steam" },
        @{ Label = "GeForce Experience"; Winget = "NVIDIA.GeForceExperience" },
        @{ Label = "Xbox"; Winget = "Microsoft.XboxApp" },
        @{ Label = "Origin"; Winget = "ElectronicArts.Origin" },
        @{ Label = "GOG Galaxy"; Winget = "GOG.Galaxy" },
        @{ Label = "Battle.net"; Winget = "Blizzard.BattleNet" },
        @{ Label = "Epic Games Launcher"; Winget = "EpicGames.EpicGamesLauncher" },
        @{ Label = "Playnite"; Winget = "Playnite.Playnite" },
        @{ Label = "Twitch"; Winget = "Amazon.Twitch" },
        @{ Label = "Rocket League"; Winget = "Psyonix.RocketLeague" },
        @{ Label = "League of Legends"; Winget = "RiotGames.LeagueOfLegends" },
        @{ Label = "Fortnite"; Winget = "EpicGames.Fortnite" }
    )
    "Design & Creativity" = @(
        @{ Label = "Adobe Photoshop"; Winget = "Adobe.Photoshop" },
        @{ Label = "Adobe Illustrator"; Winget = "Adobe.Illustrator" },
        @{ Label = "Blender"; Winget = "Blender.Foundation" },
        @{ Label = "Inkscape"; Winget = "Inkscape.Inkscape" },
        @{ Label = "SketchUp"; Winget = "Trimble.SketchUpPro" },
        @{ Label = "Figma"; Winget = "Figma.Figma" },
        @{ Label = "Affinity Designer"; Winget = "Serif.AffinityDesigner" },
        @{ Label = "Krita"; Winget = "Krita.Krita" },
        @{ Label = "Canva"; Winget = "Canva.CanvaDesktop" },
        @{ Label = "DaVinci Resolve"; Winget = "BlackmagicDesign.DaVinciResolve" },
        @{ Label = "CorelDRAW"; Winget = "Corel.CorelDRAW" },
        @{ Label = "Paint.NET"; Winget = "PaintDotNet.PaintDotNet" }
    )
}

# Create the Form
$form = New-Object System.Windows.Forms.Form
$form.Text = "App Installer"
$form.Size = New-Object System.Drawing.Size(800, 600)
$form.StartPosition = 'CenterScreen'
$form.BackColor = [System.Drawing.Color]::FromArgb(30, 30, 30)  # Dark background
$form.ForeColor = [System.Drawing.Color]::White  # White text

# Create a TabControl for better organization
$tabControl = New-Object System.Windows.Forms.TabControl
$tabControl.Dock = 'Fill'

# Create tabs for each category
foreach ($category in $apps.Keys) {
    $tabPage = New-Object System.Windows.Forms.TabPage
    $tabPage.Text = $category
    $tabPage.BackColor = [System.Drawing.Color]::FromArgb(40, 40, 40)

    # Create a FlowLayoutPanel for the applications in this category
    $flowLayout = New-Object System.Windows.Forms.FlowLayoutPanel
    $flowLayout.Dock = 'Fill'
    $flowLayout.AutoScroll = $true
    $flowLayout.BackColor = $tabPage.BackColor

    # Create a CheckedListBox for the applications in this category
    $checkedListBox = New-Object System.Windows.Forms.CheckedListBox
    $checkedListBox.Size = New-Object System.Drawing.Size(760, 400)
    $checkedListBox.BackColor = [System.Drawing.Color]::FromArgb(50, 50, 50)  # Darker background for list
    $checkedListBox.ForeColor = [System.Drawing.Color]::White  # White text
    $checkedListBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None

    foreach ($app in $apps[$category]) {
        $checkedListBox.Items.Add($app.Label, $false) | Out-Null
    }

    $flowLayout.Controls.Add($checkedListBox)
    $tabPage.Controls.Add($flowLayout)
    $tabControl.TabPages.Add($tabPage)
}

# Create a Panel for buttons
$buttonPanel = New-Object System.Windows.Forms.Panel
$buttonPanel.Dock = 'Bottom'
$buttonPanel.Height = 50
$buttonPanel.BackColor = [System.Drawing.Color]::FromArgb(40, 40, 40)

# Create Install Button
$installButton = New-Object System.Windows.Forms.Button
$installButton.Text = "Install"
$installButton.Size = New-Object System.Drawing.Size(100, 30)
$installButton.BackColor = [System.Drawing.Color]::FromArgb(70, 70, 70)
$installButton.ForeColor = [System.Drawing.Color]::White
$installButton.Location = New-Object System.Drawing.Point(10, 10)

# Create Uninstall Button
$uninstallButton = New-Object System.Windows.Forms.Button
$uninstallButton.Text = "Uninstall"
$uninstallButton.Size = New-Object System.Drawing.Size(100, 30)
$uninstallButton.BackColor = [System.Drawing.Color]::FromArgb(70, 70, 70)
$uninstallButton.ForeColor = [System.Drawing.Color]::White
$uninstallButton.Location = New-Object System.Drawing.Point(120, 10)

# Create Save Button
$saveButton = New-Object System.Windows.Forms.Button
$saveButton.Text = "Save"
$saveButton.Size = New-Object System.Drawing.Size(100, 30)
$saveButton.BackColor = [System.Drawing.Color]::FromArgb(70, 70, 70)
$saveButton.ForeColor = [System.Drawing.Color]::White
$saveButton.Location = New-Object System.Drawing.Point(230, 10)

# Create Load Button
$loadButton = New-Object System.Windows.Forms.Button
$loadButton.Text = "Load"
$loadButton.Size = New-Object System.Drawing.Size(100, 30)
$loadButton.BackColor = [System.Drawing.Color]::FromArgb(70, 70, 70)
$loadButton.ForeColor = [System.Drawing.Color]::White
$loadButton.Location = New-Object System.Drawing.Point(340, 10)

# Create Status Label
$statusLabel = New-Object System.Windows.Forms.Label
$statusLabel.Text = "Status: Ready"
$statusLabel.AutoSize = $true
$statusLabel.ForeColor = [System.Drawing.Color]::White
$statusLabel.Location = New-Object System.Drawing.Point(450, 10)

# Add buttons and status label to the button panel
$buttonPanel.Controls.Add($installButton)
$buttonPanel.Controls.Add($uninstallButton)
$buttonPanel.Controls.Add($saveButton)
$buttonPanel.Controls.Add($loadButton)
$buttonPanel.Controls.Add($statusLabel)

# Add controls to the form
$form.Controls.Add($tabControl)
$form.Controls.Add($buttonPanel)

# Install button click event
$installButton.Add_Click({
    $statusLabel.Text = "Status: Installing..."
    $selectedApps = $tabControl.SelectedTab.Controls[0].Controls[0].CheckedItems
    foreach ($item in $selectedApps) {
        $app = $apps[$tabControl.SelectedTab.Text] | Where-Object { $_.Label -eq $item.ToString() }
        if ($app) {
            Start-Process "winget" -ArgumentList "install", $app.Winget -NoNewWindow -Wait
        }
    }
    $statusLabel.Text = "Status: Installation Complete"
})

# Uninstall button click event
$uninstallButton.Add_Click({
    $statusLabel.Text = "Status: Uninstalling..."
    $selectedApps = $tabControl.SelectedTab.Controls[0].Controls[0].CheckedItems
    foreach ($item in $selectedApps) {
        $app = $apps[$tabControl.SelectedTab.Text] | Where-Object { $_.Label -eq $item.ToString() }
        if ($app) {
            Start-Process "winget" -ArgumentList "uninstall", $app.Winget -NoNewWindow -Wait
        }
    }
    $statusLabel.Text = "Status: Uninstallation Complete"
})

# Save button click event
$saveButton.Add_Click({
    $selectedApps = $tabControl.SelectedTab.Controls[0].Controls[0].CheckedItems | ForEach-Object { $_.ToString() }
    $selectedApps | Out-File -FilePath "installed_apps.txt"
    $statusLabel.Text = "Status: Saved selected apps"
})

# Load button click event
$loadButton.Add_Click({
    if (Test-Path "installed_apps.txt") {
        $loadedApps = Get-Content -Path "installed_apps.txt"
        foreach ($tabPage in $tabControl.TabPages) {
            $checkedListBox = $tabPage.Controls[0].Controls[0]
            for ($i = 0; $i -lt $checkedListBox.Items.Count; $i++) {
                $checkedListBox.SetItemChecked($i, $loadedApps -contains $checkedListBox.Items[$i].ToString())
            }
        }
        $statusLabel.Text = "Status: Loaded saved apps"
    } else {
        $statusLabel.Text = "Status: No saved apps found"
    }
})

# Show the form
$form.ShowDialog() | Out-Null