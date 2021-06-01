<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <!--<sch:pattern>
        <sch:rule context="/">
            <sch:assert test="contains(child::*,'teiHeader') and contains(child::*,'text')">le document contient bien un teiHeader et un text</sch:assert>
        </sch:rule>
    </sch:pattern>-->
    <!-- Assurer vous que le document contient bien un teiHeader et un text-->
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="t"/>  <!-- espace de nom -->
    
    <sch:pattern>
        <sch:rule context="t:TEI">
            <sch:assert test="t:teiHeader and t:text">
                Un élément <sch:name/> contient un élément teiHeader et un élément text.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <!-- Définir une règle abstraite qui vérifie qu'un élément contient toujours un enfant
paragraphe. Appliquer sur les éléments sp et projectDesc -->
    <sch:pattern>
        <sch:rule abstract="true" id="contient-paragraphe">
            <sch:assert test="t:p">L'élément <sch:name/> doit contenir un élément p.</sch:assert>
        </sch:rule>
        
        <sch:rule context="t:sp">
            <sch:extends rule="contient-paragraphe"/>
        </sch:rule>
        
        <sch:rule context="t:projectDesc">
            <sch:extends rule="contient-paragraphe"/>
        </sch:rule>
    </sch:pattern>
    <!--Créer un bloc abstrait pour vérifier que chaque div qui sont des actes contiennent un
élément head et plusieurs scènes -->
    <sch:pattern abstract="true" id="structure-act">
        <sch:rule context="$act">
            <sch:assert test="$head">L'élément <sch:name/> doit avoir un élément head.</sch:assert>
            <sch:assert test="count($scene) > 1">L'élément <sch:name/> doit contenir au moins deux scènes.</sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern is-a="structure-act" id="act">
        <sch:param name="act" value="t:div[@type='act']"/>
        <sch:param name="head" value="t:head"/>
        <sch:param name="scene" value="t:div[@type='scene']"/>
    </sch:pattern>
</sch:schema>