\relative {
	\set Score.automaticBars = ##f
	\override Score.TimeSignature.transparent = ##t
	\clef bass
	\cadenzaOn a,1^"A" b^"B" c^"C" d^"D" e^"E" f^"F" g^"G" \bar "|" a^"a" b^"b" c^"c" \clef treble d^"d" e^"e" f^"f" g^"g" \bar "|" a^"aa" b^"bb" c^"cc" d^"dd" e^"ee" f^"ff" g^"gg" \cadenzaOff
}

\addlyrics{\override LyricText.self-alignment-X = #LEFT _1 _ First _ octave _ _ _ Second _ octave _ _ _ _ Third _ octave}