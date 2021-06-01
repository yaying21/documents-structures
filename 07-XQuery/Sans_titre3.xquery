declare namespace local = "documents-structures-fonctions";

declare function local:motNormalisation ($text as xs:string) {
let $lowerMot := lower-case($text)
let $translate := translate
};