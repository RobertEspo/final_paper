raw_subtitles.csv
	Target subtitles. First colum is source text. Following columns are subtitles from various translations.

raw_methods.csv
	Translation methods used. All methods are referring to how swear words are translated.
		SOFTENING. A sanitization method. Changes a swear word or phrase into something weaker.
		OMISSION. A sanitization method. Removes a swear word entirely.
		RETENTION. A non-sanitization method. The swear word is maintained as a direct translation or modulation.
	SEX. The data is also categorized if there is a mention of a sex/sexuality (1 = related to sex, 0 = unrelated to sex).
	SEX_RETAINED. If the sexual reference is retained in the translation at the same vulgarity level.
	LOCALIZATION. Whether the subtitles are for Spain or Latin America.
	SUBTITLES. Which subtitle file is used from the data>subtitles folder.