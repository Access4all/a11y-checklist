---
id: "2"
parent_id: "64"
wcag_version: "2.0"
wcag_url: "https://www.w3.org/WAI/WCAG22/Understanding/audio-only-and-video-only-prerecorded.html"
created_at: "2015-08-04 14:35:59"
---

# 1.2.1 Audio-only and Video-only (Prerecorded) - A

## Understanding (short)

For **recorded video-only content** (i.e. video without sound, such as silent films) **as well as audio-only content** (such as radio programs), the information contained therein must be available in an **alternative format**. This enables people with visual or hearing impairments to also process this information.

## Understanding (long)

In order to provide the information contained in pure video and audio content in an alternative format, a text transcript can be written to convey the same information (like a kind of script). In the case of pure video content, an audio file can also be offered instead, which conveys the content verbally.

**Note:** You do not need to provide an alternative if the element itself is already an access alternative to existing content.

Describe as clearly as possible what is going on in the video or audio. Concentrate on the message of the content. Be compact and only as detailed as necessary.

Place the text transcript or audio track immediately adjacent to the content (or insert a link).

### Responsibilities

- The development team creates the necessary technical requirements, such as a field for capturing (or linking) a text transcript when uploading video or audio-only content.
- The content managers create and maintain the relevant content as required.
- Clients should be aware that the creation of accessible audio and video content entails additional work.

## Examples

- The visual content of a video is provided as a spoken audio file.
- A text transcript of the content with additional explanation of the visible or audible meaningful action is provided in the adjacent text or as a linked document.

```html
<!-- Audio description -->
<a href="metropolis.avi">Metropolis (1927)</a>
<a href="metropolis.mp3">Audio description of Metropolis</a>

<!-- Text transcript (adjacent) -->
<a href="metropolis.avi">Metropolis (1927)</a>
<p>
The silent film classic Metropolis from 1927 begins with the fade-in of...
</p>

<!-- Text transcript (linked) -->
<a href="metropolis.avi">Metropolis (1927)</a>
<a href="metropolis.html">Text transcript of Metropolis</a>
```

## References public

### WCAG-Varianten
- <https://www.w3.org/TR/WCAG22/#audio-only-and-video-only-prerecorded>
- <https://www.w3.org/WAI/WCAG22/quickref/#captions-prerecorded>

### Techniken
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G158>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G159>
- <https://www.w3.org/WAI/WCAG22/Techniques/general/G166>
- <https://www.w3.org/WAI/WCAG22/Techniques/html/H96>

## References internal

### BITV
- <https://www.bit-inklusiv.de/bitv-softwaretest/1-2-1-nur-audio-und-nur-video-aufgezeichnet/>
- <https://bitvtest.de/pruefschritt/bitv-20-web/bitv-20-web-9-1-2-1-alternativen-fuer-audiodateien-und-stumme-videos>

### Weiteres
- <https://www.wuhcag.com/audio-only-video-only-prerecorded/>
- <https://www.digitala11y.com/understanding-sc-1-2-1-audio-only-and-video-only-prerecorded/>
- <https://pressbooks.library.torontomu.ca/iwacc/chapter/1-2-time-based-media-level-a/#121_Audio-Only_and_Video-Only_Prerecorded_Explained>