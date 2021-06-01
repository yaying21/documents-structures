<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <sch:rule context="fermeture">
            <sch:assert test="not(text())">Un élément <sch:name/>ne peut contenir de texte
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="ouverture">
            <sch:assert test="@debut and @fin">Un élément<sch:name/>doit avoir un attribut "debut" et un attribut "fin".</sch:assert>
         </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="ouverture">
            <sch:report test="@saufjour/string()" role="warn">devraient prendre des
                vacances</sch:report>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="ville">
            <sch:report test="contains(text(), 'a')" role="warn">les noms des villes devraient être majuscule ^pour la consistance.</sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>