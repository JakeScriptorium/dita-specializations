<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    Task Requirements Domain                          -->
<!--  VERSION:   2.0                                               -->
<!--  DATE:      September 2022                                    -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!-- Refer to this file by the following public identifier:        -->
<!--                                                               -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA 2.x Task Requirements Domain//EN" -->
<!--       Delivered as file "taskreqDomain.mod"                   -->
<!--                                                               -->
<!-- The public ID above refers to the latest version.             -->
<!--                                                               -->
<!-- To refer to this specific version, you can use this value:    -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Task Requirements Domain//EN" -->
<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Define elements for the task requirements         -->
<!--             domain                                            -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             September 2007                                    -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2007, 2022.              -->
<!--             All Rights Reserved.                              -->
<!--  UPDATES:                                                     -->
<!--    2009.10.20 CHK: Make safecond unbound                      -->
<!--    2022.09.07 KJE: Updated for DITA 2.0                       -->
<!-- ============================================================= -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % prelreqs    "prelreqs"                                    >
<!ENTITY % closereqs   "closereqs"                                   >
<!ENTITY % reqconds    "reqconds"                                    >
<!ENTITY % noconds     "noconds"                                     >
<!ENTITY % reqcond     "reqcond"                                     >
<!ENTITY % reqcontp    "reqcontp"                                    >
<!ENTITY % reqpers     "reqpers"                                     >
<!ENTITY % personnel   "personnel"                                   >
<!ENTITY % perscat     "perscat"                                     >
<!ENTITY % perskill    "perskill"                                    >
<!ENTITY % esttime     "esttime"                                     >
<!ENTITY % supequip    "supequip"                                    >
<!ENTITY % nosupeq     "nosupeq"                                     >
<!ENTITY % supeqli     "supeqli"                                     >
<!ENTITY % supequi     "supequi"                                     >
<!ENTITY % supplies    "supplies"                                    >
<!ENTITY % nosupply    "nosupply"                                    >
<!ENTITY % supplyli    "supplyli"                                    >
<!ENTITY % supply      "supply"                                      >
<!ENTITY % spares      "spares"                                      >
<!ENTITY % nospares    "nospares"                                    >
<!ENTITY % sparesli    "sparesli"                                    >
<!ENTITY % spare       "spare"                                       >
<!ENTITY % safety      "safety"                                      >
<!ENTITY % nosafety    "nosafety"                                    >
<!ENTITY % safecond    "safecond"                                    >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Preliminary Requirements        -->
<!ENTITY % prelreqs.content
                       "((%reqconds;)?,
                         (%reqpers;)?,
                         (%supequip;)?,
                         (%supplies;)?,
                         (%spares;)?,
                         (%safety;)?)"
>
<!ENTITY % prelreqs.attributes
              "%univ-atts;"
>
<!ELEMENT  prelreqs %prelreqs.content;>
<!ATTLIST  prelreqs %prelreqs.attributes;>


<!--                    LONG NAME: Closing Requirements            -->
<!ENTITY % closereqs.content
                       "(%reqconds;)"
>
<!ENTITY % closereqs.attributes
              "%univ-atts;"
>
<!ELEMENT  closereqs %closereqs.content;>
<!ATTLIST  closereqs %closereqs.attributes;>


<!--                    LONG NAME: Required Conditions             -->
<!ENTITY % reqconds.content
                       "((%data;)*,
                         (%noconds; |
                          (%reqcond; |
                           %reqcontp;)+))"
>
<!ENTITY % reqconds.attributes
              "%univ-atts;"
>
<!ELEMENT  reqconds %reqconds.content;>
<!ATTLIST  reqconds %reqconds.attributes;>


<!--                    LONG NAME: No Required Conditions          -->
<!ENTITY % noconds.content
                       "EMPTY"
>
<!ENTITY % noconds.attributes
              "%univ-atts;"
>
<!ELEMENT  noconds %noconds.content;>
<!ATTLIST  noconds %noconds.attributes;>


<!--                    LONG NAME: Required Condition              -->
<!ENTITY % reqcond.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % reqcond.attributes
              "%univ-atts;"
>
<!ELEMENT  reqcond %reqcond.content;>
<!ATTLIST  reqcond %reqcond.attributes;>


<!--                    LONG NAME: Required Condition Technical Publication -->
<!ENTITY % reqcontp.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % reqcontp.attributes
              "%univ-atts;"
>
<!ELEMENT  reqcontp %reqcontp.content;>
<!ATTLIST  reqcontp %reqcontp.attributes;>


