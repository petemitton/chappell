\version "2.22.0"
\language "english"

global = {
	% \time 6/8
	\key c \major
}
mBreak = { }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Fast."}
%	arranger = \markup {\caps "Hunting the Hare." }
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c' {
                          \voiceOne
                          \grace s16 <e c'>4_\fp c8 e f g | a d' c' b a b | <e c'>4_\fp c8 e f g | a d' b c'4. | \mBreak
                          <e c'>4_\fp c8 e f g | a d' c' b a b | <e c'>4_\fp c8 e f g | a d' b c'4. \bar "||" | \mBreak
                          <c' e'>8_\p d'_\cresc c' <b e'> d' c' | <a e'> d' c' <g e'> d' c' | <f d'> b c' <e d'> b c' | <d d'> f' <c' e'>  <b d'>4. |
                          <e c'>4_\fp c8 e f g | a d' c' b a b | <e c'>4_\fp c8 e f g | a d' b c'4. \fine |
			}	% end voice one
			\new Voice = "two"  \fixed c' {
                          \voiceTwo
                          \grace s16 s2. | f2. | s | f4. e |
                          s2. | f | s | f4. e |
                          s2.*4 |
                          s2. | f | s | f4 f8 e4. |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Songs4 of8 shep -- herds and | rus -- ti -- cal round -- e -- lays, | Form’d4 of8 fan -- cies, and | whistl -- ed on reeds,4.
                  Sung4 to8 sol -- ace young | nymphs up -- on ho -- li -- days, | Are too un -- wor -- thy for | won -- der -- ful deeds.4.
                  Sot8 -- tish Si -- le -- nus To | Phœ -- bus the gen -- ius Was | sent by dame Ve -- nus a | song to pre -- pare,4.
                  In4 phrase8 nice -- ly coin’d, | And in verse quite4 refine’d,8 | How4 the8 states di -- vine | hunt -- ed the hare.4. |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
                  <<
                    \global
                    \clef bass
                    \new Voice {
                      \voiceThree
                      \time 6/8 \clef bass \grace s16 s2. | f4. g | s2. | f4 g8 c'4. |
                      s2. | f4. g | s2. | f4 g8 c'4. |
                      s2.*2 | s4. c | b,4 c8 g,4. |
                      a,4. g, | f, g, | a, g, | f,4 g,8 c,4. | \fine
                    } % end voice three
                    
                    \new 	Voice {
                      \voiceFour
                      { \clef bass \stemUp \appoggiatura c,16 \stemDown } c2.~ | c | \appoggiatura { \stemUp c,16 \stemDown } c2.~ | c |
                      \appoggiatura { \stemUp c,16 \stemDown } c2.~ | c | \appoggiatura { \stemUp c,16 \stemDown } c2.~ | c |
                      a4. g | f e | d s | s2. |
                      s2.*4 |
                    }	% end voice four
                    
                  >>
		} % end staff down
	>>
	} % end choir staff

	\layout{
		\context{
			\Score {
			\omit  BarNumber
			%\override LyricText.self-alignment-X = #LEFT
			}%end score
		}%end context
	}%end layout
	
	\midi{}

}%end score