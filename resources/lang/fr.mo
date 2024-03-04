��    i      d  �   �       	  =   	  :   ?	  |   z	  6   �	  $   .
  -   S
  �  �
  �     h   �       (        B  
   Y  &   d     �  7   �  N   �     (     1  T   2  9   �     �     �     �          #     =  �   W  �   ,  c   �  �   E  �   �     s  \   �  r   �  ,  S  �   �  S     5   e  C   �  �   �  "   v     �  	   �  �   �  q   >     �  �   �     �  �   �  e   �     �  �   �  �   z  \   "          �  %   �     �     �     �       &        ;     M     d     y     �  '   �     �  c   �  �   .  �   �  #   K   %   o   �   �   �   !  '   �!  R   �!  I   $"  W   n"  d   �"  \   +#  �   �#  �   $  Q   �$  �   �$  �   �%  �   �&  (  '  �   �(  J   t)  �   �)  !   O*     q*     �*  @   �*     �*  �   +  �   �+  q   f,     �,     �,  6   -  �  =-  I   /  D   K/  �   �/  7   0  &   S0  :   z0  �  �0  �   �2  r   e3     �3  +   �3  &    4     G4  9   S4     �4  G   �4  z   �4     h5  9  5  f   �6  V    7  1   w7  (   �7  *   �7     �7  !   8  "   38  �   V8  �   H9  {   <:  �   �:  �   �;     I<  {   _<  �   �<  �  z=  �   �>  q   �?  @   6@  S   w@  �   �@  %   �A     �A     �A  �   �A  �   wB  P  �B  ;  PD  -   �E  �   �E  �   �F  
   G  �   !G  �   �G  �   �H  %   I     .I  5   DI     zI     �I     �I     �I  ,   �I     J     J     2J     LJ     \J  =   vJ     �J  w   �J  �   5K  �   �K  "   �L  #   �L  �   �L  �   �M  9   VN  s   �N  U   O  h   ZO     �O  �   CP  �   �P  �   �Q  e   KR  �   �R  G  �S  H  �T  �  !V  �   �W  L   �X  �   �X     �Y  %   �Y  +   �Y  S   Z  +   qZ    �Z  �   �[  �   x\  ,   ]     4]  <   D]         K   F   *   ^          9      1      G   J   -                     N      3       0      i      P       
   /   C              O                         (       L          D       '   d   @   5   H       a   >   B   [                          Q          f   4                `   Z   ?   _   "      &      c   I   X       7       6           E               =   R              ]   +   e   <   A   ;      8   T       $   	   #   W      )   .         :                  h   M   g          S   ,   %   !   U   \           V       b          Y       2                (Note: %s higher-level shared places have also been created)  (Note: A higher-level shared place has also been created) %s and the individuals and families that reference it, including parents, siblings, spouses and children of each individual. %s and the individuals and families that reference it. ... and fall back to n parent levels A module providing support for shared places. A module supporting shared places as level 0 GEDCOM objects, on the basis of the GEDCOM-L Addendum to the GEDCOM 5.5.1 specification. Shared places may contain e.g. map coordinates, notes and media objects. The module displays this data for all matching places via the extended 'Facts and events' tab. It may also be used to manage GOV ids, in combination with the Gov4Webtrees module. A place name with comma-separated name parts will be resolved to a hierarchy of shared places. Missing higher-level shared places will be created as well. According to the GEDCOM-L Addendum, shared places are referenced via XREFs, just like shared notes etc.  Add missing XREFs Additionally link shared places via name All shared place facts Attention! Automatically expand shared place data Create a shared place Create all missing shared places, and add missing XREFs Create missing shared places from tree-independent data, and add missing XREFs Data Fix Determining the link counts (linked individual/families) is expensive when assigning shared places via name, and therefore causes delays when the shared places list is displayed. It's recommended to only select this option if places are assigned via XREFs. Enable the Vesta Places and Pedigree map module to view the shared places hierarchy. Enhance existing shared places with tree-independent data Facts for shared place records Filter to unique shared places GOV id for type of location GOV id? Hierarchize Shared Places Higher-level shared place However, you can still check this option and link shared places via the place name itself. In this case, links are established internally by searching for a shared place with any name matching case-insensitively. If checked, relations between shared places are modelled via an explicit hierarchy, where shared places have XREFs to higher-level shared places, as described in the specification. If this option is checked, shared place data is only displayed for the following facts and events.  If tree-independent data is available, map coordinates from webtrees 'Geographic data' and GOV ids from the Gov4Webtrees module are added. If you are using hierarchical shared places, a place with the name "A, B, C" is mapped to a shared place "A" with a higher-level shared place that maps to "B, C". Important note: In particular, hierarchical shared places do not have names with comma-separated name parts. In particular, map coordinates from webtrees 'Geographic data' and GOV ids from the Gov4Webtrees module are added. In the place hierarchy list, when using the option 'restrict to shared places', shared places with multiple names show up multiple times as separate entries. Check this option to show each shared place only once in this case, under the shared place's primary name, and also show its additional names. It is now recommended to use XREFs, as this improves performance and flexibility. There is a data fix available which may be used to add XREFs.  It is recommended to run the data fix for this custom module to resolve this issue. It is strongly recommended to backup your tree first. It is strongly recommended to switch to hierarchical shared places. It usually will have to be carried out once only, as a migration when switching to hierarchical shared places via the respective configuration option. Linking of shared places to places Location Locations Matching shared places are determined as via the configuration option 'Additionally link shared places via name', including parent levels if set. Matching shared places are determined as via the configuration option 'Additionally link shared places via name'. Missing higher-level shared places are created if required. For this to work without potentially creating duplicates, you have to check 'Automatically accept changes made by this user' in the user administration, at least for the duration of this data fix. Missing shared places are created if required. For this to work without potentially creating duplicates, you have to check 'Automatically accept changes made by this user' in the user administration, at least for the duration of this data fix. Next lower-level shared places Note that the first occurrence may be within a toggleable, currently hidden fact or event (such as an event of a close relative). This will probably be improved in future versions of the module. Note that this also affects the way shared places are created, and the way they are mapped to places. Note: Place names can change over time. You can add multiple names to a shared place, and indicate historic names via a suitable date range. Place names should be entered as a comma-separated list, starting with the smallest place and ending with the country. For example, “Westminster, London, England”. Place names should be entered as single place name (do not use a comma-separated list here). Quick shared place facts Reference year Restrict to specific facts and events See %1$s for details. Shared place Shared place data Shared place name Shared place name (complete hierarchy) Shared place page Shared place structure Shared place summary Shared places Shared places list Show link counts for shared places list Summary The created shared places, as well as existing shared places, are linked via XREFs to event places. The search cannot be implemented efficiently and may take some time in particular when displaying and updating a large number of records. The search for this data fix currently does not match any records, because the configuration option to 'Use hierarchical shared places' isn't set. The shared place %s already exists. The shared place %s has been created. The summary shows the shared place data, formatted in the same way as for events with a place mapped to the respective shared place. The year set here may be used by other modules to enhance the place description with additional data. If left empty, the current year is used. There are various data fixes available. There is a data fix available which may be used to convert existing shared places. Therefore, the place name is displayed here including the full hierarchy. Therefore, this data fix enables you to move away from using that configuration option. This data fix adds XREFs, linking all places within events directly to the respective shared places. This data fix adds tree-independent data (managed outside GEDCOM) to existing shared places. This data fix creates missing shared places, even if no tree-independent data (managed outside GEDCOM) is available for the respective place. This data fix creates missing shared places, if tree-independent data (managed outside GEDCOM) is available for the respective place. This data fix currently won't update anything, because this preference isn't set. This data fix turns shared places with comma-separated name parts into hierarchical shared places (which are linked to higher-level shared places via XREFs). This is the list of GEDCOM facts that your users can add to shared places. You can modify this list by removing or adding fact names as necessary. Fact names that appear in this list must not also appear in the “Unique shared place facts” list. This is the list of GEDCOM facts that your users can add to shared places. You can modify this list by removing or adding fact names as necessary. Fact names that appear in this list must not also appear in the “Unique shared place facts” list.  This is the list of GEDCOM facts that your users can only add once to shared places. For example, if NAME is in this list, users will not be able to add more than one NAME record to a shared place. Fact names that appear in this list must not also appear in the “All shared place facts” list. This leads to inconsistencies when mapping places to shared places, and in general doesn't match the specification for shared places (which earlier versions of this custom module didn't follow strictly). This shared place does not exist or you do not have permission to view it. This tree has shared places with comma-separated name parts, while at the same time the option to 'Use hierarchical shared places' is selected. Type of hierarchical relationship Unique shared place facts Use hierarchical shared places Use the separate tag '%1$s' in order to model a place hierarchy. View Shared places hierarchy When the preceding option is checked, and no matching shared place is found, fall back to n parent places (so that e.g. for n=2 a place "A, B, C" would also match shared places that match "B, C" and "C") When unchecked, the former approach is used, in which hierarchies are only hinted at by using shared place names with comma-separated name parts. You can set a reference year (which may be evaluated by other modules, such as %1$s) in the module configuration. circular shared place hierarchy shared places yes, but only the first occurrence of the shared place Project-Id-Version: French (Vesta Webtrees Custom Modules)
Report-Msgid-Bugs-To: 
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: French <https://hosted.weblate.org/projects/vesta-webtrees-custom-modules/vesta-shared-places/fr/>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
X-Generator: Weblate 5.5-dev
  (Note : %s lieux partagés de niveau supérieur ont aussi été créés)  (Note : un lieu partagé de niveau supérieur a aussi été créé) %s et les personnes et familles qui y font référence, y compris les parents, frères et sœurs, conjoints et enfants de chaque personne. %s et les personnes et familles qui y font référence. ... et revenez à n niveaux de parents Un module ajoutant la prise en charge des lieux partagés. Un module prenant en charge les espaces partagés en tant qu'objets GEDCOM de niveau 0, sur la base de l'Addendum GEDCOM-L à la spécification GEDCOM 5.5.1. Les lieux partagés peuvent contenir par exemple coordonnées de la carte, notes et objets multimédias. Le module affiche ces données pour tous les lieux correspondants via l'onglet étendu «Faits et événements». Il peut également être utilisé pour gérer les identifiants GOV, en combinaison avec le module Gov4Webtrees. Un nom de lieu avec des parties de nom séparées par des virgules sera résolu en une hiérarchie de lieux partagés. Des espaces partagés de niveau supérieur manquants seront également créés. Selon l'addendum GEDCOM-L, les lieux partagés sont référencés via XREF, tout comme les notes partagées, etc.  Ajouter des XREF manquantes Lier en plus les lieux partagés via le nom Tous les faits sur les lieux partagés Attention ! Étendre automatiquement les données des lieux partagés Créer un lieu partagé Créez tous les lieux partagés manquants et ajoutez les XREF manquants Créez des lieux partagés manquants à partir de données indépendantes de l'arborescence et ajoutez des XREF manquantes Correction de données La détermination du nombre de liens (individus / familles liés) est coûteuse lors de l'attribution de lieux partagés via le nom, et entraîne donc des retards lorsque la liste des lieux partagés est affichée. Il est recommandé de ne sélectionner cette option que si les lieux sont attribués via des XREF. Activez le module de carte Vesta Places and Pedigree pour afficher la hiérarchie des lieux partagés. Améliorez les espaces partagés existants avec des données indépendantes de l'arbre Actes pour les enregistrements de lieux partagés Filtrer vers des lieux partagés uniques Identifiant GOV pour le type d'emplacement Identifiant GOV ? Hiérarchiser les lieux partagés Lieu partagé de niveau supérieur Cependant, vous pouvez toujours cocher cette option et lier les lieux partagés via le nom du lieu lui-même. Dans ce cas, les liens sont établis en interne en recherchant un espace partagé avec un nom correspondant insensible à la casse. Si cette case est cochée, les relations entre les espaces partagés sont modélisées via une hiérarchie explicite, où les espaces partagés ont des XREF vers des espaces partagés de niveau supérieur, comme décrit dans la spécification. Si cette option est cochée, les données de lieu partagé ne sont affichées que pour les faits et événements suivants.  Si des données indépendantes de l'arbre sont disponibles, les coordonnées cartographiques des «Données géographiques» de webtrees et des identifiants GOV du module Gov4Webtrees sont ajoutées. Si vous utilisez des espaces partagés hiérarchiques, un lieu avec le nom «A, B, C» est mappé vers un espace partagé «A» avec un espace partagé de niveau supérieur qui correspond à «B, C». Remarque importante : En particulier, les espaces partagés hiérarchiques n'ont pas de noms avec des parties de nom séparées par des virgules. En particulier, les coordonnées cartographiques des « Données géographiques » de webtrees et les identifiants GOV du module Gov4Webtrees sont ajoutés. Dans la liste de hiérarchie des lieux, lors de l'utilisation de l'option «restreindre aux espaces partagés», les lieux partagés avec plusieurs noms apparaissent plusieurs fois comme des entrées séparées. Cochez cette option pour afficher chaque lieu partagé une seule fois dans ce cas, sous le nom principal du lieu partagé, et afficher également ses noms supplémentaires. Il est maintenant recommandé d'utiliser des XREF, car cela améliore les performances et la flexibilité. Il existe un correctif de données disponible qui peut être utilisé pour ajouter des XREF.  Il est recommandé d'exécuter le correctif de données pour ce module personnalisé pour résoudre ce problème. Il est fortement recommandé de sauvegarder d'abord votre arbre. Il est fortement recommandé de basculer vers des espaces partagés hiérarchiques. Il ne devra généralement être effectué qu'une seule fois, comme une migration lors du passage à des espaces partagés hiérarchiques via l'option de configuration correspondante. Lier des lieux partagés à des lieux Lieux Partagés Emplacements Les espaces partagés correspondants sont déterminés via l'option de configuration "Lier en plus les espaces partagés via le nom", y compris les niveaux parents si définis. Les espaces partagés correspondants sont déterminés via l'option de configuration «En plus lier les espaces partagés via le nom». Des espaces partagés de niveau supérieur manquants sont créés si nécessaire. Pour que cela fonctionne sans créer potentiellement de doublons, vous devez cocher «Accepter automatiquement les modifications apportées par cet utilisateur» dans l'administration des utilisateurs, au moins pour la durée de ce correctif de données. Les espaces partagés manquants sont créés si nécessaire. Pour que cela fonctionne sans créer potentiellement de doublons, vous devez cocher «Accepter automatiquement les modifications apportées par cet utilisateur» dans l'administration des utilisateurs, au moins pour la durée de ce correctif de données. Lieux partagés de niveau inférieur suivants Notez que la première occurrence peut se trouver dans un fait ou un événement, actuellement masqué (tel qu'un événement d'un proche parent). Cela sera probablement amélioré dans les futures versions du module. Notez que cela affecte également la façon dont les espaces partagés sont créés et la façon dont ils sont mappés aux lieux. Remarque : Les noms de lieu peuvent changer au cours du temps. Vous pouvez ajouter plusieurs noms à un lieu partagé, et indiquer le nom historique avec le jeu de données approprié. Les noms de lieu doivent être entrés sous forme de liste et séparés par des virgules, en allant du lieu le plus petit au pays. Par exemple « Westminster, Londres, Angleterre ». Les noms de lieux doivent être saisis sous forme de nom de lieu unique (n'utilisez pas ici de liste séparée par des virgules). Faits rapides sur les lieux partagés Année de référence Restreindre à des faits et événements spécifiques Voir %1$s pour les détails. Lieu partagé Données du lieu partagé Nom du Lieu partagé Nom du lieu partagé (hiérarchie complète) Page de lieu partagé Structure du lieu partagé Résumé du lieu partagé Lieux partagés Liste des lieux partagés Afficher le nombre de liens pour la liste des lieux partagés Sommaire Les lieux partagés créés, ainsi que les lieux partagés existants, sont liés via des XREF aux lieux d'événements. La recherche ne peut pas être mise en œuvre efficacement et peut prendre un certain temps en particulier lors de l'affichage et de la mise à jour d'un grand nombre d'enregistrements. La recherche de ce correctif de données ne correspond actuellement à aucun enregistrement, car l'option de configuration "Utiliser les espaces partagés hiérarchiques" n'est pas définie. Le lieu partagé %s existe déjà. Le lieu partagé %s a été créé. Le résumé montre les données du lieu partagé, formatées de la même manière que pour les événements avec un lieu mappé sur le lieu partagé respectif. L'année définie ici peut être utilisée par d'autres modules pour enrichir la description du lieu avec des données supplémentaires. S'il est laissé vide, l'année en cours est utilisée. Il existe différents correctifs de données disponibles. Il existe un correctif de données disponible qui peut être utilisé pour convertir des lieux partagés existants. Par conséquent, le nom de lieu est affiché ici, y compris la hiérarchie complète. Par conséquent, ce correctif de données vous permet de ne plus utiliser cette option de configuration. Ce correctif de données ajoute des XREF, reliant tous les lieux des événements directement aux espaces partagés respectifs. Ce correctif de données ajoute des données indépendantes de l'arborescence (gérées en dehors de GEDCOM) aux espaces partagés existants. Ce correctif de données crée des espaces partagés manquants, même si aucune donnée indépendante de l'arborescence (gérée en dehors de GEDCOM) n'est disponible pour l'espace respectif. Ce correctif de données crée des espaces partagés manquants, si des données indépendantes de l'arborescence (gérées en dehors de GEDCOM) sont disponibles pour l'espace respectif. Ce correctif de données ne met actuellement rien à jour, car cette préférence n'est pas définie. Ce correctif de données transforme les espaces partagés avec des parties de nom séparées par des virgules en espaces partagés hiérarchiques (qui sont liés à des espaces partagés de niveau supérieur via des XREF). Voici la liste des faits GEDCOM que vos utilisateurs peuvent ajouter aux espaces partagés. Vous pouvez modifier cette liste en supprimant ou en ajoutant des noms de faits si nécessaire. Les noms de faits qui apparaissent dans cette liste ne doivent pas également apparaître dans la liste «Faits uniques de lieu partagé». Voici la liste des faits GEDCOM que vos utilisateurs peuvent ajouter aux espaces partagés. Vous pouvez modifier cette liste en supprimant ou en ajoutant des noms de faits si nécessaire. Les noms de faits qui apparaissent dans cette liste ne doivent pas également apparaître dans la liste «Faits uniques de lieu partagé».  Il s'agit de la liste des faits GEDCOM que vos utilisateurs ne peuvent ajouter qu'une seule fois aux lieux partagés. Par exemple, si NAME figure dans cette liste, les utilisateurs ne pourront pas ajouter plusieurs enregistrements NAME à un espace partagé. Les noms de faits qui apparaissent dans cette liste ne doivent pas également apparaître dans la liste «Tous les faits de lieu partagé». Cela conduit à des incohérences lors du mappage de lieux à des lieux partagés et, en général, ne correspond pas aux spécifications des espaces partagés (que les versions antérieures de ce module personnalisé ne suivaient pas strictement). Ce lieu partagé n'existe pas ou vous n'êtes pas autorisé à le consulter. Cet arbre a des espaces partagés avec des parties de nom séparées par des virgules, tandis que l'option « Utiliser les espaces partagés hiérarchiques » est sélectionnée. Type de relation hiérarchique Faits uniques sur les lieux partagés Utiliser des lieux partagés hiérarchiques Utilisez la balise séparée « %1$s » pour modéliser une hiérarchie de lieux. Afficher la hiérarchie des lieux partagés Lorsque l'option précédente est cochée et qu'aucun lieu partagé correspondant n'est trouvé, revenez à n lieux parents (de sorte que, par exemple, pour n = 2, un lieu "A, B, C" correspond également aux lieux partagés qui correspondent à "B, C" et C") Lorsqu'elle n'est pas cochée, la première approche est utilisée, dans laquelle les hiérarchies ne sont suggérées qu'en utilisant des noms de lieux partagés avec des parties de nom séparées par des virgules. Vous pouvez définir une année de référence (qui peut être évaluée par d'autres modules, tels que %1$s) dans la configuration du module. hiérarchie circulaire des espaces partagés lieux partagés oui, mais seulement la première occurrence du lieu partagé 