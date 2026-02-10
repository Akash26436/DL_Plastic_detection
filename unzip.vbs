
Set objShell = CreateObject("Shell.Application")
Set objSource = objShell.NameSpace(Replace(WScript.ScriptFullName, "unzip.vbs", "training_dataset.zip"))
Set objDestination = objShell.NameSpace(Replace(WScript.ScriptFullName, "unzip.vbs", ""))
If objDestination Is Nothing Then
    Set fso = CreateObject("Scripting.FileSystemObject")
    fso.CreateFolder(Replace(WScript.ScriptFullName, "unzip.vbs", ""))
    Set objDestination = objShell.NameSpace(Replace(WScript.ScriptFullName, "unzip.vbs", ""))
End If
objDestination.CopyHere objSource.Items, 16
WScript.Echo "Unzip executed"
