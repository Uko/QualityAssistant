_:exclamation: this is an **alpha** version, it may contain bugs, please report them [here](https://github.com/Uko/QualityAssistant/issues) :exclamation:_

QualityAssistant
================

![logo](graphics/logo100.png)

Hi, I'm your personal quality assistant. I run Smalllint rules on the code that you modify, and notify you about quality changes.

To install:

    Gofer new
      smalltalkhubUser: 'YuriyTymchuk'
      project: 'Configuration';
      configurationOf: 'QualityAssistant';
      load.
    #ConfigurationOfQualityAssistant asClass loadDevelopment.
    #QualityAssistantPlugin asClass install

After installing open _Quality Assistant_ from world menu, and add the regular expressions of package names that should be automatically validated (e.g. the packages that you are developing).
