# kuenstliche-Intelligenz

Binäre Klassifizierung von Mensch und Tier mit Matlab.

Zu Matlab:
Matlab ist eine einfache Programmiersprache, die viele Möglichkeiten bietet. Matlab hat integrierte Computer Vision und neuronale Netzwerk Tools und mit einem Rechtsklick kann man sich zu jeder Funktion Hilfe suchen. Zu dem sind die Ergebnisse durch die GUI zu jeder Zeit visualisierbar, anders als bei Python und ähnlichen Programmiersprachen. 

Zum Projekt:
Wir haben es uns zur Aufgabe gemacht, ein Programm zu erstellen, welches die veranstaltungsbegleitenden Materialien zu schwarzweiß skalierten Bildern umformt und schließlich erkennt ob es sich um einen Menschen oder ein Tier handelt. Nachdem das gelang, haben wir dazu eine App erstellt, die sowohl auf Mac Os und Windows läuft. Die Inhalte des ganzen Repositorys müssen runtergeladen werden. Am besten sollte man in das Repository gehn, auf "clone or download" klicken und "download zip" auswählen. Der Zip Ordner soll dann entpackt werden.

Code des Programms (im Ordner "ErsterEntwurf_mitMatlab"):
1) Bilder_skalieren.m:
In dem Programm "Bilder_skalieren.m" werden zuerst die Originalbilder aus dem runtergeladenen Ordner entnommen und in schwarzweiß umgewangelt. Dann erfolgt mittels "regionprops" die Objekterkennung und jedes Objekt wird als eigenes Bild gespeichert. Dann werden die Bilder alle in die gleiche Größe umgeformt (200x200) und gespeichert. Die Enddateien haben wir in die zwei ordner "human" und "animal" sortiert. 

2) image_recognition.m:
Das Programm "image_recognition.m" nimmt 100 Bilder aus jedem Ordner, wendet die Layer an und versucht durch das "Training" selber Gemeinsamkeiten und Unterschiede zwischen den Bildern zu erkennen. Durch den Befehl "programm = trainNetwork(imdsTrain,layers,options);" nimmt das Programm die gegebenen Bilder, Layer und Optionen und führt das Training durch. Nach dem Training öffnet sich ein Diagramm, welches die Übereinstimmung der Ergebnisse schildert. Diese sind momentan bei 90%. 

Anleitung zum Programm:
Als erstes öffnet man die zwei Programme in Matlab (Lizenz für Studierende der Uni Köln). Die Programme kann man starten, indem man auf den grünen "Play-Button" klickt. 
Beim Starten von "Bilder_skalieren.m" erscheinen auf dem Bildschirm die Ergebnisse, also die skalierten Bilder.
Beim Starten von "image_recognition.m" sieht man im Command Window das Ergebnis der "labelCount = countEachLabel(imds)". Dieses zählt, wie viele Bilder Menschen und wie viele Bilder Tiere enthalten. Zusätzlich öffnet sich das zuvor erwähnte Diagramm.
Um das Programm zu testen, kann man folgende Befehle einzelnd ins Command Window eingeben:
                          
                          cd (+ Pfad zum Ordner test2)  
                          test = imread('test059002.png');   ->Beispiel Bild
                          test2 = uint8(test);  
                          label = classify(programm,test2) 
                          
Wichtig dafür ist es zuvor das Programm "image_recognition" verwendet zu haben!!! 
Im Command Window wird dann unter "categorical" das Ergebnis angezeigt.

App "Human or Animal?":

Um die App "Human or Animal" zu erstellen haben wir das Tool "appdesigner" von Matlab benutzt, womit man GUI Apps erstellt. Im "Design View" haben wir das Layout der App erstellt. Den Rest haben wir im "Code View" erstellt. Im Code der App "MenschOderTierCode.mlapp", der sich auch im Ordner "ErsterEntwurf_mitMatlab" befindet, wurden die Änderungen, die wir im "Design View" erstellt haben, übernommen. Im Hauptteil des Codes haben wir dann das Konzept der App, nämlich eine Interaktion mit dem User durch Dialogfenster programmiert. Das Ergebnis ist, dass der User drei Optionen hat: 
Option 1: die durch das Programm skalierten Bilder, die in der App integriert sind zu benutzen. (diese Bilder wurden nicht für das Training verwendet, sind daher unbekannt).
Option 2: aus dem runtergeladenen Github Ordner mit den skalierten Bildern ein Bild aussuchen.
Option 3: ein RAW-Bild aus dem Seminar aussuchen und ein Objekt auswählen.

Anleitung zur App (Windows):
Um unsere App zu benutzen, muss "MyAppinstaller_web.exe" runtergeladen und ausgeführt werden. Dann muss man den Anweisungen folgen. 

Anleitung zur App (Mac):
Um unsere App zu benutzen, muss "MyAppinstaller_webMac.zip" runtergeladen, (entpackt) und "MyAppinstaller_web.app" ausgeführt werden. Dann muss man den Anweisungen folgen.
