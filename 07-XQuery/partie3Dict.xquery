declare namespace local = "documents-structures-fonctions";
declare function local:normalisation ($texte as xs:string) as xs:string{
let $lowercaseMot := lower-case($texte)
let $removePunc := translate($lowercaseMot, '[\.,\?-!_;]','')
let $tokenize := tokenize($removePunc, '  ')
return $tokenize 
};
let $sent := "Bonjour Madame, vous-voulez prendre ce livre ?"
let $normaliseSent := local:normalisation($sent)
return $normaliseSent