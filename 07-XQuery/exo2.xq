declare namespace t = "http://www.tei-c.org/ns/1.0"; 
<ul>
{
for $langue in doc('file:///Users/yingy/Desktop/XML/documents-structures/07-XQuery/Rom.xml')//t:language
return <li>{ $langue/@ident/string()}</li>
}
</ul>