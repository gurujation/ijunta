## About Biline

Biline is a single-file implementation of a bilingual autocomplete tool, helping people improve their ability to write in a secondary language without constantly referring to a dictionary.

In essence, it is a specialised autocomplete tool with inline vocabulary support. Simply start typing any word and wait for the pop-up to confirm the correct spelling or definition. If you cannot remember the word in your target language, you can prefix a source word with a colon to perform a reverse lookup.

For example, in Ijunta you could type either "sop" or ":sle" to be prompted with "sopora", the word for being asleep or unconscious.

As well as providing a direct glossary for translation, the dictionary supports the provision of hints, definitions and examples alongside each word, and the ability to hover over any item to view the full hint text.

Out of the box, Biline  is configured to support writing in the auxlang Ijunta, but a secondary dictionary for Indonesian - English is also available to demonstrate its potential for real-world language translation and to confirm that it continues to perform well with a larger text corpus.

To access the EN-ID dictionary, append ?dict=en-id to the URL.
You can also create and access other custom dictionaries using the same ?dict=<filename> approach (no .json extension is required).
