function Get-MirroredVolume {
    [cmdletbinding()]
    param ()
    $MirrorList = "list volume" | diskpart | Where-Object{$_ -match "mirror"}
    $MirrorCount = $MirrorList.count
    for ($d = 0; $d -lt $MirrorCount; $d++)
    {
        $MirrorLetter = $MirrorList[$d].substring(15,1)
        $MirrorLabel = $MirrorList[$d].substring(19,8).trim()
        $MirrorStatus = $MirrorList[$d].substring(60,17).trim()
        [PSCustomObject]@{
            Letter = $MirrorLetter
            Label = $MirrorLabel
            Status = $MirrorStatus
        }
    }
}

function Get-UnhealthyMirror {
    [cmdletbinding()]
    param ()
    Get-MirroredVolume | Where-Object{$_.Status -ne "Healthy"}
}

function New-MirrorStatusToast {
    [cmdletbinding()]
    param()
    $UnhealthyMirrors = Get-UnhealthyMirror
    if ($UnhealthyMirrors.count -eq 0) {
        New-BurntToastNotification -Text 'Mirror Status', "All mirror volumes are healthy" -AppLogo C:\Users\miker\OneDrive\Pictures\hdd.png
    } else {
        $UnhealthyMirrors | ForEach-Object {
        $MirrorStatusMessage = $_.Letter + ":\" + $_.Label + " current status is " + $_.Status
        New-BurntToastNotification -Text 'Mirror Warning', $MirrorStatusMessage -AppLogo C:\Users\miker\OneDrive\Pictures\hdd.png
        }
    }
}
