mkdir Laboratory
cd Laboratory
mkdir Group
cd Group
mkdir "Name(fio)"
cd "Name(fio)"
mkdir "Command Line"
mkdir "Hidden folder"
mkdir "Not hidden folder"
attrib +h "Hidden folder"
xcopy /?
xcopy /? > "Not hidden folder\copyhelp.txt"
xcopy "Not hidden folder\copyhelp.txt" "Hidden folder\copied_copyhelp.txt"
