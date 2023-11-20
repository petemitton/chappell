\version "2.24.0"
\language "english"

global = {
	\time 6/8
	\key a \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps ""}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic ""}
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
				<cs a>4 <d b>8 <e cs'> cs' <d b> | <cs a>4 <b, gs>8 a4. | 
				<d b>4 <e cs'>8 <fs d'> d' <e cs'> | \mBreak
				<d b>4 <cs as>8 b4. | cs'8 e' d' cs'8. b16 a8 | 
				a8. b16 cs' a b8 gs e | a4 e8 cs8. d16 e8 | | \mBreak
                              cs'8 d' b a4.|a4^\f e8 cs8. d16 e8 | cs' d' b <cs a>4. \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s2. | s4. cs4 <cs fs>8 | s2. |
				s4. d4 <e gs>8 | <e a>4. <e a>4 s8 | ds4. e | e4 s4. cs8 |
				e4 <d gs>8 cs4.| s2. | e4 <d gs>8 s4. 
			}
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Martin4 said8 to8 his8 man,8 | fie,4 man,8 fie!4. | Martin4 said8 to8 his8 man,8
		  Who's4 the8 fool4 now?8 Martin4 said8 to8. his16 man;8 Fill8. the16 cup and I8 the can; 
		  Thou8 hast8 well 8 drunk8. -- en,16 man,8 |
		  Who's4 the8 fool4 now?8 Thou hast well drunk8. -- en16 man,8 who's8 the fool now?
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				a,2.~ | a,4 e8 a4 fs8 | b,2.~ |
				b,4 fs8 b4 e8 | a,4. cs | fs, gs,4 d!8 | cs4. a |
				e4. a | a4 e8 cs8. d16 e8 |e4 e,8 a,4. | \fine
			} % end voice three

		>>
		} % end staff down
	>>
	} % end choir staff

	\layout{
		\context{
			\Score {
			\omit  BarNumber
			%\override LyricText.self-alignment-X = #LEFT
			\override Staff.Rest.voiced-position=0
			}%end score
		}%end context
	}%end layout

}%end score