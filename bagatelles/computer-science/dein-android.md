# Dein Android-Smartphone 

*Johannes Siedersleben, Bad Aibling, September 2026*

Es gibt Google-Freunde und Google-Hasser, es gibt Sicherheitsfanatiker, es gibt andere, die das Thema Sicherheit lockerer sehen, und jeder würde seinen eigenen Leitfaden schreiben. Dieser hier ist Google-freundlich und beschreibt einen einfachen, komfortablen Weg im Umgang mit Android-Geräten (Smartphone, Tablet). Wer sich danach richtet, macht nichts falsch, aber die absolute Sicherheit gibt es nicht.

Datenschutz ist auch sehr wichtig, kommt aber nach der Sicherheit. Das Thema begegnet uns bei {ref}`Google (2) <android-2>`, bei den {ref}`Cookies (8) <android-8>` und in den Anhängen {ref}`A4 <android-a4>` und {ref}`A5 <android-a5>`. 

Die Anhänge {ref}`A1 <android-a1>` bis {ref}`A5 <android-a5>` sind gedacht als Ergänzung, sie sind nicht Teil des Leitfadens.

(android-1)=
## 1 Was kann passieren?
**Viren**: Du weißt oder vermutest, dass dein Gerät infiziert ist. Das ist kein Beinbruch. Setze das Gerät auf die Werkseinstellungen zurück und melde dich wieder bei Google an. Die Installation deiner Apps läuft fast von alleine; eine verdächtige App solltest du natürlich ausschließen. Bei den Banking-Apps ist etwas mehr zu tun.

**Katastrophe**: Jemand gelangt mit deinen Zugangsdaten an eines deiner Konten (Bank, Amazon, E-Mail, …). Das darf nie passieren. Wenn es doch passiert, brennt die Hütte. Kontaktiere den Anbieter oder die Bank, sperre das Konto und ändere die Zugangsdaten von einem anderen, vertrauenswürdigen Gerät aus.

**Betrug**: Jemand entlockt dir deine Zugangsdaten oder überredet dich, Geld an ein obskures Konto zu überweisen. Das ist mit großem Abstand die größte Gefahr.

(android-2)=
## 2 Google oder nicht Google?
Wer Google nicht mag, sollte kein Android-Gerät kaufen. Als Android-Benutzer muss ich Google vertrauen, ob ich will oder nicht. Ist das schlimm? Richtig ist: Google verdient mit Werbung viel Geld. Richtig ist aber auch:

- Google erklärt ausdrücklich, persönliche Daten nicht zu verkaufen.
- Google unterliegt in Europa der DSGVO.
- Google investiert enorme Mittel in die Sicherheit seiner Infrastruktur.
- Die Google-Produkte sind gut aufeinander abgestimmt.

Verdient Google mein Vertrauen? Das muss jeder selbst entscheiden, aber wer ein Android-Gerät besitzt, hat das bereits getan. Die Haltung „Android ja, aber möglichst wenig Google" ist anstrengend.

Empfehlung: Verwende Chrome, Google Passwortmanager und Google Play. Verlasse die Google-Box nur, wenn du weißt, was du tust. Es gibt viele alternative Produkte, und viele funktionieren gut. Aber jedes neue Produkt erhöht die Komplexität, kann Reibungsverluste verursachen, birgt neue Fehlerquellen, fordert viele Rechte, und du hast einen neuen Provider im Boot, dem du genauso vertrauen musst wie Google. Und oft kosten sie Geld. Es geht immer um den richtigen Mittelweg zwischen Sicherheit und Komfort. Du musst abwägen, ob Reibungsverluste oder Abstriche am Komfort den Gewinn an Sicherheit (echt oder vermeintlich) rechtfertigen.

Beispiele: 

(1) Der Browser *Brave* blockiert Werbung und Tracker, aber es gibt Reibungsverluste. 

(2) Das Mailsystem Protonmail bietet E2E-Verschlüsselung, aber nur, wenn Sender und Empfänger Proton verwenden. 

(3) Das Betriebssystem GrapheneOS ist eine extrem sichere Android-Alternative (läuft nur auf Pixel), ist aber für normale Benutzer unbrauchbar, weil vieles nicht oder nur schlecht funktioniert.

(android-3)=
## 3 Update oder nicht Update?
Update, und zwar sofort. 

Updates schließen Sicherheitslücken – das ist der wirksamste Schutz überhaupt.

Empfehlung: Prüfe das Datum des letzten Systemupdates auf deinem Gerät (Einstellungen → Sicherheit und Datenschutz → Sicherheitsupdate). Wenn dieses Datum länger als sechs Monate zurückliegt, ist ein Update fällig. Wenn das nicht möglich ist, solltest du prüfen (lassen), ob dein Gerät noch sicher ist.

