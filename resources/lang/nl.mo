��    {      �  �   �      h
  =   i
  :   �
  |   �
  6   _  $   �  -   �  �  �  �   k  h        o  (   �     �  
   �  &   �     �  7   	  N   A     �     �  T   �  9   �     )     H     g     �     �     �  �   �  �   �  c   P  �   �  �   ?     �  \   �  r   O  ,  �  �   �  S   �  5   �  C   
  �   N  "   �       �     q   �       �        
  �   )  e   �     R     X  �   h  �   �  \   �     �       0     )   M  %   w     �     �     �     �     �     �     	   &         B      T      k      �      �   '   �      �   c   �   /   5!  �   e!  �   �!  #   �"  %   �"  �   �"  �   Q#  '   �#  R   $  I   [$  W   �$  d   �$  \   b%  �   �%  �   M&  Q   �&  �   %'  �   �'  �   �(  (  �)  �   �*  J   �+  Y   �+  \   P,  R   �,  \    -  �   ]-  !   �-     .      .     :.  @   Y.     �.  �   �.  �   �/  q   0     �0     �0     �0     �0     �0     �0  	   �0     �0     �0  6   �0  �  (1  D   �2  D   13  �   v3  3   �3  /   24  :   b4  �  �4  �   j6  o   7     �7  +   �7     �7     �7  4   �7     *8  J   D8  i   �8     �8  C  9  s   Q:  H   �:  !   ;  "   0;     S;     m;      };     �;  �   �;  �   �<  �   �=  �   >  �   �>     ~?  j   �?  }    @  i  ~@  �   �A  t   �B  I   C  V   eC  �   �C  -   lD     �D  �   �D  s   HE  *  �E    �F  (   H  �   -H  �   -I  
   �I     �I  �   �I  �   �J  e   9K     �K     �K  /   �K  (   �K  0   #L     TL     kL     }L     �L  !   �L     �L     �L  2   M     5M     RM      rM     �M     �M  ;   �M     �M  {   
N  3   �N  �   �N  �   MO  !   �O  $   P  �   DP  �   �P  5   �Q  l   �Q  P   UR  g   �R  �   S  y   �S  �   T  �   �T  \   xU  �   �U    �V    �W  W  �X  �   (Z  R   [  ^   g[  b   �[  \   )\  ^   �\  �   �\  !   �]     �]     �]  *   �]  J   ^  +   R^    ~^  �   �_  {   :`     �`  '   �`  	   �`     �`     a     	a  
   a     a     -a  >   0a     l       I   h   T      $       @      p       8       N   _          R             #   q   i      P   W      ,   	          o              "         D       1   L   7   ?   :   G   0   U       )                       .   Y   *   C          +   j       g   9   b   {       Q   (   u                   s   >   5      n           M           f          3                  /   r   [   
      ^   k      `          ;       6   %      x   c   e       -   \   K           H   B   ]       2   w   <   X       O   E   '           S   y      !       z       a   V   J      v                A   Z   &   F               =   4       m   d       t     (Note: %s higher-level shared places have also been created)  (Note: A higher-level shared place has also been created) %s and the individuals and families that reference it, including parents, siblings, spouses and children of each individual. %s and the individuals and families that reference it. ... and fall back to n parent levels A module providing support for shared places. A module supporting shared places as level 0 GEDCOM objects, on the basis of the GEDCOM-L Addendum to the GEDCOM 5.5.1 specification. Shared places may contain e.g. map coordinates, notes and media objects. The module displays this data for all matching places via the extended 'Facts and events' tab. It may also be used to manage GOV ids, in combination with the Gov4Webtrees module. A place name with comma-separated name parts will be resolved to a hierarchy of shared places. Missing higher-level shared places will be created as well. According to the GEDCOM-L Addendum, shared places are referenced via XREFs, just like shared notes etc.  Add missing XREFs Additionally link shared places via name All shared place facts Attention! Automatically expand shared place data Create a shared place Create all missing shared places, and add missing XREFs Create missing shared places from tree-independent data, and add missing XREFs Data Fix Determining the link counts (linked individual/families) is expensive when assigning shared places via name, and therefore causes delays when the shared places list is displayed. It's recommended to only select this option if places are assigned via XREFs. Enable the Vesta Places and Pedigree map module to view the shared places hierarchy. Enhance existing shared places with tree-independent data Facts for shared place records Filter to unique shared places GOV id for type of location General search Hierarchize Shared Places Higher-level shared place However, you can still check this option and link shared places via the place name itself. In this case, links are established internally by searching for a shared place with any name matching case-insensitively. If checked, relations between shared places are modelled via an explicit hierarchy, where shared places have XREFs to higher-level shared places, as described in the specification. If this option is checked, shared place data is only displayed for the following facts and events.  If tree-independent data is available, map coordinates from webtrees 'Geographic data' and GOV ids from the Gov4Webtrees module are added. If you are using hierarchical shared places, a place with the name "A, B, C" is mapped to a shared place "A" with a higher-level shared place that maps to "B, C". Important note: In particular, hierarchical shared places do not have names with comma-separated name parts. In particular, map coordinates from webtrees 'Geographic data' and GOV ids from the Gov4Webtrees module are added. In the place hierarchy list, when using the option 'restrict to shared places', shared places with multiple names show up multiple times as separate entries. Check this option to show each shared place only once in this case, under the shared place's primary name, and also show its additional names. It is now recommended to use XREFs, as this improves performance and flexibility. There is a data fix available which may be used to add XREFs.  It is recommended to run the data fix for this custom module to resolve this issue. It is strongly recommended to backup your tree first. It is strongly recommended to switch to hierarchical shared places. It usually will have to be carried out once only, as a migration when switching to hierarchical shared places via the respective configuration option. Linking of shared places to places Location Matching shared places are determined as via the configuration option 'Additionally link shared places via name', including parent levels if set. Matching shared places are determined as via the configuration option 'Additionally link shared places via name'. Missing higher-level shared places are created if required. For this to work without potentially creating duplicates, you have to check 'Automatically accept changes made by this user' in the user administration, at least for the duration of this data fix. Missing shared places are created if required. For this to work without potentially creating duplicates, you have to check 'Automatically accept changes made by this user' in the user administration, at least for the duration of this data fix. Next lower-level shared places Note that the first occurrence may be within a toggleable, currently hidden fact or event (such as an event of a close relative). This will probably be improved in future versions of the module. Note that this also affects the way shared places are created, and the way they are mapped to places. Note: Place hierarchy Place names can change over time. You can add multiple names to a shared place, and indicate historic names via a suitable date range. Place names should be entered as a comma-separated list, starting with the smallest place and ending with the country. For example, “Westminster, London, England”. Place names should be entered as single place name (do not use a comma-separated list here). Quick shared place facts Reference year Replacement for the original 'Locations' module. Replaces the original 'Locations' module. Restrict to specific facts and events See %1$s for details. Shared Places Shared place Shared place data Shared place hierarchy Shared place list Shared place name Shared place name (complete hierarchy) Shared place page Shared place structure Shared place summary Shared places Shared places list Show link counts for shared places list Summary The created shared places, as well as existing shared places, are linked via XREFs to event places. The location of this shared place is not known. The search cannot be implemented efficiently and may take some time in particular when displaying and updating a large number of records. The search for this data fix currently does not match any records, because the configuration option to 'Use hierarchical shared places' isn't set. The shared place %s already exists. The shared place %s has been created. The summary shows the shared place data, formatted in the same way as for events with a place mapped to the respective shared place. The year set here may be used by other modules to enhance the place description with additional data. If left empty, the current year is used. There are various data fixes available. There is a data fix available which may be used to convert existing shared places. Therefore, the place name is displayed here including the full hierarchy. Therefore, this data fix enables you to move away from using that configuration option. This data fix adds XREFs, linking all places within events directly to the respective shared places. This data fix adds tree-independent data (managed outside GEDCOM) to existing shared places. This data fix creates missing shared places, even if no tree-independent data (managed outside GEDCOM) is available for the respective place. This data fix creates missing shared places, if tree-independent data (managed outside GEDCOM) is available for the respective place. This data fix currently won't update anything, because this preference isn't set. This data fix turns shared places with comma-separated name parts into hierarchical shared places (which are linked to higher-level shared places via XREFs). This is the list of GEDCOM facts that your users can add to shared places. You can modify this list by removing or adding fact names as necessary. Fact names that appear in this list must not also appear in the “Unique shared place facts” list. This is the list of GEDCOM facts that your users can add to shared places. You can modify this list by removing or adding fact names as necessary. Fact names that appear in this list must not also appear in the “Unique shared place facts” list.  This is the list of GEDCOM facts that your users can only add once to shared places. For example, if NAME is in this list, users will not be able to add more than one NAME record to a shared place. Fact names that appear in this list must not also appear in the “All shared place facts” list. This leads to inconsistencies when mapping places to shared places, and in general doesn't match the specification for shared places (which earlier versions of this custom module didn't follow strictly). This shared place does not exist or you do not have permission to view it. This shared place has been deleted. The deletion will need to be reviewed by a moderator. This shared place has been deleted. You should review the deletion and then %1$s or %2$s it. This shared place has been edited. The changes need to be reviewed by a moderator. This shared place has been edited. You should review the changes and then %1$s or %2$s them. This tree has shared places with comma-separated name parts, while at the same time the option to 'Use hierarchical shared places' is selected. Type of hierarchical relationship Type of location Unique shared place facts Use hierarchical shared places Use the separate tag '%1$s' in order to model a place hierarchy. View Shared places hierarchy When the preceding option is checked, and no matching shared place is found, fall back to n parent places (so that e.g. for n=2 a place "A, B, C" would also match shared places that match "B, C" and "C") When unchecked, the former approach is used, in which hierarchies are only hinted at by using shared place names with comma-separated name parts. You can set a reference year (which may be evaluated by other modules, such as %1$s) in the module configuration. administrative circular shared place hierarchy cultural geographical no other religious shared places yes yes, but only the first occurrence of the shared place Project-Id-Version: Dutch (Vesta Webtrees Custom Modules)
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Dutch <https://hosted.weblate.org/projects/vesta-webtrees-custom-modules/vesta-shared-places/nl/>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 4.10-dev
  (Opmerking: %s bovenliggende gedeelde plaatsen zijn ook gecreëerd)  (Opmerking: er is ook een bovenliggende gedeelde plaats gecreëerd) %s en de personen en gezinnen die ernaar verwijzen, met inbegrip van ouders, broers en zussen, echtgenoten en kinderen van elk persoon. %s en de personen en gezinnen die ernaar verwijzen. ... en terugvallen naar n bovenliggende niveaus Een module die ondersteuning biedt voor gedeelde plaatsen. Een module die gedeelde plaatsen ondersteunt als GEDCOM-objecten van niveau 0, op basis van het GEDCOM-L Addendum bij de GEDCOM 5.5.1-specificatie. Gedeelde plaatsen kunnen bijvoorbeeld kaartcoördinaten, notities en mediaobjecten bevatten. De module geeft deze gegevens voor alle overeenkomende plaatsen weer via het uitgebreide tabblad 'Feiten en gebeurtenissen'. Het kan ook worden gebruikt om GOV- ID's te beheren, in combinatie met de Gov4Webtrees-module. Een plaatsnaam met door komma's gescheiden naamdelen wordt omgezet in een hiërarchie van gedeelde plaatsen. Ontbrekende bovenliggende gedeelde plaatsen worden ook gecreëerd. Volgens het GEDCOM-L Addendum wordt naar gedeelde plaatsen verwezen via XREF's, net als gedeelde notities enz.  Voeg ontbrekende XREF's toe Koppel daarnaast gedeelde plaatsen via naam Alle gedeeldeplaatsfeiten Opgelet! Gegevens over gedeelde plaats automatisch uitbreiden Een gedeelde plaats maken Creëer alle ontbrekende gedeelde plaatsen, en voeg ontbrekende XREF's toe Creëer ontbrekende gedeelde plaatsen uit stamboomonafhankelijke gegevens, en voeg ontbrekende XREF's toe Gegevens correcties Het bepalen van het aantal koppelingen (gekoppelde personen/gezinnen) is vergt veel bij het toewijzen van gedeelde plaatsen via naam, en veroorzaakt daarom vertragingen wanneer de lijst met gedeelde plaatsen wordt weergegeven. Het wordt aanbevolen om deze optie alleen te selecteren als plaatsen zijn toegewezen via XREF's. Schakel de module Vesta Plaatsen en Grafische kwartierstaat in om de hiërarchie van gedeelde plaatsen te bekijken. Verbeter bestaande gedeelde plaatsen met stamboomonafhankelijke gegevens Feiten voor gedeeldeplaatsrecords Filter op unieke gedeelde plaatsen GOV-ID voor soort locatie Algemeen zoeken Hiërarchiseer gedeelde plaatsen Bovenliggende gedeelde plaats U kunt deze optie echter nog steeds aanvinken en gedeelde plaatsen koppelen via de plaatsnaam zelf. In dit geval worden koppelingen intern tot stand gebracht door te zoeken naar een gedeelde plaats met een naam die niet hoofdlettergevoelig is. Indien aangevinkt, worden relaties tussen gedeelde plaatsen gemodelleerd via een expliciete hiërarchie, waarbij gedeelde plaatsen XREF's hebben naar bovenliggende gedeelde plaatsen, zoals beschreven in de specificatie. Als deze optie is ingeschakeld, worden gegevens van gedeelde plaatsen alleen weergegeven voor de volgende feiten en gebeurtenissen.  Als er stamboomonafhankelijke gegevens beschikbaar zijn, worden kaartcoördinaten van webtrees 'Geografische gegevens' en GOV-ID's van de Gov4Webtrees-module toegevoegd. Als u hiërarchische gedeelde plaatsen gebruikt, wordt een plaats met de naam "A, B, C" toegewezen aan een gedeelde plaats "A" met een bovenliggende gedeelde plaats die is toegewezen aan "B, C". Belangrijke opmerking: In het bijzonder hebben hiërarchische gedeelde plaatsen geen namen met door komma's gescheiden naamdelen. In het bijzonder worden kaartcoördinaten van webtrees 'Geografische data' en GOV-ID's van de Gov4Webtrees-module toegevoegd. In de plaatshiërarchielijst worden, bij gebruik van de optie 'beperken tot gedeelde plaatsen', gedeelde plaatsen met meerdere namen meerdere keren weergegeven als afzonderlijke items. Schakel deze optie in om elke gedeelde plaats in dit geval slechts één keer weer te geven, onder de primaire naam van de gedeelde plaats, en ook de extra namen weer te geven. Het wordt nu aanbevolen om XREF's te gebruiken, omdat dit de prestaties en flexibiliteit verbetert. Er is een gegevenscorrectie beschikbaar die kan worden gebruikt om XREF's toe te voegen.  Het wordt aanbevolen om de gegevenscorrectie voor deze aangepaste module uit te voeren om dit probleem op te lossen. Het wordt sterk aanbevolen om eerst een back-up van uw stamboom te maken. Het wordt sterk aanbevolen om over te schakelen naar hiërarchische gedeelde plaatsen. Het zal meestal maar één keer moeten worden uitgevoerd, als een migratie bij het overschakelen naar hiërarchische gedeelde plaatsen via de desbetreffende configuratieoptie. Koppeling van gedeelde plaatsen naar plaatsen Locatie Overeenkomende gedeelde plaatsen worden bepaald via de configuratieoptie 'Gedeelde plaatsen ook koppelen via naam', inclusief bovenliggende niveaus indien ingesteld. Overeenkomende gedeelde plaatsen worden bepaald via de configuratieoptie 'Gedeelde plaatsen ook koppelen via naam'. Ontbrekende bovenliggende gedeelde plaatsen worden indien nodig gecreëerd. Om dit te laten werken zonder mogelijke duplicaten te creëren, moet u bij Gebruikersbeheer de optie 'Accepteer wijzigingen van deze gebruiker automatisch' aanvinken, in ieder geval voor de duur van deze gegevenscorrectie. Ontbrekende gedeelde plaatsen worden indien nodig aangemaakt. Om dit te laten werken zonder mogelijke duplicaten te creëren, moet u bij Gebruikersbeheer de optie 'Accepteer wijzigingen van deze gebruiker automatisch' aanvinken, in ieder geval voor de duur van deze gegevenscorrectie. Volgende onderliggende gedeelde plaatsen Merk op dat de eerste gebeurtenis zich kan voordoen binnen een onderling verwisselbaar, momenteel verborgen feit of gebeurtenis (zoals een gebeurtenis van een naast familielid). Dit zal waarschijnlijk worden verbeterd in toekomstige versies van de module. Merk op dat dit ook van invloed is op de manier waarop gedeelde plaatsen worden gecreëerd, en op de manier waarop ze worden toegewezen aan plaatsen. Opmerking: Plaatshiërarchie Plaatsnamen kunnen in de loop van de tijd veranderen. U kunt meerdere namen toevoegen aan een gedeelde plaats, en historische namen aangeven via een geschikt datumbereik. Plaatsnamen moeten worden ingevoerd als een komma-gescheiden lijst, beginnend met de kleinste plaats en eindigend met het land. Bijvoorbeeld "Westminster, Londen, Engeland". Plaatsnamen moeten worden ingevoerd als enkele plaatsnaam (gebruik hier geen komma-gescheiden lijst). Snelle gedeeldeplaatsfeiten Referentiejaar Vervanging voor de originele 'Locaties'-module. Vervangt de originele 'Locaties'-module. Beperken tot specifieke feiten en gebeurtenissen Zie %1$s voor details. Gedeelde plaatsen Gedeelde plaats Gegevens over gedeelde plaats Hiërarchie van gedeelde plaatsen Lijst van gedeelde plaatsen Naam van gedeelde plaats Naam van gedeelde plaatsen (volledige hiërarchie) Pagina met gedeelde plaatsen Structuur van gedeelde plaatsen Samenvatting van gedeelde plaats Gedeelde plaatsen Lijst met gedeelde plaatsen Toon aantal koppelingen voor de lijst met gedeelde plaatsen Samenvatting De gecreëerde gedeelde plaatsen worden, net als bestaande gedeelde plaatsen, via XREF's gekoppeld aan gebeurtenisplaatsen. De locatie van deze gedeelde plaats is niet bekend. De zoekopdracht kan niet efficiënt worden uitgevoerd en kan enige tijd duren, vooral bij het weergeven en bijwerken van een groot aantal records. De zoekopdracht voor deze gegevenscorrectie komt momenteel niet overeen met records, omdat de configuratieoptie 'Hiërarchische gedeelde plaatsen gebruiken' niet is ingesteld. De gedeelde plaats %s bestaat al. De gedeelde plaats %s is gecreëerd. De samenvatting toont de gedeeldelocatiegegevens, op dezelfde manier opgemaakt als voor gebeurtenissen met een plaats die is toegewezen aan de desbetreffende gedeelde plaats. Het jaar dat hier is ingesteld, kan door andere modules worden gebruikt om de plaatsbeschrijving te verbeteren met aanvullende gegevens. Als het leeg blijft, wordt het huidige jaar gebruikt. Er zijn verschillende gegevenscorrecties beschikbaar. Er is een gegevenscorrectie beschikbaar die kan worden gebruikt om bestaande gedeelde plaatsen om te zetten. Daarom wordt de plaatsnaam hier weergegeven, inclusief de volledige hiërarchie. Daarom stelt deze gegevenscorrectie u in staat om af te zien van het gebruik van die configuratieoptie. Deze gegevenscorrectie voegt XREF's toe en koppelt alle plaatsen binnen gebeurtenissen rechtstreeks aan de desbetreffende gedeelde plaatsen. Deze gegevenscorrectie voegt stamboomonafhankelijke gegevens (beheerd buiten GEDCOM) toe aan bestaande gedeelde plaatsen. Deze gegevenscorrectie creëert ontbrekende gedeelde plaatsen, zelfs als er geen stamboomonafhankelijke gegevens (beheerd buiten GEDCOM) beschikbaar zijn voor de desbetreffende plaats. Deze gegevenscorrectie creëert ontbrekende gedeelde plaatsen als stamboomonafhankelijke gegevens (beheerd buiten GEDCOM) beschikbaar zijn voor de desbetreffende plaats. Deze gegevenscorrectie zal momenteel niets bijwerken, omdat deze voorkeur niet is ingesteld. Deze gegevenscorrectie maakt van gedeelde plaatsen met door komma's gescheiden naamdelen, hiërarchische gedeelde plaatsen (die via XREF's zijn gekoppeld aan bovenliggende gedeelde plaatsen). Dit is de lijst met GEDCOM-feiten die uw gebruikers kunnen toevoegen aan gedeelde plaatsen. U kunt deze lijst wijzigen door zo nodig feitennamen te verwijderen of toe te voegen. Feitnamen die in deze lijst voorkomen, mogen niet ook voorkomen in de lijst "Unieke gedeeldeplaatsfeiten". Dit is de lijst met GEDCOM-feiten die uw gebruikers kunnen toevoegen aan gedeelde plaatsen. U kunt deze lijst wijzigen door zo nodig feitennamen te verwijderen of toe te voegen. Feitnamen die in deze lijst voorkomen, mogen niet ook voorkomen in de lijst "Unieke gedeeldeplaatsfeiten".  Dit is de lijst met GEDCOM-feiten die uw gebruikers slechts één keer kunnen toevoegen aan gedeelde plaatsen. Als bijvoorbeeld NAME in deze lijst staat, kunnen gebruikers niet meer dan één NAME-record aan een gedeelde plaats toevoegen. Feitnamen die in deze lijst voorkomen, mogen niet ook voorkomen in de lijst "Alle gedeeldeplaatsfeiten". Dit leidt tot inconsistenties bij het toewijzen van plaatsen aan gedeelde plaatsen, en komt over het algemeen niet overeen met de specificatie voor gedeelde plaatsen (die eerdere versies van deze aangepaste module niet strikt volgden). Deze gedeelde plaats bestaat niet of je hebt geen toestemming om deze te bekijken. Deze gedeelde plaats is verwijderd. De verwijdering moet worden beoordeeld door een moderator. Deze gedeelde plaats is verwijderd. U moet de verwijdering bekijken en ze vervolgens %1$s of %2$s. Deze gedeelde plaats is bewerkt. De wijzigingen moeten worden beoordeeld door een moderator. Deze gedeelde plaats is bewerkt. U moet de wijzigingen bekijken en ze vervolgens %1$s of %2$s. Deze stamboom heeft gedeelde plaatsen met door komma's gescheiden naamdelen, terwijl tegelijkertijd de optie 'Hiërarchische gedeelde plaatsen gebruiken' is geselecteerd. Soort hiërarchische verwantschap Soort locatie Unieke gedeeldeplaatsfeiten Hiërarchische gedeelde plaatsen gebruiken Gebruik het scheidingslabel '%1$s' om een plaatshiërarchie te modelleren. Hiërarchie van gedeelde plaatsen weergeven Als de vorige optie is aangevinkt en er geen overeenkomende gedeelde plaats wordt gevonden, val dan terug naar n bovenliggende plaatsen (zodat bijvoorbeeld voor n=2 een plaats "A, B, C" ook overeenkomt met gedeelde plaatsen die overeenkomen met "B, C" en "C") Indien niet aangevinkt, wordt de eerste benadering gebruikt, waarbij hiërarchieën alleen worden aangegeven door middel van gedeeldeplaatsnamen met door komma's gescheiden naamdelen. U kunt een referentiejaar (dat kan worden geëvalueerd door andere modules, zoals %1$s) instellen in de moduleconfiguratie. administratieve cirkelhiërarchie van gedeelde plaatsen culturele geografische nee andere religieuze gedeelde plaatsen ja ja, maar alleen de eerste keer dat de gedeelde plaats voorkomt 