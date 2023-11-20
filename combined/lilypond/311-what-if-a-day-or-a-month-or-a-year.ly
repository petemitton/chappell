\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key e \minor
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Rather slow."}
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
                          \repeat volta 2 { e4^\p ds8 e <ds fs>4 e8 fs | <e g>4 fs8 e <ds fs>2 | <e g>4^\cresc fs8 g <d fs a>4 g8 a | \mBreak
							  <d g c'>8 b a g <d fs a>4 a8.^\p a16 | <ds a>4 <e g>4 <e fs> <ds fs> | e2 e } | b4.^\f b8 a4 fs | \mBreak
                          g4 fs8_( e) <d fs>2 | b4. c'8 s2 | c'2 b | b4.^\p b8 <c a>4 <ds fs> | \mBreak
                          g4 fs8_( e) <ds fs>2 | b4. c'8 d'4 e' | <e a c'>2 <ds fs b> \bar "||" | g4.^\pp a8 <ds b>2 | \mBreak
                          fs4. g8 <cs a>2 | e4. fs8 <b, g>4 <c fs>8_( e) | e4_( ds) e2 | g4.^\ff a8 <b, ds fs b>2 | \mBreak
                          fs4. g8 <a, cs e a>2 | e4. fs8 <b, d g>4 <c fs>8 e | e4_( ds) e2 \fine |
			}	% end voice one
			\new Voice  \fixed c' {
                          \voiceTwo
                          s1*3 |
                          s2. e4 | s1*2 | d2 d |
                          b,2 s2 | d2 <g d'>4 <g e'> | g fs g2 | g s |
                          b,2 s | e1 | s | e2 s |
                          d!2 s | c! s | s1 | \stemUp <b, e>4 \stemDown s2. |
                          \stemUp <a, d!>4 s2. | c!4 s2. | s1 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  What4 if8 a day,4 or8 a | month4 or8 a year,2 | Crown4 thy8 de -- lights4 with8 a |
                  thou8 -- sand sweet con -- tent4 -- ings,8. a16 | thou4 -- sand sweet con -- ten2 -- tings, | For4. -- tune,8 ho4 -- nour,4 |
                  beau4 -- ty, youth,2 | Are4. but8 blos4 -- soms | dy2 -- ing; | Wan4. -- ton8 plea4 -- sures, |
                  do4 -- ting love,2 | Are4. but8 sha4 -- dows | fly2 -- ing. | All4. our8 joys2 |
                  are4. but8 toys,2 | I4. -- dle8 thoughts4 de -- ceiv2 -- ing; | None4. hath8 pow’r2 |
                  of4. an8 hour2 | Of4. his8 life’s4 be -- reav2 -- ing. |
                } % end lyrics verse  one
                \new Lyrics \lyricmode {    %verse two
                  May4 not8 the change4 of8 a | night4 or8 an hour,2 | Cross4 thy8 de -- lights4 with8 as |
                  ma8 -- ny sad tor -- ment4 -- ings,8. as16 | ma4 -- ny sad tor -- men2 -- tings, | 1 |
		}	% end lyrics verse two
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
                          \voiceThree
                          <g b>4 s b s | b s b2 | b4 s2. |
                          g,2 d4 c | b,2 b,4 b, | e1 | s1 |
                          s1 | s2 b,4 c | a, d g, fs, | e,2 a,4 b, |
                          s2 b,4 a, | gs,1 | a,4 fs, b,2 | s2 b, |
                          d2 a, | c g,4 a, | fs2 a | <e, e> <b,, b,> |
                          <d, d>2 <a,, a,> | g4 s <g,, g,> <a,, a,> | <fs b>4 <fs b> <g b>2 | \fine
			} % end voice three
			
			\new 	Voice {
                          \voiceFour
                          e2 b, | e, b, | e d |
                          s1*3 | g2 fs4 d4 |
                          e2 d | g s | s1*2 |
                          e2 s | s1*2 | e2 s |
                          s1*2 | b,2 c4 b,8 a, | s1 |
                          s1 | <c, c>2 s | <g,, b,>4 <g,, b,> e,2 |
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