(android-4)=
## 4 Passkeys, 2FA oder Passwörter?
Alle großen Betreiber (z. B. Google, Apple, Amazon) bieten mittlerweile Passkeys an. Passkeys verwenden ein Public/Private-Key-Verfahren und werden per Fingerabdruck, Gesicht oder Geräte-PIN freigegeben; es gibt kein Passwort. Zwei-Faktor-Authentifizierung (2FA) ist der Standard bei Banking-Apps. Empfehlungen:

- Verwende Passkey, falls angeboten, sonst ein kryptisches Passwort möglichst mit 2FA.
- Speichere Passkeys und Passwörter am besten im Google Passwortmanager.
- Verwende für jeden Dienst ein anderes, kryptisches Passwort.
- Wenn du zwischen 2FA-Varianten wählen kannst: Eine Authenticator-App oder ein Passkey sind sicherer als Codes per SMS.

Vorteile: Hoher Komfort ohne Kompromisse bei der Sicherheit.

(android-5)=
## 5 Welche Apps?
Jede App, die du installierst, ist ein Risiko, und du vertraust dem Anbieter, ob du willst oder nicht. Bei Apps aus dem Google Play Store ist das Risiko größer als null, aber minimal.

Empfehlung: Installiere nur, was du wirklich brauchst, und gib der App nur die Rechte, die plausibel sind. Eine Taschenlampen-App braucht keinen Zugriff auf deine Kontakte.

(android-6)=
## 6 Was ist Phishing?
Ein fauler Link schickt dich fast immer auf eine Phishing-Seite, also eine Seite, die so aussieht wie z. B. deine Banking-App. Die Zugangsdaten, die du dort eingibst, landen beim Betrüger. Das ist die größte Gefahr überhaupt, und manche Phishing-Seiten sind nahezu perfekt.

Die schlechte Botschaft: Die einzigen Gegenmaßnahmen sind Aufmerksamkeit, Vorsicht, Misstrauen. Prüfe den Absender, heißt es, na klar, aber auch Profis haben sich schon getäuscht. Rechtschreibfehler, krudes Deutsch oder ein Absender aus Usbekistan sind Alarmsignale, aber die Betrüger lernen dazu. 
Ein Alarmsignal ist auch die Aufforderung, eine App direkt zu laden, am Play Store vorbei. Empfehlung: Lösche die Nachricht mit dem faulen Link beim geringsten Zweifel (siehe auch die {ref}`Alarmglocken 10 <android-10>`).

Es gibt keinen Software-Schutz.

Eine zweite Gattung von faulen Links installiert Schadsoftware. Für normale Benutzer ist diese Bedrohung theoretisch. Behörden und Geheimdienste verwenden solche Methoden bei der Verfolgung von Kriminellen (gut) und unliebsamen Journalisten oder Politikern (weniger gut). Mehr dazu in {ref}`Anhang A2 <android-a2>`.

(android-7)=
## 7 Welcher Virenschutz?
Keiner, solange du im Google Play Store bleibst.

Android bringt mehrere Schutzmechanismen mit, unter anderem App-Sandboxing, Berechtigungen und Google Play Protect. Ein Virenscanner macht im Wesentlichen dasselbe wie Google Play Protect, und mit minimaler Wahrscheinlichkeit findet er etwas, das Google übersehen hat. Aber er kostet Geld, verlangt weitreichende Kontrolle über dein Gerät, bringt neue Fehlerquellen – und es gibt einen weiteren Anbieter neben Google, der deine Geheimnisse kennt.

Sinnvoll ist ein Virenscanner dann, wenn du Apps außerhalb des Play Stores installierst, aber das solltest du vermeiden. Wenn es nicht anders geht, ist *Bitdefender* eine gute Wahl.

(android-8)=
## 8 Welche Cookies?
Ein Cookie ist ein kleiner Datensatz, den eine Webseite im Browser speichert. Ein Cookie ist kein Programm und kann dein Gerät nicht infizieren. Wenn du Cookies akzeptierst, bekommst du personalisierte Werbung – passieren kann nichts. Wenn dich das stört, kannst du jederzeit alle Cookies auf deinem Gerät löschen (Browserdaten löschen → Cookies löschen). Cookies gehören zum Thema Datenschutz; sie beeinflussen die Sicherheit nicht.

(android-9)=
## 9 Wie finde ich zurück?
Wenn du dein Gerät verlierst oder neu installieren willst, z. B. nach einem Virenbefall, brauchst du die Zugangsdaten zu deinem Google-Konto – auf Papier oder auf einem anderen Gerät. Ohne sie kommst du nicht mehr an deine eigenen Daten. Bewahre außerdem die von Google angebotenen Backup-Codes sicher auf.

