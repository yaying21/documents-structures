declare namespace t = "http://www.tei-c.org/ns/1.0"; 
for $titre in doc('file:///Users/yingy/Desktop/XML/documents-structures/07-XQuery/Rom.xml') 
return <h1>{$titre/text()}</h1>