<!--                    LONG NAME: Required Persons                -->
<!ENTITY % reqpers.content
                       "((%data;)*,
                         (%personnel;,
                          ((%perscat;)?,
                           (%perskill;)?,
                           (%esttime;)?)?)+)"
>
<!ENTITY % reqpers.attributes
              "%univ-atts;"
>
<!ELEMENT  reqpers %reqpers.content;>
<!ATTLIST  reqpers %reqpers.attributes;>


<!--                    LONG NAME: Personnel                       -->
<!ENTITY % personnel.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % personnel.attributes
              "%univ-atts;"
>
<!ELEMENT  personnel %personnel.content;>
<!ATTLIST  personnel %personnel.attributes;>


<!--                    LONG NAME: Personnel Category              -->
<!ENTITY % perscat.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % perscat.attributes
              "%univ-atts;"
>
<!ELEMENT  perscat %perscat.content;>
<!ATTLIST  perscat %perscat.attributes;>


<!--                    LONG NAME: Personnel Skill Level           -->
<!ENTITY % perskill.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % perskill.attributes
              "%univ-atts;"
>
<!ELEMENT  perskill %perskill.content;>
<!ATTLIST  perskill %perskill.attributes;>


<!--                    LONG NAME: Estimated Time                  -->
<!ENTITY % esttime.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % esttime.attributes
              "%univ-atts;"
>
<!ELEMENT  esttime %esttime.content;>
<!ATTLIST  esttime %esttime.attributes;>


<!--                    LONG NAME: Support Equipment               -->
<!ENTITY % supequip.content
                       "(%nosupeq; |
                         %supeqli;)"
>
<!ENTITY % supequip.attributes
              "%univ-atts;"
>
<!ELEMENT  supequip %supequip.content;>
<!ATTLIST  supequip %supequip.attributes;>


<!--                    LONG NAME: No Support Equipment            -->
<!ENTITY % nosupeq.content
                       "EMPTY"
>
<!ENTITY % nosupeq.attributes
              "%data-element-atts;"
>
<!ELEMENT  nosupeq %nosupeq.content;>
<!ATTLIST  nosupeq %nosupeq.attributes;>


<!--                    LONG NAME: Support Equipment List          -->
<!ENTITY % supeqli.content
                       "((%data;)*,
                         (%supequi;)+)"
>
<!ENTITY % supeqli.attributes
              "compact
                          (yes |
                           no |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  supeqli %supeqli.content;>
<!ATTLIST  supeqli %supeqli.attributes;>


<!--                    LONG NAME: Support Equipment Item          -->
<!ENTITY % supequi.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % supequi.attributes
              "%univ-atts;"
>
<!ELEMENT  supequi %supequi.content;>
<!ATTLIST  supequi %supequi.attributes;>


<!--                    LONG NAME: Supplies                        -->
<!ENTITY % supplies.content
                       "(%nosupply; |
                         %supplyli;)"
>
<!ENTITY % supplies.attributes
              "%univ-atts;"
>
<!ELEMENT  supplies %supplies.content;>
<!ATTLIST  supplies %supplies.attributes;>


<!--                    LONG NAME: No Supplies                     -->
<!ENTITY % nosupply.content
                       "EMPTY"
>
<!ENTITY % nosupply.attributes
              "%data-element-atts;"
>
<!ELEMENT  nosupply %nosupply.content;>
<!ATTLIST  nosupply %nosupply.attributes;>


<!--                    LONG NAME: Supply List                     -->
<!ENTITY % supplyli.content
                       "((%data;)*,
                         (%supply;)+)"
>
<!ENTITY % supplyli.attributes
              "compact
                          (yes |
                           no |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  supplyli %supplyli.content;>
<!ATTLIST  supplyli %supplyli.attributes;>


<!--                    LONG NAME: Supply Item                     -->
<!ENTITY % supply.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % supply.attributes
              "%univ-atts;"
>
<!ELEMENT  supply %supply.content;>
<!ATTLIST  supply %supply.attributes;>


<!--                    LONG NAME: Spares                          -->
<!ENTITY % spares.content
                       "(%nospares; |
                         %sparesli;)"
>
<!ENTITY % spares.attributes
              "%univ-atts;"
>
<!ELEMENT  spares %spares.content;>
<!ATTLIST  spares %spares.attributes;>


<!--                    LONG NAME: No Spares                       -->
<!ENTITY % nospares.content
                       "EMPTY"
>
<!ENTITY % nospares.attributes
              "%data-element-atts;"
