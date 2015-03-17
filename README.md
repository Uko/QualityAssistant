_:exclamation: this is **super-alpha** version, it may work bad :exclamation:_

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
