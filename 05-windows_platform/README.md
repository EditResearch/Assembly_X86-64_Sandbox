# Linkování
V případě, že je třeba využít funkce ze standardní knihovny a windows API, je provést linkování knihoven kernel32 a msvcrt

# Ukončovací konvence na platformě windows
Při výstupu z programu na konci funkce _start je nutné předat informaci operačnímu systému, že má daný proces ukončit. To se provede voláním funkce ExitProcess z knihovny msvcrt (Windows API). Tato funkce zajistí korektní ukončení běžícího procesu. Návratová hodnota procesu pak předává registry pro standardní vstup parametrů, tedy RCX/ECX

# Konvence volání funkcí na MS Windows
Na platformě Windows je použita konvence předávání vstupních parametrů přes registry: 
* RCX - první paarametr
* RDX - druhý parametr
* R8 - třetí parametr
* R9 - čtvrtý parametr

Pokud je do funkce vkládáno více než 5 parametrů, jsou předávány přes zásobník pomocí instrukcí push a pop


