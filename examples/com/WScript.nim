import winim/com

var obj: com
obj = CreateObject("WScript.Network")
echo obj.userDomain
echo obj.computerName
echo obj.userName

obj = CreateObject("WScript.Shell")
echo obj.specialFolders("Desktop")

for i in obj.specialFolders:
  echo i
