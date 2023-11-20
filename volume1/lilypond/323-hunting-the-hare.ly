\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key c \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Smoothly, and in moderate time."}
%	arranger = ""
}
\score {

	\new ChoirStaff {
	<<
		\new Staff = "up"  {
		<<
			\global
			\new 	Voice = "one" 	\fixed c' {
                          \voiceOne
                          <e c'>4 g8 e f g | s2. | s4 g8 e f g | \mBreak
                          <f b e'>8 d'8. c'16 <e c'>4. | <e c'>4 g8 e f g | e' d' c' d' b g | <e c'>4 g8 e f g | \mBreak
                          <f b e'>8 d'8. c'16 <e c'>4. \bar "||" | e'8 d' c' d' e' c' | e' d' c' d' b g | \mBreak
                          c'4 g8 e f g | <f b e>8 d8. c16 <e c'>4. | e'8 d' c' d' e' c' | \mBreak
                          e'8 d' c' d' b g | <e c'>4 g8 e f g | <f b e'>8 d'8. c'16 <e c'>4. \fine |
			}	% end voice one
			\new Voice  \fixed c' {
                          \voiceTwo
                          s2. | e'8 d' c' d' b g | c'4 s2 |
                          s2.*2 | fs4. f! | s2. |
                          s2.*3 |
                          s2.*3 |
                          fs4. f! | s2.*2 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Pan,4 leave8 pip -- ing, The | Gods have done feast -- ing, There’s | never4 a8 God -- ess a |
                  hunt8 -- ing8. to16 -- day;4. | Mor4 -- tals8 mar -- vel at | Co -- ri- don’s jest -- ing, That | gives4 them8 assist -- ance to |
                  en8 -- ter8. -- tain16 May4 The8 | lads and the lass -- es, With | scarves on their fa -- ces, So |
                  lively4 time8 pass -- es, Trip | o -- ver8. the16 downs:4. | Much8 mirth and sport they make, |
                  Run8 -- ning at Barley4 -- break,8 | Good8 lack, what pains they take | For a8. green16 gown.4. |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
                          \voiceThree
                          c2. | c'4. b | s2. |
                          s2.*3 | s4. c |
                          g,4. c | \clef treble g'8 f' e' f' g' e' | g' f' e' \clef bass s4. |
                          s2.*2 | g'8 f' e' f' g' e' |
                          s2. | s4. c | g, c | \fine
			} % end voice three
			
			\new 	Voice {
                          \voiceFour
                          s2. | g | <e c'>4. <c g> |
                          <g, g>4. <c g> | c8 e g c'4. | a b | c'8 g e s4. |
                          s2. | c' | c'4. <g b d'>4. |
                          <e c'>4. <c g> | <g, g> <c g> | \clef treble c'2. | 
                          \clef bass a4. b | c'8 g e s4. | s2. |
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