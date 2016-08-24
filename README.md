# locale_checker

Checks whether your I18n localizations are consistent.

This is done by simply loading all Yaml locales and checking if any keys are present in only some of the locales.
The assumption is, that in a complete translation, each language would contain all keys of the other languages.