>
<!ELEMENT  nospares %nospares.content;>
<!ATTLIST  nospares %nospares.attributes;>


<!--                    LONG NAME: Spare List                      -->
<!ENTITY % sparesli.content
                       "((%data;)*,
                         (%spare;)+)"
>
<!ENTITY % sparesli.attributes
              "compact
                          (yes |
                           no |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  sparesli %sparesli.content;>
<!ATTLIST  sparesli %sparesli.attributes;>


<!--                    LONG NAME: Spare Item                      -->
<!ENTITY % spare.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % spare.attributes
              "%univ-atts;"
>
<!ELEMENT  spare %spare.content;>
<!ATTLIST  spare %spare.attributes;>


<!--                    LONG NAME: Safety Conditions               -->
<!ENTITY % safety.content
                       "((%data)*,
                         (%nosafety; |
                          (%safecond;)+))"
>
<!ENTITY % safety.attributes
              "%univ-atts;"
>
<!ELEMENT  safety %safety.content;>
<!ATTLIST  safety %safety.attributes;>


<!--                    LONG NAME: No Safety Conditions            -->
<!ENTITY % nosafety.content
                       "EMPTY"
>
<!ENTITY % nosafety.attributes
              "%univ-atts;"
>
<!ELEMENT  nosafety %nosafety.content;>
<!ATTLIST  nosafety %nosafety.attributes;>


<!--                    LONG NAME: Safety Condition                -->
<!ENTITY % safecond.content
                       "(%listitem.cnt;)*"
>
<!ENTITY % safecond.attributes
              "%univ-atts;"
>
<!ELEMENT  safecond %safecond.content;>
<!ATTLIST  safecond %safecond.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  prelreqs      class CDATA "+ topic/section task/prereq taskreq-d/prelreqs ">
<!ATTLIST  closereqs     class CDATA "+ topic/section task/postreq taskreq-d/closereqs ">
<!ATTLIST  reqconds      class CDATA "+ topic/ul task/ul taskreq-d/reqconds ">
<!ATTLIST  noconds       class CDATA "+ topic/li task/li taskreq-d/noconds ">
<!ATTLIST  reqcond       class CDATA "+ topic/li task/li taskreq-d/reqcond ">
<!ATTLIST  reqcontp      class CDATA "+ topic/li task/li taskreq-d/reqcontp ">
<!ATTLIST  reqpers       class CDATA "+ topic/ul task/ul taskreq-d/reqpers ">
<!ATTLIST  personnel     class CDATA "+ topic/li task/li taskreq-d/personnel ">
<!ATTLIST  perscat       class CDATA "+ topic/li task/li taskreq-d/perscat ">
<!ATTLIST  perskill      class CDATA "+ topic/li task/li taskreq-d/perskill ">
<!ATTLIST  esttime       class CDATA "+ topic/li task/li taskreq-d/esttime ">
<!ATTLIST  supequip      class CDATA "+ topic/p task/p taskreq-d/supequip ">
<!ATTLIST  nosupeq       class CDATA "+ topic/data task/data taskreq-d/nosupeq ">
<!ATTLIST  supeqli       class CDATA "+ topic/ul task/ul taskreq-d/supeqli ">
<!ATTLIST  supequi       class CDATA "+ topic/li task/li taskreq-d/supequi ">
<!ATTLIST  supplies      class CDATA "+ topic/p task/p taskreq-d/supplies ">
<!ATTLIST  nosupply      class CDATA "+ topic/data task/data taskreq-d/nosupply ">
<!ATTLIST  supplyli      class CDATA "+ topic/ul task/ul taskreq-d/supplyli ">
<!ATTLIST  supply        class CDATA "+ topic/li task/li taskreq-d/supply ">
<!ATTLIST  spares        class CDATA "+ topic/p task/p taskreq-d/spares ">
<!ATTLIST  nospares      class CDATA "+ topic/data task/data taskreq-d/nospares ">
<!ATTLIST  sparesli      class CDATA "+ topic/ul task/ul taskreq-d/sparesli ">
<!ATTLIST  spare         class CDATA "+ topic/li task/li taskreq-d/spare ">
<!ATTLIST  safety        class CDATA "+ topic/ol task/ol taskreq-d/safety ">
<!ATTLIST  nosafety      class CDATA "+ topic/li task/li taskreq-d/nosafety ">
<!ATTLIST  safecond      class CDATA "+ topic/li task/li taskreq-d/safecond ">

<!-- ================== End of DITA Task Requirements Domain ==================== -->
 