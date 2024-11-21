# Registry procesoru x86_64

## Registry pro všeobecné použití
Procesor x86_64 má hierarchickou strukturu procesorů, které se člení na poloviční velikost:
* RAX      EAX      AX       AH                            AL
  (64bit)  (32bit)  (16bit)  (horních 8 bitů registru AX)  (Spodních 8 bitů registru AX)
Akumulátor (Accumulator Register). Používá se pro výsledky aritmetických operací, a na Windows se používá pro návratové hodnoty z funkcí.

* RBX      EBX      BX       BH                            BL
  (64bit)  (32bit)  (16bit)  (horních 8 bitů registru BX)  (Spodních 8 bitů registru BX)
Baze (Base Register). Tento registr je používán pro uchovávání základní adresy při manipulaci s paměťovými oblastmi. Není obvykle měněn během volání funkcí.

* RCX      ECX      CX       CH                            CL
  (64bit)  (32bit)  (16bit)  (horních 8 bitů registru CX)  (Spodních 8 bitů registru CX)
Počítadlo (Count Register). Používá se v smyčkách a při aritmetických operacích (např. pro operace jako multiplicative). Na platformě Windows slouží pro předávání prvního parametru při volání funkcí.


* RDX      EDX      DX       DH                            DL
  (64bit)  (32bit)  (16bit)  (horních 8 bitů registru DX)  (Spodních 8 bitů registru DX)
Data Register. Používá se pro vstupy a výstupy při aritmetických operacích (např. pro rozdělení v rámci dlouhých celočíselných operací). Na platformě Windows slouží pro předávání druhého parametru při volání funkcí.


* RSI      ESI      SI      SIL
  (64bit)  (32bit)  (16bit) (Spodních 8 bitů registru SI)
Source Index. Používá se pro adresy zdrojových dat při operacích kopírování nebo zpracování paměti.

* RDI      EDI      DI      DIL
  (64bit)  (32bit)  (16bit) (Spodních 8 bitů registru DI)
Destination Index. Používá se pro adresy cílových dat při operacích kopírování nebo zpracování paměti.


* RSP      ESP      SP      SPL
  (64bit)  (32bit)  (16bit) (Spodních 8 bitů registru SP)
Stack Pointer. Tento registr ukazuje na vrchol zásobníku (stack), což je důležitý ukazatel pro řízení volání funkcí a uložení návratových adres.


* RBP      EBP      BP      BPL
  (64bit)  (32bit)  (16bit) (Spodních 8 bitů registru SP)
Base Pointer. Tento registr ukazuje na základní adresu rámce zásobníku (stack frame) pro aktuální funkci. Používá se pro přístup k lokálním proměnným a argumentům funkcí.


* R8       R8D      R8W     R8B
  (64bit)  (32bit)  (16bit) (Spodních 8 bitů registru R8W)
Registr pro obecné použití, na platformě Windows se použítvá pro vložení třetího vstupního parametru při volání funkcí


* R9       R9D      R9W     R9B
  (64bit)  (32bit)  (16bit) (Spodních 8 bitů registru R9W)
Registr pro obecné použití, na platformě Windows se použítvá pro vložení čtvrtého vstupního parametru při volání funkcí

R10-R15 
Tyto registry již nejsou děleny na menší části. Registry, které jsou k dispozici na 64bitových systémech. Tyto registry jsou často používány pro ukládání mezivýsledků.

## Speciální registry
* RIP: Instruction Pointer. Tento registr ukazuje na adresu aktuálně vykonávané instrukce v programu. Po dokončení jedné instrukce se automaticky zvyšuje, aby ukazoval na další instrukci.
* EFLAGS/RFLAGS: Stavový registr. Tento registr obsahuje různé příznaky, které indikují výsledky aritmetických operací, například přetečení, nulu, záporný výsledek apod.

## Segmentové registry
Tyto registry byly důležité v 32bitových systémech a byly používány pro adresaci paměti podle segmentů. V moderním 64bitovém režimu (x86_64) jsou segmentové registry stále přítomny, ale jejich použití je omezeno na několik specifických operací.
* CS: Code Segment. Používá se pro adresování kódu (pro instrukce).
* DS: Data Segment. Používá se pro adresování dat.
* SS: Stack Segment. Používá se pro adresování zásobníku.
* ES, FS, GS: Další segmentové registry. Používají se pro specifické účely, například v některých systémových voláních nebo pro obsluhu vlákna.

# Funkční a systémové registry
* XMM0-XMM15: 128-bitové vektory (v SIMD operacích). Tyto registry jsou součástí SSE (Streaming SIMD Extensions) a používají se pro práci s vektorovými daty (např. pro zpracování více dat najednou).
* YMM0-YMM15: 256-bitové vektory (v AVX operacích). Tato rozšíření umožňují širší vektorové operace.
* ZMM0-ZMM31: 512-bitové vektory (v AVX-512 operacích)

# Proměnné
Globální proměnné programu, tedy proměnné viditelné v celém rozsahu programu jsou definovány v sekci .data
Celočíselné proměnné mohou být buď 
* db - 8-bitové 
* dw - 16-bitové
* bd - 32-bitové
* dq - 64-bitové

Proměnná se vytvoří: <name> <datový typ> <hodnota>

Hodnotu proměnné lze získat pomocí uzavření názvu proměnné do hranatých závorek: [<název proměnné>]. Zde je ale velký rozdíl v tom, že zda se přistupuje k proměnné ve statickém nebo dynamickém prostředí. V případě, přístupu na hodnotu proměnné je nutné přidat prefix rel: [rel <název proměnné>]
Přístup na adresu proměnné je možné jednoduchým odkázáním na jméno pojmenované proměnné


