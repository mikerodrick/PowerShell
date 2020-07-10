# Endless Love
# Performed by Microsoft David and Microsoft Zira

# The SpeechSynthesizer class is native to the Windows .NET framework, so this will only work in Windows PowerShell.

# Define assembly path
$assemblyPath = 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\WPF\System.Speech.dll'

# Add assembly dll
Add-Type -Path $assemblyPath

# Create new objects
$david = New-Object System.Speech.Synthesis.SpeechSynthesizer
$zira = New-Object System.Speech.Synthesis.SpeechSynthesizer

# Change voice to Zira
$zira.SelectVoice('Microsoft Zira Desktop')

# Endless Love
$david.Speak("My love")
$david.Speak("There's only you in my life")
$david.Speak("The only thing that's bright")

$zira.Speak("My first love")
$zira.Speak("You're every breath that I take")
$zira.Speak("You're every step I make")

$david.speak("And I")
$zira.speak("iei")
$david.speak("I want to share")
$david.speakasync("All my love with you")
$zira.speakasync("All my love with you")
$david.speak("No one else will do")

$zira.speak("And your eyes")
$david.speak("Your eyes, your eyes")
$david.speakasync("They tell me how much you care")
$zira.speakasync("They tell me how much you care")
$david.speakasync("Ooh yes, you will always be")
$zira.speakasync("Ooh yes, you will always be")
$david.speakasync("My")
$zira.speakasync("My")
$david.speakasync("Endless love")
$zira.speakasync("Endless love")

$david.speakasync("Two hearts")
$zira.speakasync("Two hearts")
$david.speakasync("Two hearts that beat as one")
$zira.speakasync("Two hearts that beat as one")
$david.speakasync("Our lives have just begun")
$zira.speakasync("Our lives have just begun")

$zira.speak("Forever")
$david.speak("Oh")
$david.speakasync("I'll hold you close in my arms")
$zira.speakasync("I'll hold you close in my arms")
$david.speakasync("I can't resist your charms")
$zira.speakasync("I can't resist your charms")

$zira.speak("And love")
$david.speak("Oh, love")
$david.speakasync("I'll be a fool")
$zira.speakasync("I'll be a fool")
$david.speakasync("For you")
$zira.speakasync("For you")
$david.speakasync("I'm sure")
$zira.speakasync("I'm sure")
$zira.speak("You know I don't mind")
$david.speak("Oh, you know I don't mind")

$david.speakasync("Cause you")
$zira.speakasync("Cause you")
$david.speakasync("You mean the world to me")
$zira.speakasync("You mean the world to me")
$david.speakasync("Oh")
$zira.speakasync("Oh")
$zira.speak("I know")
$david.speak("I know")
$david.speakasync("I've found in you")
$zira.speakasync("I've found in you")
$david.speakasync("My")
$zira.speakasync("My")
$david.speakasync("Endless love")
$zira.speakasync("Endless love")

$david.speakasync("Oh, and love")
$zira.speakasync("Oh, and love")
$david.speak("Oh, love")
$david.speakasync("I'll be that fool")
$zira.speakasync("I'll be that fool")
$david.speakasync("For you")
$zira.speakasync("For you")
$david.speakasync("I'm sure")
$zira.speakasync("I'm sure")
$zira.speak("You know I don't mind")
$david.speak("Oh you know")
$david.speakasync("I don't mind")
$zira.speakasync("I don't mind")

$david.speakasync("And, yes")
$zira.speakasync("And, yes")
$david.speakasync("You'll be the only one")
$zira.speakasync("You'll be the only one")
$david.speakasync("Cause no one can deny")
$zira.speakasync("Cause no one can deny")
$david.speakasync("This love I have inside")
$zira.speakasync("This love I have inside")
$david.speakasync("And I'll give it all to you")
$zira.speakasync("And I'll give it all to you")
$david.speak("My love")
$zira.speak("My love, my love")
$david.speakasync("My")
$zira.speakasync("My")
$david.speakasync("Endless love")
$zira.speakasync("Endless love")
