Quality Assistant [![Build Status](https://travis-ci.org/Uko/QualityAssistant.svg?branch=master)](https://travis-ci.org/Uko/QualityAssistant) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.809410.svg)](https://doi.org/10.5281/zenodo.809410)
=====================

Hi, I'm your personal quality assistant. I run SmallLint rules on the code that you modify, and notify you about the critics right in the system browser. If you find any bugs in me please [report them](https://github.com/Uko/QualityAssistant/issues).

![logo](graphics/logo100.png)

- [Installation](#installation)
- [In Nautilus](#in-nautilus)
 - [Critics Details](#critics-details)
- [In Inspector](#in-inspector)
- [In Spotter](#in-spotter)
- [Story Behind the Name](#story-behind-the-name)

Installation
------------
:exclamation: QualityAssistant comes pre-installed with **Pharo5** (from 23.07.2015 v50185)

The easiest way to install is to use **Configuration Browser**. Otherwise you can execute the following script.

```Smalltalk
Metacello new
  smalltalkhubUser: 'Pharo'
  project: 'MetaRepoForPharo40';
  configuration: 'QualityAssistant';
  get;
  load
```

In Nautilus
-----
Quality Assistant uses Nautilus plugin to notify users about the critics in their code. The plugin is automatically activated and will be available in all browsers **opened after** loading Quality Assistant. By default the plugin is positioned at the bottom of Nautilus browser, and will display a list of critics for a selected class or method.

![nautilus demo](graphics/readmeImages/nautilusDemo.png)

###Critics Details

If possible, the critic text will be prefixed with the _name_ of the faulty part (variable, message, method, etc…). These prefixes as well as **source code highlights** are **not implemented** for many critics, although it is possible to do it. If you will find such a case, please report it here: https://github.com/Uko/Renraku/issues.

####Severity levels
There are 3 severity levels of critics that are displayed at the left side of the list:

* ![eclipse small info icon](graphics/readmeImages/infoIconEcl.png)
  ![glamour small info icon](graphics/readmeImages/infoIconGlm.png)
  ![   idea small info icon](graphics/readmeImages/infoIconIde.png)
  Information
* ![eclipse small warning icon](graphics/readmeImages/warnIconEcl.png)
  ![glamour small warning icon](graphics/readmeImages/warnIconGlm.png)
  ![   idea small warning icon](graphics/readmeImages/warnIconIde.png)
  Warning
* ![eclipse small error icon](graphics/readmeImages/errIconEcl.png)
  ![glamour small error icon](graphics/readmeImages/errIconGlm.png)
  ![   idea small error icon](graphics/readmeImages/errIconIde.png)
  Error

####Actions
![eclipse small question icon](graphics/readmeImages/questIconEcl.png)
![glamour small question icon](graphics/readmeImages/questIconGlm.png)
![   idea small question icon](graphics/readmeImages/questIconIde.png)
**Rationale**. Clicking on the question mark will bring up the rationale on the critic.

![eclipse small cancel icon](graphics/readmeImages/cnclIconEcl.png)
![glamour small cancel icon](graphics/readmeImages/cnclIconGlm.png)
![   idea small cancel icon](graphics/readmeImages/cnclIconIde.png)
**Ban**. Allows you to ban the validation of the current class or method by the rule of the critic. I.e. the critic will not be reported any more. When banning a critic for a method, you can decide to ban it on the class level, so the policy will apply to all the methods of a class. _This functionality is implemented on top of Manifest false positives_.

![repair icon](graphics/readmeImages/repairIcon.png) **Autofix**. Some critics provide a solution to the issue reported by them. By pressing "autofix" button you will open a diff preview of the changes that will happen if you apply the proposed issue resolution. However, **previewing changes** (i.e. before-after diff) is **not** as **nice** as it was. Sorry for inconveniences, I hope that we will have a solution for this in the future.
![](graphics/readmeImages/autofixPrompt.png)


_:exclamation: Now the plugins in Inspector and Spotter can be toggled in **settings** (QualityAssistant group) and are **disabled** by default._
![inspector demo](graphics/readmeImages/settingsDemo.png)

In Inspector
------------
If you inspect a method or a class which has critics, you will see a tab with a red circler and a number corresponding to critics amount. A critics presentation pane contains a list of critics prefixed with icons that represent severity and tagged with the group they belong to. A critic itself provides a source code presentetion and a description of itself.

![inspector demo](graphics/readmeImages/inspectorDemo.png)

In Spotter
----------

While diving into a class of a method inside Spotter you can see the related critics in the _QA Critics_ group.

![spotter demo](graphics/readmeImages/spotterDemo.png)


Story Behind the Name
---------------------

Definitely, the idea behind Quality Assistant is to have a bot that assists you with the quality of your code. But there is also the other side of the Moon.

In Ukraine we are used to call quality assurance engineers just QAs. And we are using it so much that we start to decline it in our own language. So you can think about QA as a word like _"cuey"_ (Ukr: _"кюей"_) instead of abbreviation. And so it's common to say: _"the QA will check this"_ or _"a QA has found a bug"_ or even _"our QA has a birthday today"_.

In the first prototypes of Quality Assistant there was a global variable `QA` and so you could ask it:

```Smalltalk
QA revalidate: aMethod
```

```Smalltalk
QA criticsOf: aClass
```

This way you have an artificial quality assurance engineer, that you can talk to. And that guy (or girl) knows something about the quality of your code ;)
