
Set objShell = CreateObject("Shell.Application")
strZipFile = "c:\Users\linga\Downloads\Plastic-Detection-Model-master\Plastic-Detection-Model-master\training_dataset.zip"
strDest = "c:\Users\linga\Downloads\Plastic-Detection-Model-master\Plastic-Detection-Model-master\"
Set objSource = objShell.NameSpace(strZipFile)
Set objDestination = objShell.NameSpace(strDest)
If objSource Is Nothing Then
    WScript.Echo "Error: Zip file not found or invalid: " & strZipFile
    WScript.Quit
End If
If objDestination Is Nothing Then
    Set fso = CreateObject("Scripting.FileSystemObject")
    fso.CreateFolder(strDest)
    Set objDestination = objShell.NameSpace(strDest)
End If
objDestination.CopyHere objSource.Items, 16
WScript.Echo "Unzip executed successfully"
