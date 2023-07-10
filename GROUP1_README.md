# A prototype for a new German Festival TTS voice

This README is accompanying the group1_german_festival_voice file.

This voice was created in the context of the Synthesizing Speech seminar, taught by Akhilesh Kakolu Ramarao, at the Heinrich Heine University Düsseldorf during the summer semester 2023.

The participants of this group project and contributors to this voice were, in alphabetical order: Aziza Fakiri, Mara Geißen, Rama Asrida Febryani Hutasoit, Andre Oppenheimer, Roman Pollmeier, Jasper Schmidt and Luca Michael Schulte-Kellinghaus.

## General Information

This voice represents the very basic foundation for a new German Festival TTS voice, a building block that ideally can be improved and expanded upon to create a fully fledged voice.

THIS VOICE IS CURRENTLY PROTOTYPICAL AND NOT COMPLETE. It was built to produce three pre-specified words, in order to successfully learn the basic steps required for Festival voice creation. In order to use this voice for any arbitrary German input, you will need to modify it first.

THE ENGLISH KAL_DIPHONE VOICE IS REQUIRED FOR THIS VOICE TO WORK, or more specifically, kal's diphone database, as our voice uses that for waveform synthesis. Usually kal comes with Festival itself.

The voice currently contains:

- A German phoneset
- A German lexicon (using NRL LTS rules)
- A duration module
- A waveform synthesis module

As these elements constitute the essential parts of a Festival voice.

HOWEVER, due to the prototypical nature of the voice, the following things need to be kept in mind!

## Phoneset

The current phoneset included in the SCM-file for the voice is incomplete, meaning it only contains a select few German phones. These are the phones necessary to produce the three words that the voice is built for (more on these words in the lexicon section below).

In order to be a complete German voice, the phoneset would need to be expanded to the entirety of all German phones.

The main difficulty here is the phonetic transcription format. As both phoneset and lexicon need to use the same format as the diphone database (so that the TTS can successfully match the transcribed input with the required diphones), the database effectively dictates the other two's format.

As this voice uses kal's diphones, their Arpabet format sets the standard for our voice. Unfortunately, Arpabet was designed specifically for English, and as such has no official transcriptions for German phones.

Consequently, this voice uses the LumenVox format for its phoneset and lexicon. LumenVox is based on Arpabet, meaning all phones that are transcribed in Arpabet are also included in the same transcription in LumenVox. On top of that, though, LumenVox includes transcriptions for German phones that don't naturally exist in Arpabet, without them clashing with Arpabet's English phones.

To us, LumenVox therefore seems like a good transcription format to use for a German TTS system. Another appropriate (and probably more wide-spread) option might be SAMPA, which is not based off Arpabet, but instead was created for a variety of European languages. It should work for over a dozen different languages today, and is  used in some German MBROLA voices for example.

## Lexicon

Due to the nature of our voice, our lexicon only consists of three German words:

- "küche" ("kitchen")
- "knopf" ("button")
- "lachen" ("to laugh")

It should be stated that THERE IS CURRENTLY NO WORKING MODULE FOR COMPUTING CAPITAL LETTERS. Despite our efforts, the pertinent modules for this have not been functional for our voice. Ergo, this voice can only comprehend lower-case input. If upper-case input procession is desired, a module needs to be implemented for this first.

Naturally, for a fully functioning voice, a full lexicon is required, and may be specified in the SCM-file.

Additionally, since for our purposes the voice would only have to produce words that can be found in its lexicon, LTS rules (letter-to-sound, how the voice should pronounce words missing from its lexicon) would not come into play either way. Because of this, the voice currently uses the NRL LTS ruleset, which was designed for English. This means that, for a complete German voice, a German ruleset is highly recommended.

## Waveform Synthesis

As our voice uses kal's diphones, the waveform synthesis module is effectively the same as kal's. However, there are a lot of possible adaptations that can be made here, depending on what you want your voice to be like. We recommend the pertinent Festival documentation sections regarding waveform synthesis.

In general, as kal is an English voice, naturally its diphones sound quite English, and as such are not ideal material for a German voice. Some workarounds to this include generating your own diphone database (which is an extensive and work-intensive process), or using diphones from a pre-existing German voice.

Unfortunately, Festival does not seem to offer an endemic German voice, at least not anymore (as far as we know there used to be one by the University of Stuttgart, but that is not available anymore). Therefore, one would need to integrate a diphone database from an outside voice.

We want to point specifically at MBROLA here, which offers multiple German voices. 

## Additional modules

As stated earlier, this is an entirely barebones voice. There are plenty of additional modules that Festival employs which help improve the voice, such as intonation or phrasing. We highly recommend reading up on their implementation in the Festival documentation if you want to build a satisfying German voice!
