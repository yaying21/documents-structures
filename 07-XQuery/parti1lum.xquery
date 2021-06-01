declare namespace local = "documents-structures-fonctions";
declare function local:louchebem ($mot as xs:string) as xs:string{
let $voyelle := ('a', 'o', 'e', 'i', 'u')
let $premierLettre := substring($mot, 1, 1)
return if ($premierLettre = $voyelle)
then "l" || $mot || "bem"
else "l"|| ($mot,2) || ($mot, 1,1)|| "em"
};

(:let $phrase :='Bonjour salut'
for $word in tokenize($phrase,'  ')
return local:louchebem($word):)

let $sent := 'argot consonne boucher'
for $word in tokenize($sent,'  ' )
return local:louchebem($word)