Noch was: Der Alptraum jedes Urlaubers ist das verlorene/kaputte Telefon. Abhilfe: ein gebrauchtes Billigtelefon im Werkszustand, das die aktuelle Android-Version unterstützt. Im Notfall wird es reaktiviert.

(android-10)=
## 10 Wann läuten die Alarmglocken?
Wenn ein unbekannter Anrufer seltsame Dinge erzählt oder wenn dich eine Nachricht mit unbekanntem Absender verunsichert. Nicht gemeint sind Fragen z. B. nach Geburtsdatum oder Adresse, wenn ein dir bekannter Support deine Identität prüft.

Nur Betrüger fragen nach Passwort, PIN, TAN- oder Bestätigungscode oder verlangen Fernzugriff auf dein Gerät. Nur Betrüger setzen dich unter Zeitdruck oder machen dir mit Katastrophennachrichten Angst.

Regel am Telefon: Auflegen. 

Regel bei einer Nachricht: Benutze niemals den Link aus der Nachricht. Schließe sie und öffne selbst die offizielle App oder Webseite des betreffenden Anbieters. Wenn wirklich etwas mit deinem Bank-, Amazon- oder Paketkonto nicht stimmt, siehst du es dort.
 
Ein E-Mail-Anbieter wie Proton ändert nichts an dieser Regel. Er schützt deine gespeicherten Mails vor dem Anbieter – nicht dich vor dem Betrüger.

(android-a1)=
## A1 Noch mehr Google?
Geht auch ohne, ist aber interessant. 

Zur Google-Box gehören *Google Drive*, *Docs*, *Sheets*, *Slides*, und natürlich *Google Calendar*, *Mail*, *Maps*, *Meet*. Google Drive ist ein Cloudspeicher mit Versionierung (z. B. 20 €/Jahr für 100 GB) und genauer Zugriffskontrolle. Der Haken: Die Daten auf Google Drive sind verschlüsselt, aber Google hat die Schlüssel und kann, z. B. nach richterlichem Beschluss, darauf zugreifen. Ist das schlimm? Zur Not kann man seine Daten auf eigene Faust verschlüsseln (z. B. mit *Cryptomator*), aber das ist anstrengend.

Google Docs, Sheets, Slides sind eine vollwertige, kostenlose, werbefreie Office Suite, die Microsoft überflüssig macht. Allerdings: Der Austausch mit Microsoft-Formaten funktioniert gut, aber es ist keine gute Idee, in einem Microsoft-Team gegen den Strom zu schwimmen.

Alle genannten Programme laufen im Prinzip in jedem Browser, am besten natürlich in Chrome.

Vorteile: Datenverlust sehr unwahrscheinlich, Versionierung (Zugriff auf die Historie jeder einzelnen Datei), Schutz vor Hacker-Angriffen, paralleles Arbeiten mehrerer Benutzer wird gut unterstützt, und meine Daten sind von jedem Gerät dieser Welt mit Internetanschluss erreichbar.

Ein interessantes Gerät ist das *Chromebook*. Das sieht aus wie ein PC, ist aber eher ein Smartphone mit Tastatur, Maus, Bildschirm und läuft auf ChromeOS. Es wird ab ungefähr 200 € angeboten und kann fast alles bis auf Dinge, die lokale Rechenleistung erfordern wie Multimedia oder Spiele. Für viele Benutzer langt das vollkommen. Und der Profi kann mit VS Code remote programmieren.


(android-a2)=
## A2 Was ist ein Trojaner?
Ein Trojaner ist ein Programm, das ohne Wissen des Besitzers auf dessen Gerät installiert wird, und dann mithört, was alles passiert. Auf Deutsch: Dein Gerät wird gehackt.

Richter können (auch in Deutschland) Staatstrojaner anordnen, Geheimdienste machen das, wenn sie einen Verdächtigen ausspionieren wollen. Zwei relativ gute Nachrichten:

- Die für Trojaner nötigen Exploit-Ketten sind extrem teuer und werden nur gegen einzelne Personen eingesetzt (z.B. Kriminelle). Für normale Benutzer spielen sie praktisch keine Rolle.
- Es gibt keinen absoluten Schutz, aber je neuer dein Gerät, desto schwerer haben es die Trojaner. Aktuelle Flaggschiffe von Google Pixel oder Samsung Galaxy S sind Beispiele für Geräte, die dem neuesten Sicherheitsstandard entsprechen.

Für normale Benutzer spielen Trojaner praktisch keine Rolle. Dass moderne Geräte so schwer angreifbar sind, 
hilft leider auch Kriminellen, sich der Strafverfolgung zu entziehen.

