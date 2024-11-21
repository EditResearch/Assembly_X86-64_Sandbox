# Zásobník
Zásobník je datová struktura, která pracuje podle principu LIFO (Last In, First Out), což znamená, že poslední vložená položka je první, která se odebere. Procesorový zásobník je část operační paměti vyhrazená pro ukládání dočasných dat, jako jsou návratové adresy funkcí, lokální proměnné nebo argumenty funkcí. 

U procesorů x86_64 je zásobník spravován registrami:
* RSP (Stack Pointer): Ukazuje na vrchol zásobníku (adresu poslední vložené položky).
* RBP (Base Pointer): Používá se často jako pevný ukazatel na základ funkce (stack frame).

Zavoláním instrukce push zásobník roste směrem dolů (od vyšších adres k nižším) u procesorů x86_64. 

Zásobník je klíčovou součástí správy paměti při volání funkcí. Používá se pro:
* Ukládání návratových adres - Když je zavolána funkce, procesor uloží adresu následující instrukce (návratová adresa) na zásobník
* Lokální proměnné - Funkce si může na zásobníku vyhradit místo pro své lokální proměnné.
* Parametry funkcí - Pokud funkce příjímá více než 4 argumenty, první čtyři se uloží do registrů a zbývající se ukládají na zásobník.
* Dočasné uložení registrů - Funkce často ukládá hodnoty registrů na zásobník, pokud je potřebuje je přepsat a následně obnovit.

instrukce call je instrucke, která automaticky provede vložení adresy následující instrukce do zásobníku a provede skok na adresu volané funkce. instrukce ret, je instrukce, která obnoví návratovou adresu uloženou na vrcholu zásobníku a skočí na ni.

# Zásobníkový rámec
Zásobníkový rámec je struktura v paměti, která se používá k uchovávání informací potřebných pro volání funkce. Rámec se vytváří na zásobníku při každém volání funkce a obsahuje vše, co je nutné pro správnou činnost funkce, včetně parametrů, návratových adres, lokálních proměnných a dalších stavových informací. Rámce jednotlivých volaných funkcí (volané vnořeně) jsou od sebe vzájemně oddělené, což umožňuje správné fungování rekurzivních volání a poskytuje potřebné informace pro ladění. 

Zásobníkový rámec obvykle obsahuje následující položky (toto může být specifické pro různé procesory a ABI):
* Návratová adresa (return address): Když funkce volá jinou funkci, procesor uloží do zásobníku adresu, na kterou se má po vykonání funkce vrátit (následující instrukce po volání funkce). Tato adresa je uložená přímo pod návratem z volané funkce (pokud není použita optimalizace, jako je frame pointer omission). Tento bod je obvykle uložený na vrcholu zásobníku a je první položkou, kterou odstraní instrukce ret.
* Uložení registrů (saved registers): Během volání funkce mohou být některé registry (např. RBP, RBX, R12 až R15) změněny, a proto je nutné uložit jejich hodnoty do zásobníku, aby byly obnoveny po návratu z funkce. Toto platí pro volání funkcí, které mění tyto registry. Uložení registru je obvykle součástí prologu funkce (část kódu na začátku funkce), kde jsou registre uloženy, a epilog (část kódu na konci funkce), kde jsou obnoveny.
* Parametry (arguments): Parametry předané funkci mohou být uloženy na zásobníku, pokud je jejich počet větší než počet registrů, které jsou určeny pro předání parametrů. V případě x86-64 je to obvykle podle konvence prvních x parametrů, které jsou předány v registrech a další parametry jsou uloženy na zásobníku.
* Lokální proměnné (local variables): Lokální proměnné (proměnné definované přímo uvnitř funkce) jsou umístěny na zásobníku pod návratovou adresou a uloženými registry. Pro přístup k těmto proměnným se obvykle používá frame pointer (RBP), protože ukazuje na začátek rámce. 
* Základní ukazatel rámce (Frame Pointer - RBP): RBP je specializovaný registr, který ukazuje na začátek rámce, což umožňuje snadné adresování lokálních proměnných a parametrů. Když funkce volá další funkci, RBP se uloží na zásobník a nový rámec je vytvořen s novým hodnotám RBP, což poskytuje pevné ukotvení pro strukturu rámce, takže je možné odkazovat na parametry a lokální proměnné pomocí konstantního offsetu.

## Jak zásobníkový rámec funguje
Když se volá funkce, procesor automaticky provede několik kroků, které jsou součástí epilogu funkce:
* Uložení návratové adresy na zásobník (toto je adresa kódu, na kterou se vrátí po dokončení funkce). To automaticky zajístí instrukce call
* Uložení hodnoty RBP (pokud je to nutné) na zásobník pro zachování předchozího rámce. Aby po po opuštění funkce bylo možné obnovit adresu kde se nachází začátek zásobníkového rámce funkce, která zavolala tuto vnořenou funkci. 
* Nastavení RBP na aktuální hodnotu RSP, čímž se stanoví začátek nového rámce. Protože RSP ukazuje na konec zásobníkového rámce předchozí volané funkce.
* Rezervování místa pro lokální proměnné (dekrementace RSP). Provede se součet bytů tvořící lokální proměnné a o tuto hodnotu se posune ukazatel na vrchol zásobníku, čímž se alokuje místo pro lokální proměnné. použití instrukcí push totiž posouvá hodnotu registru RSP a tím by se přepisovaly uložené hodnoty lokálních proměnných
* Uloží se stav všech registrů se kterými daná funkce pracuje aby nedošlo k přepsání hodnoty, kterou si tam uložila volající funkce

Při dokončení funkce a návratu zpět na místo, kde byla funkce volána, se provádí epilog:
* Obnovení RBP: Na začátku epilogu je RBP obnoven ze zásobníku, čímž se vrací zpět do předchozího rámce. 
* Obnovení RSP: RSP je obnoven na hodnotu, která byla před voláním funkce, což znamená, že prostor pro lokální proměnné je uvolněn.
* Obnovení hodnot všech registrů se kterými daná funkce pracovala, aby nebyla narušena práce volající funkce
* Návratová adresa je vyzvednuta ze zásobníku a program pokračuje na tuto adresu. To se provádí automaticky pomocí instrukce ret

Odkaz na danou lokální proměnnou pak funguje tak, že se offsetově odkazuje na adresu začátku zásobníkového rámce

# Konvence volání funkcí
Konvence volání funkcí je jednotný mechanismus jak volat funkce a předávat vstupní parametry a návratové hodnoty. Funkce definované na úrovni assembleru si mohou předávat vstupní a výstupní parametry v podstatě přes libovnolné registry, stačí pouze správně vložit hodnoty do příslušných registrů a provést volání funkce pomocí instrukce call. Aby bylo možné používat tyto funkce z vyšších programvoacích jazyků a zajisttit tak jejich kompatibilitu, je nutné vytvořit jednotný způsob jak tyto parametry předávat. 

Parametry předávané do funkce pomocí zásobníku jsou součástí zásobníkového rámce volané funkce. Po návratu z funkce se ale v místě volání musí ukazatel na vrchol zásobníku uvést do původní hodnoty aby se nenarušil zásobníkový rámec aktuálně vykonávané funkce

## Shadow space
Na systémech MS Windows je v případě předávání více než 4 vstupních parametrů nutné vytvořit tzv Shadow space, který rezervuje minimálně 32 bytů paměti na zásobníku pro korektní uložení vstupních parametrů. To se používá pro účely ladění, protože v ladícím programu se zobrazuje pouze obsah zásobníku a předávané parametry již nikoli. Z tohoto důvodu je vytvořena kopie v zásobníku pro účely debugu.


