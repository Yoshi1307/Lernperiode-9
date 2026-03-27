# Lernperiode-9

## 20.2.26

Weil ich im letzten Modul etwas aus der Kategorie Games (Godot) ausgewählt hatte, sollte ich dieses Mal etwas mit Datenbanken machen. Die 3 Technologien, die ich mir angeschaut habe, waren SQLite, PostgreSQL und SQLAlchemy. Ich habe mich dann schlussendlich für SQLite entschieden, weil ich davon schonmal gehört habe und es selber verwenden möchte. Zuerst habe ich mir die Version für die Konsole heruntergeladen und die Basics probiert. Als Nächstes habe ich die Version mit GUI heruntergeladen und da auch etwas herumprobiert. Die GUI-Version gefiel mir aber besser, da es für mich einfacher ist, wenn es selbsterklärend ist, und ich kein Tutorial dafür brauche. Um aber mein Spiel in Godot mit einer Datenbank zu verbinden, musste ich lange suchen, bis ich etwas nicht allzu Kompliziertes fand. Ich musste mir in einer Add-on-Bibliothek ein Add-on herunterladen und arbeite gerade an diesem Tutorial, das mir zeigt, wie ich SQLite mit Godot verwende. https://www.youtube.com/watch?v=j-BRiTrw_F0

## 27.2.26

- [x] Durchs Tutorial lernen wie ich Tabellen über Godot erstellen kann 
- [x] Durchs Tutorial lernen wie ich Daten in die Tabelle hinzufügen kann
- [x] Durchs Tutorial lernen wie ich Daten in der Tabelle löschen kann
- [x] Durchs Tutorial lernen wie ich Daten in der Tabelle bearbeiten kann

Heute habe ich das Tutorial fertig durchgearbeitet, das ich letztes Mal begonnen habe. Zuerst wurde gezeigt, wie man eine Tabelle erstellen kann, und danach, wie man Daten per Knopfdruck darin speichern kann. Als Nächstes habe ich gelernt, wie man bestimmte Daten aus der Datenbank auslesen und ins Spiel einfügen kann. Danach, wie man Daten in der Datenbank bearbeiten kann. Als Nächstes wurde noch das Löschen von Daten gezeigt. Zuletzt habe ich noch gelernt, wie ich Bilder in der Datenbank speichern kann und sie auch anzeigen lassen kann.

## 6.3.26

- [ ] Im eigenen Spiel einen Timer einfügen, der die Zeit fürs Level stoppt, und ein Ziel bauen
- [X] Ein Feld zum Namen-Reinschreiben hinzufügen, das den Namen in der Datenbank speichert
- [ ] Machen, dass die gelaufene Zeit in der Datenbank beim dazugehörigen Namen gespeichert wird
- [ ] Machen, dass, falls die gelaufene Zeit schneller war, sie upgedatet wird

Heute wollte ich als Erstes den Timer erstellen. Ich habe sehr lange nach Tutorials gesucht und probierte es anhand von ihnen, auch wenn sie nicht genau mit dem übereinstimmten, was ich wollte, weil es kein besseres Tutorial gab. Ich hatte verschiedene Arten von Timern, aber keiner machte das, was ich wollte, und ich wusste nicht, wie ich das verändern sollte, damit es funktioniert. Ich bin dann einfach zum Teil mit der Datenbank übergegangen und habe ein Startmenü mit den Knöpfen erstellt, die die Datenbank erstellen und den Namen speichern. Jedoch wird er noch nicht angezeigt und ich habe noch nicht herausgefunden, wie das geht.

## 13.3.26
- [x] Menü Szene an den Anfang des Spiels packen, damit man sich zuerst "Anmelden" muss
- [ ] Im eigenen Spiel einen Timer einfügen, der die Zeit fürs Level stoppt, und ein Ziel bauen
- [ ] Machen, dass die gelaufene Zeit in der Datenbank beim dazugehörigen Namen gespeichert wird
- [ ] Machen, dass, falls die gelaufene Zeit schneller war, sie upgedatet wird

Ich habe heute damit begonnen, die Menüszene an den Beginn des Spiels zu packen, und wenn man sich dort angemeldet hat, kommt man ins Spiel. Dies war einfacher als gedacht. Danach habe ich ein Ziel erstellt, das, wenn man es betritt, etwas in der Datenbank passieren lässt. Weil ich einen Timer geplant hatte, habe ich wieder lange versucht, einen Timer für das Level zu erstellen, konnte aber auf kein gescheites Ergebnis kommen und habe die Idee verworfen. Ich habe danach einfach eine Art Punktesystem erstellt, dass, wenn man ins Ziel kommt, dem Spieler 1 Punkt gutschreibt. Ich weiss noch nicht wieso, aber Punkt wird momentan in einer anderen Datenbank gespeichert als der Rest. Das Spiel ist wieso auch immer jetzt wieder unscharf.

## 20.3.26
- [x] Machen, dass, wenn man ins Ziel kommt, der Punkt in der Datenbank beim dazugehörigen Namen gespeichert wird
- [x] Machen, dass man nur 1-mal den gleichen Namen haben kann
- [x] Wenn man 2 mal ins Ziel kommt, geht der Punktestand hoch
- [x] Das Spiel wieder scharf machen

Heute habe ich zuerst den Fehler mit der 2. Datenbank behoben. Es war eigentlich ein dummer Fehler und ich habe einfach den falschen Pfad angegeben. Mithilfe eines SQL-Querys habe ich gemacht, dass ein Name nur 1-mal in der Datenbank ist, und die Daten zum ersten Nutzer mit diesem Namen hinzugefügt werden. Der Punktestand geht jetzt auch hoch, wenn man in mehreren Läufen ins Ziel kommt. In den Einstellungen habe ich das Spiel wieder scharf gemacht, dafür ist das Menü etwas unschärfer.

## 27.3.26
- [ ] Letzter Versuch, einen Timer zu erstellen
- [ ] Den Score in der Datenbank mit der Zeit vom Timer ersetzen
- [ ] Zeit updatet sich, wenn sie besser als zuvor ist
- [ ] Rangliste der Zeiten erstellen

Ich habe wieder versucht einen Timer zu erstellen und habe es nicht geschafft. Nach meinem Versuch habe ich das Spiel noch etwas schöner gemacht und den Hintergrund verändert. Dem Ziel habe ich jetzt auch eine Textur gegeben, nicht genau was ich wollte, aber besser als zu beginn.
