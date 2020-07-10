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
$david.speakasync("All my love with you") | Out-Null
$zira.speakasync("All my love with you") | Out-Null
$david.speak("No one else will do")

$zira.speak("And your eyes")
$david.speak("Your eyes, your eyes")
$david.speakasync("They tell me how much you care") | Out-Null
$zira.speakasync("They tell me how much you care") | Out-Null
$david.speakasync("Ooh yes, you will always be") | Out-Null
$zira.speakasync("Ooh yes, you will always be") | Out-Null
$david.speakasync("My") | Out-Null
$zira.speakasync("My") | Out-Null
$david.speakasync("Endless love") | Out-Null
$zira.speakasync("Endless love") | Out-Null

$david.speakasync("Two hearts") | Out-Null
$zira.speakasync("Two hearts") | Out-Null
$david.speakasync("Two hearts that beat as one") | Out-Null
$zira.speakasync("Two hearts that beat as one") | Out-Null
$david.speakasync("Our lives have just begun") | Out-Null
$zira.speakasync("Our lives have just begun") | Out-Null

$zira.speak("Forever")
$david.speak("Oh")
$david.speakasync("I'll hold you close in my arms") | Out-Null
$zira.speakasync("I'll hold you close in my arms") | Out-Null
$david.speakasync("I can't resist your charms") | Out-Null
$zira.speakasync("I can't resist your charms") | Out-Null

$zira.speak("And love")
$david.speak("Oh, love")
$david.speakasync("I'll be a fool") | Out-Null
$zira.speakasync("I'll be a fool") | Out-Null
$david.speakasync("For you") | Out-Null
$zira.speakasync("For you") | Out-Null
$david.speakasync("I'm sure") | Out-Null
$zira.speakasync("I'm sure") | Out-Null
$zira.speak("You know I don't mind")
$david.speak("Oh, you know I don't mind")

$david.speakasync("Cause you") | Out-Null
$zira.speakasync("Cause you") | Out-Null
$david.speakasync("You mean the world to me") | Out-Null
$zira.speakasync("You mean the world to me") | Out-Null
$david.speakasync("Oh") | Out-Null
$zira.speakasync("Oh") | Out-Null
$zira.speak("I know")
$david.speak("I know")
$david.speakasync("I've found in you") | Out-Null
$zira.speakasync("I've found in you") | Out-Null
$david.speakasync("My") | Out-Null
$zira.speakasync("My") | Out-Null
$david.speakasync("Endless love") | Out-Null
$zira.speakasync("Endless love") | Out-Null

$david.speakasync("Oh, and love") | Out-Null
$zira.speakasync("Oh, and love") | Out-Null
$david.speak("Oh, love")
$david.speakasync("I'll be that fool") | Out-Null
$zira.speakasync("I'll be that fool") | Out-Null
$david.speakasync("For you") | Out-Null
$zira.speakasync("For you") | Out-Null
$david.speakasync("I'm sure") | Out-Null
$zira.speakasync("I'm sure") | Out-Null
$zira.speak("You know I don't mind")
$david.speak("Oh you know")
$david.speakasync("I don't mind") | Out-Null
$zira.speakasync("I don't mind") | Out-Null

$david.speakasync("And, yes") | Out-Null
$zira.speakasync("And, yes") | Out-Null
$david.speakasync("You'll be the only one") | Out-Null
$zira.speakasync("You'll be the only one") | Out-Null
$david.speakasync("Cause no one can deny") | Out-Null
$zira.speakasync("Cause no one can deny") | Out-Null
$david.speakasync("This love I have inside") | Out-Null
$zira.speakasync("This love I have inside") | Out-Null
$david.speakasync("And I'll give it all to you") | Out-Null
$zira.speakasync("And I'll give it all to you") | Out-Null
$david.speak("My love")
$zira.speak("My love, my love")
$david.speakasync("My") | Out-Null
$zira.speakasync("My") | Out-Null
$david.speakasync("Endless love") | Out-Null
$zira.speakasync("Endless love") | Out-Null
