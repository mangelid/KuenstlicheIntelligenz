clear all; %l�scht die vorherigen Variablen

tic %tic toc -> misst die Zeit die das Programm f�r die Durchf�hrung braucht
 
for i=1:200 %Wiederholung f�r jede Seite mit Bildern
    dateiname = ['BOOK-0824731-0', num2str(i,'%03d'),'.jpg']; %Name der Originaldatei
    RGB = imread(dateiname); %liest das Bild in Originalfarbe 
    gray = rgb2gray(RGB); %wandelt das Bild in grau um (Werte: 0, weis - 255, schwarz.)
    bw = im2bw(gray,0.94); %macht das Bild schwarzweis. 0.94-> wie dunkel das Bild sein soll. 
                           %(Werte: 0, weis - 1, schwarz.)
    wb = ~bw; %kehrt Farben um -> Ergebnis: schwarzes Bild mit wei�en Objekten
    
       
    Objekte = regionprops(wb,'Image'); %findet ein wei�es Objekt im schwarzen Bild, entwickelt ein Bild und speichert es
    count2=0; %f�r Benennung der Bilder *
    for k = 1 : length(Objekte) %length= Anzahl der Objekte, die regionprops findet
        Bildobjekte = Objekte(k).Image; %erstes Bild beim ersten Durchlauf, zweites beim zweiten usw.
        Groesse = size(Bildobjekte); %Gr��e des Arrays hat Groesse1xGroesse2 ->H�he und Breite
        Groesse1 = Groesse(1); 
        Groesse2 = Groesse(2); 
        if Groesse1>= 200 & Groesse1<= 2000 & Groesse2 >= 150 %wenn Bilder gr��er oder kleiner sind
            skaliertesBild = imresize(Bildobjekte,[200 200]); %-> resize, damit alle Bilder die gleiche Gr��e haben
            skaliertesBild = ~skaliertesBild; %Farben wieder umwandeln
            count2 = count2 + 1; %f�r Benennung der Bilder * +1 beim n�chsten 
            NeuerName = ['test', num2str(i,'%03d'),num2str(count2,'%03d'),'.png']; %name.png, weil es einfacher ist schwarzwei�e Bilder zu speichern als jpeg
            imwrite(skaliertesBild,NeuerName) %speichern
        end
    end
end

toc