(android-a3)=
## A3 Was ist E2E-Verschlüsselung?

End2End-Verschlüsselung oder Zero-Knowledge-Verschlüsselung bedeutet: Nur der Client (also dein Gerät) hat den Schlüssel, der Provider hat ihn nicht (zero knowledge). Er sieht nur den verschlüsselten Text, den er nicht entschlüsseln kann. Das ist nicht Versprechen oder Vermutung sondern harte Mathematik. Konsequenz:

- Wenn du deinen Schlüssel verlierst, sind deine Daten weg, für immer und ewig.
- Deine Daten werden auf dem Client (auf deinem Gerät) entschlüsselt. Ein Trojaner auf deinem Gerät könnte sie lesen.

Beispiele für E2E-Verschlüsselung:
- Mit Chrome kannst du Verlauf, Lesezeichen und Web-Passwörter mit einer Chrome-Passphrase verschlüsseln (Einstellungen → Synchronisierung → Verschlüsselungsoptionen). Damit sieht Google deine synchronisierten Browserdaten nicht mehr. Im Rest des Google-Ökosystems (Google Drive, Google Mail) ändert sich nichts, und es wird auch nichts verschlüsselt.
- Mit dem Cryptomator kannst du verschlüsseln, was du willst (z. B. Mails, Dateien auf Google Drive). Das ist Zusatzaufwand.
- Protonmail bietet eine E2E-Verschlüsselung, aber nur wenn beide Partner Protonmail verwenden.

Richter können Betreiber wie Google unter bestimmten Voraussetzungen (Fahndung) dazu zwingen, die Daten eines Benutzers herauszugeben. Die Voraussetzungen hängen ab vom jeweiligen Land, aber im Prinzip ist das überall möglich, und bei der Verfolgung von Kriminellen auch unbedingt nötig. Aber Irrtum und Missbrauch kann man nicht ausschließen.

Wenn du E2E-Verschlüsselung wählst, sieht der Richter auf der Serverseite nur den verschlüsselten Text, und den kann niemand lesen, der Richter nicht, keine Behörde, kein Geheimdienst. Dieser Weg steht leider auch Kriminellen offen.

(android-a4)=
## A4 Was macht Google mit meinen Daten?
Wenn du keine Vorkehrungen triffst (z. B. Chrome-Passphrase, Cryptomator), sieht Google deinen Browser-Verlauf und deinen Mailverkehr. Diese Daten sind der Schatz von Google, und Google hat nicht das geringste Interesse daran, sie weiterzugeben, denn das würde das eigene Geschäftsmodell untergraben.

Das Geschäftsmodell sieht so aus (Beispiel): Ein Windelhersteller möchte junge Familien in Oberbayern mit einer eingeblendeten Werbung ansprechen. Dazu erteilt er Google den entsprechenden Auftrag. Google selektiert die Zielgruppe, und junge Familien in Oberbayern sehen für einen bestimmten Zeitraum (solange der Auftraggeber zahlt) die Windelwerbung. Der Auftraggeber bekommt die Kontaktdaten nicht.


(android-a5)=
## A5 Die Schattenseite

Der Skandal mit Facebook und Cambridge Analytica wurde im März 2018 aufgedeckt: Cambridge Analytica erhielt
Zugriff auf über 80 Millionen Facebook-Benutzer, die per Microtargeting bearbeitet wurden: Sie bekamen politische Werbung,
die genau auf ihr Profil abgestimmt war. Der tatsächliche Einfluss auf die US-Wahlen ist umstritten. 
Facebook zahlte 5 Mrd $ Strafe.

TikTok und ByteDance wurde 2024 vorgeworfen, über Jahre Daten von Kindern unter 13 ohne 
die vorgeschriebene elterliche Zustimmung gesammelt und genutzt zu haben; 
teilweise seien sogar Mechanismen vorhanden gewesen, um Altersbeschränkungen zu umgehen.

2021 tauchten große Datensätze mit LinkedIn-Informationen auf. LinkedIn betonte, dass keine privaten Daten gehackt worden seien; 
die Informationen seien vielmehr aus öffentlich sichtbaren Profilen und anderen Quellen automatisiert „gescraped“ worden.

Das sind drei Beispiele für Datenmissbrauch in ganz großem Maßstab. Sie erlauben zwei Interpretationen:

- Man bekommt Angst vor der ungeheuren Menge an krimineller Energie in den oberen Etagen mancher Unternehmen.
- Man könnte sagen: Ok, das waren Facebook und TikTok, und die anderen Großen sind nicht dabei, gehören also zu den Guten.

Die erste Interpretation ist unstrittig. Die zweite?

