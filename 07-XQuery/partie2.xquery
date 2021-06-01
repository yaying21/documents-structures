for $juicer in doc('file:///Users/yingy/Desktop/XML/documents-structures/07-XQuery/juicers.xml')//juicer
    let $id := $juicer/@id/string()
    let $prix := $juicer/cost/text()
    order by $prix
    let $name := $juicer/name/text()
return if("Juicer" = tokenize($name, ' ')) then <id>{$id}</id> else()
