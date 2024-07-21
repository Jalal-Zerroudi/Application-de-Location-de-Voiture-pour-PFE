# Application-de-Location-de-Voiture-pour-PFE
Application de Location de Voiture 2024


<a name="br1"></a> 

**Filière Sciences Mathématiques et Informatique**

**Projet de Fin d’Etudes**

<b>Semestre S<sub>6</sub></b>

**Mémoire**

**Gestion de location de voiture**

Présenté par :

**Bouhrir Ayat**

**Zerroudi Jalal**

Encadrant : **Pr. Bennani Mohamed Taj**

**Pr. Yaden Mohammed Faysal**

Soutenu le : 25/05/2024

Jury : Examinateur 1 : **Pr. Mohamed El Far**

Examinateur 2 : **Pr. Mohamed Lamrini**

Examinateur 3: **Pr. Khalid El Fahssi**

Examinateur 4: **Pr. Said EL GAROUANI**

***Année Universitaire : 2023/2024***



<a name="br2"></a> 

1



<a name="br3"></a> 

**Remerciements**

**Au nom d’Allah le tout miséricordieux,**

Nous tenons à adresser nos sincères remerciements à nos encadrants, le

professeur **Bennani Mohamed Taj** et le professeur **Yaden Mohammed Faysal**, pour

leur accompagnement précieux tout au long de mon projet de fin d'études. Leur

expertise, leurs conseils judicieux et leur soutien constant ont été essentiels à la réussite

de ce travail. Je suis profondément reconnaissant pour leur patience et leur engagement

envers mon développement académique et professionnel

Nous tenons également à remercier **les membres du jury** pour leur évaluation

attentive de notre travail.

Un merci spécial à tous ceux qui ont contribué, directement ou indirectement, à

la réalisation de ce projet.

2



<a name="br4"></a> 

**Résumé**

Ce projet de fin d'études présente le développement d'une application de bureau

innovante, destinée à révolutionner la gestion des opérations au sein d'une agence de

location de voitures. L'objectif principal est de simplifier et d'automatiser l'organisation

des données, améliorant ainsi l'efficacité et la productivité de l'agence.

L'application offre une solution complète pour la gestion des réservations, des

clients, des véhicules et des employés. Elle permet aux employées de gérer facilement

les flux de travail quotidiens, l'application permet de réduire les erreurs humaines et de

maximiser l'utilisation des ressources.

La phase de conception du projet a débuté par une analyse des besoins dans ce

secteur, suivie par l'élaboration d'une étude conceptuelle et technique. Cette étape

préliminaire a été cruciale pour définir les spécifications et l'architecture logicielle

nécessaires.

Le **backend** de l’application est base sur deux éléments essentiels : le langage de

programmation **C#** et **MySQL** pour la gestion de la base de données.

Le **frontend** utilise **Windows Presentation Foundation (WPF)** avec le

framework **.NET 8.0** pour offrir une expérience utilisateur riche et interactive.

3



<a name="br5"></a> 

**Sommaire**

