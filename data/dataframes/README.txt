raw_subtitles.csv
	Target subtitles. First colum is source text. Following columns are subtitles from various translations.

raw_methods.csv
	Translation methods used. All methods are referring to how swear words are translated.
		EUPHEMISM. A sanitization method. Changes a swear word or phrase into something weaker.
		OMISSION. A sanitization method. Removes a swear word entirely.
		DIRECT_TRANSLATION. A non-sanitizing method. Maintains the same level of intensity and an equivalent or nearly equivalent word in the target text as the source.
		MODULATION. A non-sanitizing method. Maintains the same level of intensity, but does not use a direct translation of the source text.
	SEX. The data is also categorized if there is a mention of a sex/sexuality (1 = related to sex, 0 = unrelated to sex).
	SEX_RETAINED. If the sexual reference is retained in the translation.
	LOCALIZATION. Whether the subtitles are for Spain or Latin America.
	SUBTITLES. Which subtitle file is used from the data>subtitles folder.