\version "2.22.2"
\language "english"

global = {
	\time 6/8
	\key bf \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Gaily."}
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
                                \repeat volta 2 { \partial 8 f8 | bf8. c'16 bf8 <g bf> a g | <c a> g f <bf, bf>4 d8 | ef f g f8. g16 f8 | \mBreak
                                \partial 8*5 f8 bf4~ bf } | \partial 8 f8 | <d bf>4 c'8 <bf d'>_( c') d' | s2. | <d bf>4 c'8 s4. | s2. | \mBreak
                                bf8 d' d' a c' c' | <c a> g f <bf, bf>4 d8 | ef_( f) g f8. g16 f8 | \partial 8*5 f bf4~ bf  \fine | \mBreak
			}	% end voice one
			\new Voice  \fixed c' {
                          \voiceTwo
                          s8 | \stemUp d4 \stemDown s2 | s2. | s4. ef |
                          d4.~ d4 | s8 | s2. | <bf ef'>8^( d') <a c'> <bf d'>4 c'8 | s4. <bf d'>8^( c') d' | <g ef'> d' <g c'> <fs a d'>4 c'8 |
                          g4. ef | s2. | s4. ef | d4.~ d4 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  One8 ev’8. -- ning16 a8 lit -- tle be -- fore it was dark,4 Sing8 | tan -- ta -- ra, ra8. -- ra,16 tan-8 |
                  -ti8 -- vee.2 | It8 | was in the8 8 merry8 8 | month4 of8 May,4 When8 | meadows4 and8 fields4 were8 | gaudy4 and8 gay,4 And8 |
                  flow8 -- ers app -- arr -- ell’d as | bright as the day,4 I8 | got4 up8 -- on8. my16 tan8 -- ti -- vee.2 |
		}	% end lyrics verse one
                \new Lyrics \lyricmode { % verse two
                  I8 call’d8. for16 my8 geld -- ing, and | rode to Hyde Park,4 Sing8 | tan -- ta -- ra, ra8. -- ra,16 tan8 |
                  -ti8 -- vee.2 |
                }
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
                          r8 | bf,4. ef | f g | <c bf> <f a> |
                          <bf, bf>4.~ <bf, bf>4 | r8 | bf4. g | c4 f8 bf,4 r8 | g4. g, | c4 ef8 d4. |
                          g4. c | f d4 <g bf>8 | <c bf>4. <f a> | <bf, bf>~<bf, bf>4 \fine |
			} % end voice three
			
			\new 	Voice {
				\voiceFour
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