[**Remerciements.....................................................................................................................2**](#br3)

[**Résumé**](#br4)[** ](#br4)[.................................................................................................................................3**](#br4)

[**Sommaire..............................................................................................................................4**](#br5)

[**Liste**](#br7)[** ](#br7)[des**](#br7)[** ](#br7)[figures....................................................................................................................6**](#br7)

[**Liste**](#br7)[** ](#br7)[des**](#br7)[** ](#br7)[Tables.....................................................................................................................6**](#br7)

[**Liste**](#br8)[** ](#br8)[des**](#br8)[** ](#br8)[Acronymes.............................................................................................................7**](#br8)

[**Introduction**](#br9)[** ](#br9)[Générale**](#br9)[** ](#br9)[.........................................................................................................8**](#br9)

[**Chapitre**](#br10)[** ](#br10)[1**](#br10)[** ](#br10)[:**](#br10)[** ](#br10)[Analyse**](#br10)[** ](#br10)[et**](#br10)[** ](#br10)[cadre**](#br10)[** ](#br10)[générale**](#br10)[** ](#br10)[de**](#br10)[** ](#br10)[projet**](#br10)[** ](#br10)[.................................................................9**](#br10)

[I.](#br10)[ ](#br10)[INTRODUCTION.............................................................................................................](#br10)[ ](#br10)[9](#br10)

[II.](#br10)[ ](#br10)[Étude](#br10)[ ](#br10)[de](#br10)[ ](#br10)[cahier](#br10)[ ](#br10)[de](#br10)[ ](#br10)[charge................................................................................................](#br10)[ ](#br10)[9](#br10)

[2.1](#br10)[ ](#br10)[Problématique](#br10)[ ](#br10)[.............................................................................................................](#br10)[ ](#br10)[9](#br10)

[2.2](#br10)[ ](#br10)[L’objectif](#br10)[.......................................................................................................................](#br10)[ ](#br10)[9](#br10)

[2.3](#br10)[ ](#br10)[Solution.........................................................................................................................](#br10)[ ](#br10)[9](#br10)

[III](#br11)[ ](#br11)[.](#br11)[ ](#br11)[Analyse](#br11)[ ](#br11)[des](#br11)[ ](#br11)[besoins.......................................................................................................](#br11)[ ](#br11)[10](#br11)

[3.1](#br11)[ ](#br11)[Les](#br11)[ ](#br11)[besoins](#br11)[ ](#br11)[fonctionnels](#br11)[ ](#br11)[............................................................................................](#br11)[ ](#br11)[10](#br11)

[3.2](#br12)[ ](#br12)[Les](#br12)[ ](#br12)[besoins](#br12)[ ](#br12)[techniques................................................................................................11](#br12)

[**a.**](#br12)[** ](#br12)[Outils**](#br12)[** ](#br12)[et**](#br12)[** ](#br12)[technologies**](#br12)[** ](#br12)[.......................................................................................11**](#br12)

[**b.**](#br14)[** ](#br14)[Les**](#br14)[** ](#br14)[langages**](#br14)[** ](#br14)[de**](#br14)[** ](#br14)[programmation**](#br14)[** ](#br14)[utilisés..........................................................13**](#br14)

[**c.**](#br15)[** ](#br15)[Les**](#br15)[** ](#br15)[cadres**](#br15)[** ](#br15)[applicatifs**](#br15)[** ](#br15)[(Frameworks)**](#br15)[** ](#br15)[...............................................................**](#br15)[** ](#br15)[14**](#br15)

[**1)**](#br15)[** ](#br15)[WPF**](#br15)[..........................................................................................................................](#br15)[ ](#br15)[14](#br15)

[**2)**](#br15)[** ](#br15)[NET**](#br15)[** ](#br15)[8.0**](#br15)[** ](#br15)[....................................................................................................................](#br15)[ ](#br15)[14](#br15)

[**d.**](#br16)[** ](#br16)[Architecture**](#br16)[** ](#br16)[d’application**](#br16)[** ](#br16)[................................................................................15**](#br16)

[IV.](#br17)[ ](#br17)[Conclusion.......................................................................................................................](#br17)[ ](#br17)[16](#br17)

[**Chapitre**](#br18)[** ](#br18)[2**](#br18)[** ](#br18)[:**](#br18)[** ](#br18)[Conception**](#br18)[** ](#br18)[et**](#br18)[** ](#br18)[modélisation...........................................................................**](#br18)[** ](#br18)[17**](#br18)

[I.](#br18)[ ](#br18)[Introduction](#br18)[ ](#br18)[....................................................................................................................](#br18)[ ](#br18)[17](#br18)

[II.](#br18)[ ](#br18)[Gestion](#br18)[ ](#br18)[de](#br18)[ ](#br18)[projet](#br18)[ ](#br18)[.............................................................................................................](#br18)[ ](#br18)[17](#br18)

[2.1](#br18)[ ](#br18)[Cycle](#br18)[ ](#br18)[de](#br18)[ ](#br18)[vie](#br18)[ ](#br18)[..................................................................................................................](#br18)[ ](#br18)[17](#br18)

[2.2](#br18)[ ](#br18)[Les](#br18)[ ](#br18)[modelés](#br18)[ ](#br18)[du](#br18)[ ](#br18)[cycle](#br18)[ ](#br18)[de](#br18)[ ](#br18)[vie](#br18)[ ](#br18)[........................................................................................](#br18)[ ](#br18)[17](#br18)

[**a.**](#br18)[** ](#br18)[Cycle**](#br18)[** ](#br18)[de**](#br18)[** ](#br18)[vie**](#br18)[** ](#br18)[en**](#br18)[** ](#br18)[cascade.....................................................................................**](#br18)[** ](#br18)[17**](#br18)

[**b.**](#br19)[** ](#br19)[Cycle**](#br19)[** ](#br19)[de**](#br19)[** ](#br19)[vie**](#br19)[** ](#br19)[en**](#br19)[** ](#br19)[v................................................................................................**](#br19)[** ](#br19)[18**](#br19)

[2.3](#br20)[ ](#br20)[Diagramme](#br20)[ ](#br20)[de](#br20)[ ](#br20)[*Gantt*](#br20)[...................................................................................................](#br20)[ ](#br20)[19](#br20)

[III.](#br20)[ ](#br20)[Présentation](#br20)[ ](#br20)[UML](#br20)[ ](#br20)[...........................................................................................................](#br20)[ ](#br20)[19](#br20)

[**a.**](#br21)[** ](#br21)[Diagramme**](#br21)[** ](#br21)[de**](#br21)[** ](#br21)[cas**](#br21)[** ](#br21)[d’utilisation**](#br21)[** ](#br21)[.......................................................................20**](#br21)

[**b.**](#br21)[** ](#br21)[Diagramme**](#br21)[** ](#br21)[de**](#br21)[** ](#br21)[classe........................................................................................20**](#br21)

4



<a name="br6"></a> 

[**c.**](#br22)[** ](#br22)[Diagramme**](#br22)[** ](#br22)[de**](#br22)[** ](#br22)[séquence**](#br22)[** ](#br22)[..................................................................................**](#br22)[** ](#br22)[21**](#br22)

[IV.](#br23)[ ](#br23)[Notre](#br23)[ ](#br23)[projet](#br23)[ ](#br23)[de](#br23)[ ](#br23)[location](#br23)[ ](#br23)[de](#br23)[ ](#br23)[voiture](#br23)[ ](#br23)[................................................................................22](#br23)

[a.](#br23)[ ](#br23)[Planification.....................................................................................................................22](#br23)

[b.](#br24)[ ](#br24)[Cycle](#br24)[ ](#br24)[de](#br24)[ ](#br24)[vie](#br24)[ ](#br24)[en](#br24)[ ](#br24)[V](#br24)[ ](#br24)[.............................................................................................................23](#br24)

[c.](#br24)[ ](#br24)[Diagramme](#br24)[ ](#br24)[de](#br24)[ ](#br24)[Gantt.......................................................................................................23](#br24)

[d.](#br25)[ ](#br25)[Modélisation....................................................................................................................24](#br25)

[**1)**](#br25)[** ](#br25)[Les**](#br25)[** ](#br25)[acteurs.........................................................................................................24**](#br25)

[**2)**](#br26)[** ](#br26)[Diagramme**](#br26)[** ](#br26)[de**](#br26)[** ](#br26)[cas**](#br26)[** ](#br26)[d’utilisation**](#br26)[** ](#br26)[.......................................................................**](#br26)[** ](#br26)[25**](#br26)

[**3)**](#br27)[** ](#br27)[Diagramme**](#br27)[** ](#br27)[de**](#br27)[** ](#br27)[classe........................................................................................26**](#br27)

[**4)**](#br28)[** ](#br28)[Diagramme**](#br28)[** ](#br28)[de**](#br28)[** ](#br28)[séquence**](#br28)[** ](#br28)[..................................................................................**](#br28)[** ](#br28)[27**](#br28)

[V.](#br39)[ ](#br39)[Conclusion.......................................................................................................................38](#br39)

[**Chapitre**](#br40)[** ](#br40)[3**](#br40)[** ](#br40)[:**](#br40)[** ](#br40)[Réalisation**](#br40)[** ](#br40)[du**](#br40)[** ](#br40)[projet......................................................................................39**](#br40)

[I.](#br40)[ ](#br40)[Introduction](#br40)[ ](#br40)[....................................................................................................................39](#br40)

[II.](#br40)[ ](#br40)[Application](#br40)[ ](#br40)[Desktop........................................................................................................39](#br40)

[2.1](#br40)[ ](#br40)[Les](#br40)[ ](#br40)[interfaces](#br40)[ ](#br40)[et](#br40)[ ](#br40)[les](#br40)[ ](#br40)[explications.................................................................................39](#br40)

[**1)**](#br40)[** ](#br40)[Authentification**](#br40)[** ](#br40)[...............................................................................................39**](#br40)

[**2)**](#br41)[** ](#br41)[Interface**](#br41)[** ](#br41)[Forget**](#br41)[** ](#br41)[password................................................................................40**](#br41)

[**3)**](#br42)[** ](#br42)[Les**](#br42)[** ](#br42)[interfaces**](#br42)[** ](#br42)[d’administrateur**](#br42)[** ](#br42)[.......................................................................**](#br42)[** ](#br42)[41**](#br42)

[**a.**](#br42)[** ](#br42)[Interface**](#br42)[** ](#br42)[accueil**](#br42)[....................................................................................................](#br42)[ ](#br42)[41](#br42)

[**b.**](#br43)[** ](#br43)[Interface**](#br43)[** ](#br43)[voiture**](#br43)[....................................................................................................42](#br43)

[**c.**](#br44)[** ](#br44)[Interface**](#br44)[** ](#br44)[employée**](#br44)[** ](#br44)[...............................................................................................43](#br44)

[**d.**](#br45)[** ](#br45)[Interface**](#br45)[** ](#br45)[notification**](#br45)[** ](#br45)[..........................................................................................](#br45)[ ](#br45)[44](#br45)

[**4)**](#br46)[** ](#br46)[Les**](#br46)[** ](#br46)[interfaces**](#br46)[** ](#br46)[d’employée**](#br46)[** ](#br46)[................................................................................45**](#br46)

[**a.**](#br46)[** ](#br46)[Interface**](#br46)[** ](#br46)[accueil**](#br46)[....................................................................................................45](#br46)

[**b.**](#br47)[** ](#br47)[Interface**](#br47)[** ](#br47)[client**](#br47)[** ](#br47)[.....................................................................................................](#br47)[ ](#br47)[46](#br47)

[**c.**](#br48)[** ](#br48)[Interface**](#br48)[** ](#br48)[réservation**](#br48)[............................................................................................47](#br48)

[**d.**](#br49)[** ](#br49)[Interface**](#br49)[** ](#br49)[paiements**](#br49)[.............................................................................................](#br49)[ ](#br49)[48](#br49)

[**e.**](#br50)[** ](#br50)[Interface**](#br50)[** ](#br50)[notification**](#br50)[** ](#br50)[..........................................................................................](#br50)[ ](#br50)[49](#br50)

[**Conclusion**](#br51)[** ](#br51)[Générale..........................................................................................................50**](#br51)

[**Webographie**](#br52)[** ](#br52)[.......................................................................................................................51**](#br52)

5



<a name="br7"></a> 

**Liste des ﬁgures**

[Figure](#br12)[ ](#br12)[1:](#br12)[ ](#br12)[Visual](#br12)[ ](#br12)[Studio](#br12)[ ](#br12)[logo](#br12)[ ](#br12)[.............................................................................................................11](#br12)

[Figure](#br12)[ ](#br12)[2:](#br12)[ ](#br12)[Laragon](#br12)[ ](#br12)[logo.....................................................................................................................11](#br12)

[Figure](#br13)[ ](#br13)[3:Entreprise](#br13)[ ](#br13)[Architect](#br13)[ ](#br13)[logo](#br13)[ ](#br13)[.................................................................................................](#br13)[ ](#br13)[12](#br13)

[Figure](#br13)[ ](#br13)[4:](#br13)[ ](#br13)[MS](#br13)[ ](#br13)[Project](#br13)[ ](#br13)[logo](#br13)[ ](#br13)[...............................................................................................................](#br13)[ ](#br13)[12](#br13)

[Figure](#br14)[ ](#br14)[5:C#](#br14)[ ](#br14)[logo..............................................................................................................................](#br14)[ ](#br14)[13](#br14)

[Figure](#br14)[ ](#br14)[6:](#br14)[ ](#br14)[MySQL.............................................................................................................................](#br14)[ ](#br14)[13](#br14)

[Figure](#br15)[ ](#br15)[7:](#br15)[ ](#br15)[WPF](#br15)[ ](#br15)[logo](#br15)[ ](#br15)[.........................................................................................................................](#br15)[ ](#br15)[14](#br15)

[Figure](#br15)[ ](#br15)[8](#br15)[ ](#br15)[:](#br15)[ ](#br15)[.NET](#br15)[ ](#br15)[8.0](#br15)[ ](#br15)[logo..................................................................................................................](#br15)[ ](#br15)[14](#br15)

[Figure](#br16)[ ](#br16)[9](#br16)[ ](#br16)[:](#br16)[ ](#br16)[MVVM](#br16)[ ](#br16)[logo](#br16)[ ](#br16)[....................................................................................................................](#br16)[ ](#br16)[15](#br16)

[Figure](#br16)[ ](#br16)[10:](#br16)[ ](#br16)[MSIX](#br16)[ ](#br16)[logo.......................................................................................................................](#br16)[ ](#br16)[15](#br16)

[Figure](#br19)[ ](#br19)[11:Cycle](#br19)[ ](#br19)[de](#br19)[ ](#br19)[vie](#br19)[ ](#br19)[en](#br19)[ ](#br19)[cascade....................................................................................................](#br19)[ ](#br19)[18](#br19)

[Figure](#br20)[ ](#br20)[12:](#br20)[ ](#br20)[Cycle](#br20)[ ](#br20)[de](#br20)[ ](#br20)[vie](#br20)[ ](#br20)[en](#br20)[ ](#br20)[v.............................................................................................................](#br20)[ ](#br20)[19](#br20)

[Figure](#br23)[ ](#br23)[13](#br23)[ ](#br23)[:](#br23)[ ](#br23)[Planification...................................................................................................................22](#br23)

[Figure](#br24)[ ](#br24)[14:](#br24)[ ](#br24)[Cycle](#br24)[ ](#br24)[de](#br24)[ ](#br24)[vie](#br24)[ ](#br24)[en](#br24)[ ](#br24)[v.............................................................................................................23](#br24)

[Figure](#br24)[ ](#br24)[15](#br24)[ ](#br24)[:](#br24)[ ](#br24)[Diagramme](#br24)[ ](#br24)[de](#br24)[ ](#br24)[GANTT](#br24)[ ](#br24)[partie1](#br24)[ ](#br24)[.....................................................................................23](#br24)

[Figure](#br25)[ ](#br25)[16:](#br25)[ ](#br25)[Diagramme](#br25)[ ](#br25)[de](#br25)[ ](#br25)[GANTT](#br25)[ ](#br25)[partie2......................................................................................24](#br25)

[Figure](#br26)[ ](#br26)[17](#br26)[ ](#br26)[:](#br26)[ ](#br26)[Diagramme](#br26)[ ](#br26)[de](#br26)[ ](#br26)[cas](#br26)[ ](#br26)[d’utilisation](#br26)[ ](#br26)[....................................................................................25](#br26)

[Figure](#br27)[ ](#br27)[18](#br27)[ ](#br27)[:Diagramme](#br27)[ ](#br27)[de](#br27)[ ](#br27)[classe](#br27)[ ](#br27)[.....................................................................................................26](#br27)

[Figure](#br29)[ ](#br29)[19](#br29)[ ](#br29)[:](#br29)[ ](#br29)[diagramme](#br29)[ ](#br29)[de](#br29)[ ](#br29)[séquence(login)](#br29)[ ](#br29)[Pages](#br29)[ ](#br29)[:](#br29)[ ](#br29)[\[27-28\]](#br29)[ ](#br29)[..........................................................28](#br29)

[Figure](#br35)[ ](#br35)[20:](#br35)[ ](#br35)[diagramme](#br35)[ ](#br35)[de](#br35)[ ](#br35)[séquence](#br35)[ ](#br35)[(employer)](#br35)[ ](#br35)[Pages](#br35)[ ](#br35)[:](#br35)[ ](#br35)[\[29-34\]](#br35)[ ](#br35)[...................................................34](#br35)

[Figure](#br39)[ ](#br39)[21](#br39)[ ](#br39)[:](#br39)[ ](#br39)[diagramme](#br39)[ ](#br39)[de](#br39)[ ](#br39)[séquence](#br39)[ ](#br39)[(administrateur)](#br39)[ ](#br39)[Pages](#br39)[ ](#br39)[:](#br39)[ ](#br39)[\[35-38\]](#br39)[ ](#br39)[..........................................38](#br39)

[Figure](#br40)[ ](#br40)[22](#br40)[ ](#br40)[:](#br40)[ ](#br40)[login](#br40)[ ](#br40)[..............................................................................................................................39](#br40)

[Figure](#br41)[ ](#br41)[23](#br41)[ ](#br41)[:](#br41)[ ](#br41)[forget](#br41)[ ](#br41)[password............................................................................................................](#br41)[ ](#br41)[40](#br41)

[Figure](#br42)[ ](#br42)[24](#br42)[ ](#br42)[:](#br42)[ ](#br42)[interface](#br42)[ ](#br42)[d’accueil](#br42)[ ](#br42)[pour](#br42)[ ](#br42)[l'administrateur](#br42)[ ](#br42)[...................................................................](#br42)[ ](#br42)[41](#br42)

[Figure](#br43)[ ](#br43)[25](#br43)[ ](#br43)[:](#br43)[ ](#br43)[interface](#br43)[ ](#br43)[des](#br43)[ ](#br43)[voitures](#br43)[ ](#br43)[pour](#br43)[ ](#br43)[l'administrateur](#br43)[ ](#br43)[..............................................................42](#br43)

[Figure](#br44)[ ](#br44)[26](#br44)[ ](#br44)[:](#br44)[ ](#br44)[interface](#br44)[ ](#br44)[des](#br44)[ ](#br44)[employés](#br44)[ ](#br44)[pour](#br44)[ ](#br44)[l'administrateur.............................................................43](#br44)

[Figure](#br45)[ ](#br45)[27](#br45)[ ](#br45)[:](#br45)[ ](#br45)[interface](#br45)[ ](#br45)[de](#br45)[ ](#br45)[notification](#br45)[ ](#br45)[pour](#br45)[ ](#br45)[l'administrateur.........................................................](#br45)[ ](#br45)[44](#br45)

[Figure](#br46)[ ](#br46)[28](#br46)[ ](#br46)[:](#br46)[ ](#br46)[interface](#br46)[ ](#br46)[d'accueil](#br46)[ ](#br46)[pour](#br46)[ ](#br46)[l'employé..............................................................................45](#br46)

[Figure](#br47)[ ](#br47)[29](#br47)[ ](#br47)[:](#br47)[ ](#br47)[interface](#br47)[ ](#br47)[client](#br47)[ ](#br47)[pour](#br47)[ ](#br47)[l'employé](#br47)[ ](#br47)[...................................................................................](#br47)[ ](#br47)[46](#br47)

[Figure](#br48)[ ](#br48)[30](#br48)[ ](#br48)[:](#br48)[ ](#br48)[interface](#br48)[ ](#br48)[de](#br48)[ ](#br48)[réservation](#br48)[ ](#br48)[pour](#br48)[ ](#br48)[l'employé](#br48)[ ](#br48)[.....................................................................47](#br48)

[Figure](#br49)[ ](#br49)[31](#br49)[ ](#br49)[:](#br49)[ ](#br49)[interface](#br49)[ ](#br49)[de](#br49)[ ](#br49)[paiements](#br49)[ ](#br49)[pour](#br49)[ ](#br49)[l'employé](#br49)[ ](#br49)[.......................................................................](#br49)[ ](#br49)[48](#br49)

[Figure](#br50)[ ](#br50)[32](#br50)[ ](#br50)[:](#br50)[ ](#br50)[interface](#br50)[ ](#br50)[de](#br50)[ ](#br50)[notification](#br50)[ ](#br50)[pour](#br50)[ ](#br50)[l'employé](#br50)[ ](#br50)[....................................................................](#br50)[ ](#br50)[49](#br50)

**Liste des Tables**

[Tableau](#br8)[ ](#br8)[1:la](#br8)[ ](#br8)[liste](#br8)[ ](#br8)[des](#br8)[ ](#br8)[acronymes](#br8)[ ](#br8)[dans](#br8)[ ](#br8)[le](#br8)[ ](#br8)[projet](#br8)[ ](#br8)[...............................................................................7](#br8)

[**Tableau**](#br25)[** ](#br25)[2:**](#br25)[** ](#br25)[table**](#br25)[** ](#br25)[des**](#br25)[** ](#br25)[acteurs**](#br25)[** ](#br25)[.......................................................................................................24](#br25)

6



<a name="br8"></a> 

**Liste des Acronymes**

*Tableau 1:la liste des acronymes dans le projet*

**Abréviation**

**Désignation**

**UML**

**Unified Modeling**

**Language**

**C#**

**C Sharp**

**MySQL**

**My Structured**

**Query Language**

**MVVM**

**Model-View-**

**ViewModel**

**.NET 8.0**

**Network Enabled**

**Technologies**

**(version 8.0)**

**WPF**

**Windows**

**Presentation**

**Foundation**

**MSIX**

**Microsoft Installer**

**for XML**

7



<a name="br9"></a> 

**Introduction Générale**

La location de voitures est devenue un secteur en pleine expansion, dont la

compétitivité augmente jour après jour. Ce service permet aux clients, professionnels ou

particuliers, de réserver et prendre un véhicule pour une période donnée, allant de

quelques jours à plusieurs mois.

À l'approche de la Coupe du Monde en 2030, le Maroc voit affluer de plus en plus

de touristes, ce qui augmente la demande pour les agences de voyages et de location de

voitures. Pour répondre efficacement aux besoins des visiteurs étrangers, une bonne

organisation au niveau des agences de location de voitures est cruciale.

C’est pourquoi nous nous engageons à réaliser une application de bureau pour

gérer les voitures, les employés, les clients et l'administration.

Le présent rapport synthétise tout le travail que nous avons effectué. Il est

composé de plusieurs chapitres :

**Le premier chapitre** établit le cadre général du projet en présentant la

problématique, les objectifs, la solution envisagée, l'analyse des besoins ainsi que les

algorithmes associés.

**Le deuxième chapitre** détaille l'analyse fonctionnelle et technique du projet, la

conception et les différents diagrammes UML utilisés.

**Le troisième chapitre** expose les différentes interfaces de l’application.

Nous terminons par une conclusion générale.

8



<a name="br10"></a> 

**Chapitre 1 : Analyse et cadre générale de projet**

**I. INTRODUCTION**

Ce chapitre présente le projet de développement d'une application de bureau

pour la gestion d'une agence de location de voitures. Nous aborderons les

spécifications fonctionnelles et techniques, les défis actuels rencontrés par les

agences de location, la solution proposée et un aperçu du planning du projet.

**II. Étude de cahier de charge**

**2.1**

**Problématique**

La plupart des agences de location de voiture utilisent la méthode

traditionnelle, qui est basée sur des journaux, ni organisation ni

hiérarchie... les documents et les fichiers étant éparpillés, rendant ainsi les

tâches plus difficiles et engendrer par la suite une grande perte de temps

et d’argent.

**2.2**

**L’objectif**

L'objectif principal de ce projet est de fournir un système complet qui

contient une application de bureau permettant d’effectuer les tâches

suivantes : gérer les voitures, les employés, les clients et l'administration.

**2.3 Solution**

Après une étude approfondie, qui a abouti à la conception d'une

application de bureau offrant les fonctionnalités standards d'une société

de location de voitures, celle-ci promet de simplifier le travail au sein de

l'agence. L'application comportera deux espaces distincts : un espace

réservé aux employés, leur permettant de gérer les clients, les réservations

et les paiements, et un autre espace destiné à l'administrateur, lui donnant

9



<a name="br11"></a> 

accès à la gestion du personnel, des véhicules et de toutes les tâches

pouvant être effectuées par ce dernier.

**III. Analyse des besoins**

Dans la phase d’analyse, on cherche d’abord à bien comprendre et à décrire

de façon précise les besoins des utilisateurs de l’application. Que souhaitent-

ils faire avec cette application ? Quelles fonctionnalités veulent-ils ? Pour quel

usage ? Comment l’action devrait-elle fonctionner ? C’est ce qu’on appelle «

l’analyse des besoins ». Il y a deux types de besoins.

**3.1**

**Les besoins fonctionnels**

La solution proposée consiste á réaliser une applications desktop qui

offerts :

❖ **Gestion des clients :**

•

•

Voir les voitures disponibles.

Réserver, signer un contrat et payer.

❖ **Gestion des voitures :**

Enregistrement des informations sur les

•

véhicules (numéro de matricule, couleur,

équipements, type…) est une tâche effectuée

par l'administrateur.

❖ **Gestion des employés :**

•

•

Renseigner le client

Voir la disponibilité, établir, vérifier les

réservations.

•

•

Confirmer une réservation.

Valider le paiement.

❖ **Gestion d'administration :**

•

Enregistrement des informations des

10



<a name="br12"></a> 

employés et des voitures. (Ajouter, modifier,

supprimer).

•

Maintenance des voitures.

**3.2**

**Les besoins techniques**

**a. Outils et technologies**

**Visual Studio** est un environnement de

développement intégré (IDE) avancé de Microsoft,

conçu pour les développeurs de logiciels travaillant

principalement sur les plateformes Windows et

.NET .Il prend en charge divers langages de

*Figure 1: Visual Studio*

*logo*

programmation, notamment C#, VB.NET, et C++. Visual Studio est

reconnu pour ses outils robustes de débogage, de test, et de gestion de

versions, qui facilitent le développement d'applications de bureau, web

et mobiles. Avec une interface utilisateur intuitive et des options de

personnalisation via des extensions, Visual Studio aide les

développeurs à optimiser leur flux de travail et à améliorer la qualité

de leurs projets.

**Laragon** est une plateforme de développement

web locale qui simplifie la configuration et la

gestion des environnements de développement

pour les développeurs. Il intègre un serveur web

*Figure 2: Laragon logo*

(Apache ou Nginx), un système de gestion de base

de données (**MySQL** ou MariaDB), et un ensemble d'outils pour le

développement web (**C#**, Node.js, Python, etc.) dans une interface

conviviale.

**Laragon** permet aux développeurs de démarrer rapidement leurs

projets web sur leur machine locale, en offrant une installation simple,

des fonctionnalités de gestion avancées et une compatibilité avec un

11



<a name="br13"></a> 

large éventail de technologies web.

**Enterprise Architect** est un outil de

modélisation UML largement utilisé pour la

conception et la modélisation de systèmes

d'information et de logiciels. Cet outil offre une

*Figure 3:Entreprise Architect*

*logo*

large gamme de fonctionnalités pour les architectes d'entreprise, y

compris la création de diagrammes UML, la modélisation de processus

métier, la gestion des exigences et des tests.

**Microsoft Office Project**, aussi appelé

**Microsoft Project**, est un logiciel de

gestion de projet extrêmement complet

*Figure 4: MS Project logo*

et très prisé dans les entreprises et

organisations de divers secteurs. Ce programme permet aux

utilisateurs de planifier, de suivre et de gérer des projets de

différentes envergures et complexités de manière efficace.

Microsoft Project offre plusieurs avantages, tels que :

La capacité de planifier les différentes étapes d’un projet, de fixer

des échéances et des calendriers, et de suivre leur progression en

temps réel.

La possibilité d’affecter les ressources nécessaires à chaque phase

du projet et de surveiller les coûts associés à chaque activité.

L'option de visualiser les projets via des diagrammes de Gantt et des

diagrammes de réseau pour une meilleure compréhension de

l'avancement du projet.

La personnalisation des tableaux de bord pour qu'ils répondent aux

exigences spécifiques de chaque projet

12



<a name="br14"></a> 

**b. Les langages de programmation utilisés**

**C# (C Sharp)** est un langage de

programmation multiparadigme développé

par Microsoft. Il englobe des disciplines telles

que la programmation impérative,

déclarative, fonctionnelle, générique,

*Figure 5:C# logo*

orientée objet (basée sur la classe) et orientée vers les composants.

C# est largement utilisé pour le développement d'applications

logicielles, en particulier dans l'écosystème de développement sur

la plateforme .NET de Microsoft. Il offre aux développeurs un

ensemble riche de fonctionnalités et une syntaxe intuitive pour la

création d'applications robustes et évolutives pour une variété de

plates-formes, y compris les applications de bureau, les applications

web et les applications mobiles

**MySQL** est un système de gestion de base

de données relationnelle open source très

populaire. Il est utilisé par de nombreuses

entreprises et organisations pour stocker et

*Figure 6: MySQL*

gérer efficacement de grandes quantités de

données.

**MySQL** est réputé pour sa fiabilité, sa stabilité et sa performance,

ainsi que pour sa facilité d'utilisation. Il permet aux utilisateurs de

créer, de modifier et de supprimer des bases de données, des tables

et des colonnes de manière simple et intuitive.

En outre, **MySQL** prend en charge le langage de requête SQL, qui

est utilisé pour interroger et extraire des données de la base de

données. C'est une solution de base de données flexible qui est

utilisée par des millions d'utilisateurs à travers le monde.

13



<a name="br15"></a> 

**c. Les cadres applicatifs (Frameworks)**

**1) WPF**

Le **Windows Presentation Foundation**

**(WPF)** est un framework de développement

logiciel conçu par Microsoft pour créer des

applications Windows avec des interfaces

*Figure 7: WPF logo*

utilisateur graphiques modernes et interactives. Il utilise un langage

de balisage appelé **XAML** (**eXtensible Application Markup**

**Language**) pour définir l'apparence et le comportement des

éléments de l'interface utilisateur. WPF offre des fonctionnalités

telles que la mise en page flexible, les animations, la liaison de

données, et facilite la création d'applications riches en

fonctionnalités.

\2) NET 8\.0

Le **Framework .NET 8.0** est une plateforme

de développement logiciel conçue par

Microsoft pour créer des applications sur

différentes plateformes telles que Windows,

*Figure 8 : .NET 8.0*

*logo*

macOS et Linux. Il fournit un ensemble d'outils et de

bibliothèques pour simplifier le processus de développement

et permet aux développeurs de créer des applications

robustes et évolutives en utilisant des langages de

programmation tels que **C#**, F# et VB.NET.

14



<a name="br16"></a> 

**d. Architecture d’application**

L'architecture **MVVM (Modèle-**

**Vue-VueModèle)** est un modèle

de conception utilisé pour

développer des applications

logicielles, en particulier pour les

applications de bureau et mobiles.

*Figure 9 : MVVM logo*

Dans **MVVM** :

•

•

Le **Modèle** gère les données et la logique métier.

La **Vue** représente l'interface utilisateur (**UI**) visible par

l'utilisateur.

•

Le **VueModèle** agit comme un intermédiaire entre le Modèle

et la Vue, gérant la logique de présentation et fournissant les

données à afficher.

**MVVM** facilite la séparation des préoccupations entre l'interface

utilisateur et la logique métier, ce qui rend le code plus clair, maintenable

et testable. Cela permet également une collaboration plus efficace entre

les développeurs d'interfaces utilisateur et les développeurs de logiciels.

**e. Format de package d'application**

**MSIX** est un format de package

d’applications Windows qui offre une

expérience d’empaquetage moderne pour

*Figure 10: MSIX logo*

toutes les applications Windows. Le format

de package MSIX conserve les packages d’applications et/ou les

fichiers d’installation existants tout en proposant de nouvelles

fonctionnalités d’empaquetage et de déploiement modernes pour les

applications Win32, WPF et UWP.

MSIX est un format d’empaquetage pour applications Windows

conçu pour être sécurisé et fiable.

15



<a name="br17"></a> 

**IV. Conclusion**

Ce premier chapitre a fourni un panorama complet du projet, abordant sa

problématique, son contexte et les outils techniques utilisés. Le prochain chapitre

se concentrera sur l'analyse et la conception, où nous examinerons en détail les

concepts essentiels à la gestion de location de voitures, afin d'améliorer et

d'optimiser nos processus.

16



<a name="br18"></a> 

**Chapitre 2 : Conception et modélisation**

**I. Introduction**

Dans ce chapitre, nous aborderons les fondamentaux de la gestion de

projet et du développement logiciel, en mettant un accent particulier sur

l'analyse et la conception de systèmes.

**II. Gestion de projet**

La Gestion de projet est indispensable aux professionnelles, elle joue un

rôle de plus en plus déterminant au quotidien dans toutes les activités

professionnelles. Chaque année, les entreprises ont de nombreux challenges

à relever :

•Lancement de nouveaux services ou produits innovants (développement

d'un nouveau logiciel par exemple).

• Mise à jour de technologies déjà implantées pour rester compétitif.

• Adaptation à des contraintes légales nationales, ou internationales.

**2.4 Cycle de vie**

**Cycle de vie (lifecycle)** désigne la période de naissance d’un logiciel à

sa mise hors service définitive, en passant par sa construction et son

utilisation. La vie d’un logiciel est composée de différentes étapes. La

succession de ces étapes forme le cycle de vie du logiciel. Il faut contrôler

la succession de ces différentes étapes.

**2.2 Les modelés du cycle de vie**

**a. Cycle de vie en cascade**

C’est le modèle le plus simple, il se caractérise par un déroulement

de phases successives. Il est adapté pour des projets de petite taille, et

dont le domaine est bien maîtrisé.

17



<a name="br19"></a> 

*Figure 11:Cycle de vie en cascade*

**b. Cycle de vie en v**

Le modèle du cycle en V est un modèle imaginé suite au problème

de réactivité du modèle en cascade.

Il permet, en cas d'anomalie, de limiter un retour aux étapes

précédentes. Les phases de la partie montante doivent renvoyer de

l'information sur les phases en vis-à-vis lorsque des défauts sont

détectés, afin d'améliorer le logiciel. C’est en phase de spécification que

l’on se préoccupe des procédures de validation. C’est en phase de

conception générale que l’on se préoccupe des procédures

d’intégration. C’est en phase de conception détaillée que l’on prépare

les tests unitaires.

Il est adapté pour des projets dont le domaine est bien maîtrisé.

18



<a name="br20"></a> 

*Figure 12: Cycle de vie en v*

**2.3 Diagramme de [*Gantt***](https://www.google.com/search?sca_esv=345267d81bec8f30&sxsrf=ADLYWIIbN5WW3ca2iDYv-cGypVQxzrr71Q:1716119924190&q=diagramme+de+Gantt&spell=1&sa=X&ved=2ahUKEwizoOTz1JmGAxX7T6QEHQCKCM8QkeECKAB6BAgOEAE)**

Le **diagramme de Gantt** est une méthode de représentation

graphique qui illustre le calendrier des phases, activités, tâches, et

ressources d'un projet. Sur l'axe horizontal, on positionne les jours,

semaines ou mois, tandis que l'axe vertical liste les différentes tâches.

Chaque tâche est représentée par une barre, dont la longueur correspond

à sa durée estimée.

Les tâches peuvent se suivre ou se dérouler simultanément, en

totalité ou partiellement. Créé par Henry L. Gantt en 1917, ce diagramme

demeure aujourd'hui l'un des outils les plus couramment utilisés pour la

gestion de projet.

**III. Présentation UML**

**UML (Unified Modeling Language)** est un langage graphique standard

de modélisation utilisé pour représenter des systèmes logiciels. Il offre une

méthode normalisée pour visualiser la conception d'un système en utilisant

différents types de diagrammes.

19



<a name="br21"></a> 

***a. Diagramme de cas d’utilisation***

Le **diagramme de cas d'utilisation** est un outil de modélisation

essentiel qui illustre les interactions entre les utilisateurs et un système. Il

organise les fonctionnalités du système en cas d'utilisation, qui sont des

unités logiques décrivant des actions spécifiques que les utilisateurs

peuvent réaliser avec le système. Chaque cas d'utilisation capture un

besoin utilisateur, offrant une vue centrée sur l'utilisateur plutôt qu'une

approche technique.

Composants Principaux :

•

•

•

**Acteurs** : Les utilisateurs ou autres systèmes qui

interagissent avec le système.

**Cas d'utilisation** : Les fonctionnalités spécifiques du

système, pertinentes pour les acteurs.

**Relations** : Les connexions entre les cas d'utilisation

qui montrent comment ils sont liés ou dépendent les

uns des autres.

Les diagrammes de cas d'utilisation sont essentiels pour s'assurer

que le développement informatique répond précisément aux attentes des

utilisateurs. Ils jouent un rôle crucial en garantissant la fonctionnalité et

l'efficacité du système final.

**b. Diagramme de classe**

**Un diagramme de classe** est un type de diagramme structurel

utilisé en génie logiciel pour décrire la structure statique d'un système. Il

montre les classes du système, leurs propriétés, et les relations entre elles.

Cela inclut la visualisation des interactions comme les associations, les

héritages, et les dépendances

**Composants Principaux :**

❖ **Classes :** Représentées par des rectangles, les classes

20



<a name="br22"></a> 

comprennent trois parties :

• **Nom de la Classe :** Le titre de la classe, souvent un nom de

substantif.

• **Attributs :** Variables ou propriétés stockées dans la classe.

• **Méthodes :** Fonctions ou procédures que la classe peut

exécuter.

❖ **Relations :**

•

•

**Association :** Une connexion générale entre deux classes,

représentée par une ligne.

**Agrégation :** Une forme spéciale d'association qui

représente une relation "tout-partie", marquée par un

diamant blanc à une extrémité de la ligne.

•

•

**Composition :** Une forme plus forte d'agrégation avec un

diamant noir, indiquant une possession exclusive.

**Héritage :** Représenté par une flèche pointue, indiquant une

relation de type "est-un".

❖ **Visibilité :** Indique si les attributs ou méthodes sont accessibles

depuis d'autres classes, souvent noté par des symboles (**+, -, #**).

**c. Diagramme de séquence**

**Le diagramme de séquence** est un outil crucial en génie logiciel,

relevant des diagrammes comportementaux et plus spécifiquement des

diagrammes d'interactions. Il est utilisé pour représenter les interactions

entre les différents objets et acteurs d'un système informatique, montrant

comment ils communiquent entre eux au fil du temps.

Composants Principaux :

21



<a name="br23"></a> 

❖ **Lignes de Vie :** Représentées par des lignes verticales qui

descendent des entêtes des objets ou acteurs, elles indiquent la

présence de l'objet au fil du temps.

❖ **Barres d'Activation :** Des rectangles fins sur les lignes de vie

qui montrent quand un objet est actif dans le processus.

❖ **Messages :** Flèches horizontales qui montrent les interactions

entre les objets, avec des annotations pour décrire l'action ou la

méthode appelée.

**IV. Notre projet de location de voiture**

**a. Planification**

*Figure 13 : Planiﬁcaꢀon*

22



<a name="br24"></a> 

**b. Cycle de vie en V**

Nous avons choisi le cycle en V. Car ce modèle est

caractérisé par le parallélisme, dans ce modèle verticalement

nous trouvons les étapes du développement et

horizontalement la vérification.

*Figure 14: Cycle de vie en v*

**c. Diagramme de Gantt**

*Figure 15 : Diagramme de GANTT parꢀe1*

23



<a name="br25"></a> 

*Figure 16: Diagramme de GANTT parꢀe2*

**d. Modélisation**

**1) Les acteurs**

Identification des acteurs et leur rôle :

***Tableau 2: table des acteurs***

**Acteurs**

**Rôle**

**Administrateur**

**Employé**

• Gérer les voitures

• Gérer les employées

• Gérer les clients

• Gérer les réservations

• Gérer les paiements

**Client**

• Voir les voitures disponibles

• Faire une réservation

24



<a name="br26"></a> 

**2) Diagramme de cas d’utilisation**

*Figure 17 : Diagramme de cas d’uꢀlisaꢀon*

25



<a name="br27"></a> 

***3) Diagramme de classe***

*Figure 18 :Diagramme de classe*

26



<a name="br28"></a> 

**4) Diagramme de séquence**

**Pour login**

27



<a name="br29"></a> 

*Figure 19 : diagramme de séquence(login) Pages : [27-28]*

28



<a name="br30"></a> 

**Pour employer**

29



<a name="br31"></a> 



<a name="br32"></a> 

31



<a name="br33"></a> 

32



<a name="br34"></a> 

33



<a name="br35"></a> 

*Figure 20: diagramme de séquence (employer) Pages : [29-34]*

34



<a name="br36"></a> 

**Pour l’administrateur**

35



<a name="br37"></a> 

36



<a name="br38"></a> 

37



<a name="br39"></a> 

*Figure 21 : diagramme de séquence (administrateur) Pages : [35-38]*

**V. Conclusion**

Dans ce chapitre, nous avons développé les divers composants de notre

système. Le chapitre suivant sera consacré à la mise en œuvre de notre

modèle.

38



<a name="br40"></a> 

**Chapitre 3 : Réalisation du projet**

**I. Introduction**

La phase de réalisation est une étape très importante dans le cycle de vie

de nos applications, cette phase permet de concrétiser notre projet par le

développement des interfaces et par des réalisations concrètes des

fonctionnalités du système. Pour réaliser ces applications nous avons en

recourt à plusieurs outils de développement. Dans cette dernière partie on va

présenter le résultat final de notre application.

**II. Application Desktop**

**2.1 Les interfaces et les explications**

**1) Authentification**

*Figure 22 : login*

L'interface d'authentification constitue la première étape d'interaction

entre l'utilisateur et notre application de bureau.

39



<a name="br41"></a> 

**2) Interface Forget password**

*Figure 23 : forget password*

L'interface de récupération de mot de passe est une partie

essentielle de notre application de bureau. Elle aide les utilisateurs à

récupérer leur accès s'ils oublient leurs identifiants.

40



<a name="br42"></a> 

**3) Les interfaces d’administrateur**

**a. Interface accueil**

*Figure 24 : interface d’accueil pour l'administrateur*

L'interface d'accueil pour l'administrateur fournit un aperçu complet

des véhicules sortis, des réservations effectuées et du nombre de clients

enregistrés dans la base de données. Elle présente des graphiques illustrant

le nombre de clients par marque, ainsi que divers indicateurs clés. De plus,

elle offre des options pour imprimes des rapports sur les voitures et les

employés.

41



<a name="br43"></a> 

**b. Interface voiture**

*Figure 25 : interface des voitures pour l'administrateur*

L'interface des voitures pour l'administrateur affiche le nombre total

de véhicules enregistrés dans la base de données. Elle propose également

des fonctionnalités permettant d'ajouter une nouvelle voiture, ainsi que de

modifier ou supprimer les entrées existantes, facilitant ainsi la gestion

complète des voitures.

42



<a name="br44"></a> 

**c. Interface employée**

*Figure 26 : interface des employés pour l'administrateur*

L'interface des employés pour l'administrateur affiche le nombre

total d'employés enregistrés dans la base de données. Elle propose

également des fonctionnalités permettant d'ajouter un nouvel employé,

ainsi que de modifier ou supprimer les entrées existantes, facilitant ainsi

la gestion complète du personnel.

43



<a name="br45"></a> 

**d. Interface notification**

*Figure 27 : interface de noꢀﬁcaꢀon pour l'administrateur*

L'interface de notification indique, sous l'onglet "Général", les

véhicules disponibles pour la location. Dans l'onglet "Maintenance", elle

affiche des alertes pour les véhicules qui requièrent une maintenance.

Cette fonctionnalité assure une gestion efficace du parc automobile en

offrant des mises à jour en temps réel sur l'état des véhicules, facilitant

ainsi l'organisation de la location et de la maintenance des voitures.

44



<a name="br46"></a> 

**4) Les interfaces d’employée**

**a. Interface accueil**

*Figure 28 : interface d'accueil pour l'employé*

L'interface d'accueil pour l'employé présente un résumé détaillé des

réservations effectuées et du total de clients enregistrés dans la base de

données. Un graphique y illustre le nombre de clients ayant loué une ou

plusieurs voitures chaque mois, accompagné d'autres indicateurs clés. De

plus, cette interface offre la possibilité d'imprimer des rapports

approfondis sur les clients et les réservations.

45



<a name="br47"></a> 

**b. Interface client**

*Figure 29 : interface client pour l'employé*

L'interface client affiche le nombre total de clients enregistrés dans la

base de données. Elle offre également des options pour ajouter, modifier

ou supprimer des clients, facilitant ainsi la gestion efficace de la clientèle.

Cette interface centralise les informations client, améliorant l'organisation

et la communication au sein de l'entreprise.

46



<a name="br48"></a> 

**c. Interface réservation**

*Figure 30 : interface de réservaꢀon pour l'employé*

L'interface de réservation permet d'ajouter, de modifier ou de

supprimer des réservations, simplifiant ainsi leur gestion. Elle centralise

toutes les informations relatives aux réservations, ce qui contribue à

améliorer l'organisation et la communication dans l'entreprise.

47



<a name="br49"></a> 

**d. Interface paiements**

*Figure 31 : interface de paiements pour l'employé*

L'interface de paiements permet d'ajouter, d'enregistrer, ou de supprimer

des paiements.

48



<a name="br50"></a> 

**e. Interface notification**

*Figure 32 : interface de noꢀﬁcaꢀon pour l'employé*

L'interface de notification indique, sous l'onglet "Général", les

véhicules disponibles pour la location.

49



<a name="br51"></a> 

**Conclusion Générale**

Ce projet constitue une étape cruciale de notre parcours de formation, offrant

une excellente opportunité pour mettre en pratique des connaissances théoriques

préalablement acquises tout en nous permettant de développer de nouvelles

compétences techniques. Pour mener à bien ce projet, nous avons élaboré un plan

détaillé, facilitant l'organisation de notre temps limité et optimisant notre efficacité.

Parallèlement, nous avons découvert l'importance cruciale de la recherche et de

la communication dans l'accès à des informations pertinentes, ainsi que la gestion du

temps et la planification des tâches pour une exécution fluide des travaux. Grâce à un

environnement de travail propice et à une coordination efficace, nous avons réussi à

achever le projet conformément au cahier des charges, tout en y ajoutant des

fonctionnalités supplémentaires pour en augmenter l'efficacité et l'attrait.

Bien que notre projet réponde déjà à tous les besoins énoncés dans le cahier des

charges, nous envisageons d'apporter des améliorations futures pour améliorer la

performance de l'application.

Les résultats obtenus jusqu'à présent sont prometteurs et nous motivent à

poursuivre le développement de ce projet.

50



<a name="br52"></a> 

**Webographie**

**MySQL : <https://www.w3schools.com/>**

**MSIX : <https://youtu.be/4t2TI8ImwMY>**

**C# WPF :**

[https://www.youtube.com/watch?v=t9ivUosw_iI&list=PLih2KERbY1HHOOJ2C6FOrVXIwg4AZ](https://www.youtube.com/watch?v=t9ivUosw_iI&list=PLih2KERbY1HHOOJ2C6FOrVXIwg4AZ-hk1)

[-hk1](https://www.youtube.com/watch?v=t9ivUosw_iI&list=PLih2KERbY1HHOOJ2C6FOrVXIwg4AZ-hk1)

**WPF MVVM :**

[https://www.youtube.com/watch?v=fZxZswmC_BY&list=PLA8ZIAm2I03hS41Fy4vFpRw8AdYN](https://www.youtube.com/watch?v=fZxZswmC_BY&list=PLA8ZIAm2I03hS41Fy4vFpRw8AdYNBXmNm)

[BXmNm](https://www.youtube.com/watch?v=fZxZswmC_BY&list=PLA8ZIAm2I03hS41Fy4vFpRw8AdYNBXmNm)

https://learn.microsoft.com/en-us/dotnet/csharp/

<https://learn.microsoft.com/fr-fr/dotnet/framework/get-started/overview>

<https://fr.wikipedia.org/wiki/Microsoft_.NET>

<https://learn.microsoft.com/fr-fr/dotnet/architecture/maui/mvvm>

51

