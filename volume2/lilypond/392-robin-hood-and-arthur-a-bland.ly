\version "2.22.0"
\language "english"

global = {
	\time 6/8
	\key g \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
  #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
  #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

	meter = \markup {\italic ""}
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
                                  \partial 8 b,8 | g8. fs16 g8 a8. g16 fs8 | g8. a16 b8 <b, ds>4 ds16 ds | <g, e>4. <b, e> | \mBreak
                                  <c e>8. <b, d>16 <a, c>8 b,4 b,8 | g8. fs16 g8 a8.g16 a8 | <g b>4.~<g b>4 b8 | \stemDown e'8. d'16 e'8 s4. | \mBreak
                                  d'8. cs'16 d'8 \stemUp b8._( a16) <e g>8 | fs8._( g16) e8 ds8._( cs16) ds8 | \partial 8*5 e4.~e4 | \fine
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s8 | \stemUp b,4 s8 b,4 s8 | b4 s8 s4. | s2. |
				s2. | b,4 s8 fs4 s8 | s2. | \stemDown e4 s8 <g b>4 b8 |
				d4 s8 \stemUp d4 s8 | c4 s8 a,4 s8 | s8*5 |
			} % end voice two
		>>
		} % end staff up

		\new Lyrics \lyricmode {	% verse one
In8 | Nott8. -- ing16 -- ham8 there8. lives16 a8 | jol8. -- ly16 tan8 -- ner,4 With16 a | hey4. down, |
down8. -- a16 -- down8 down,4 His8 | name8. it16 is8 Arth8. -- ur16 -- a8 -- 4 Bland;4. There’s8 | ne8. -- ver16 -- a8 squire4 in8 | 
Nott8. -- ing16 -- ham8 -- shire4 Dare8 | bid4 bold8 Ar4 -- thur8 | 4 stand.4. |
		}	% end lyrics verse one

		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				s8 | s2. | s4. b, | c g, | 
				a,4 c8 g4 d8\rest | s2. | s4. g,4 d8\rest | c4. s  |
				s2. | a,4. b, | <e, g>~<e, g>4 | \fine
			} % end voice three

			\new 	Voice {
				\voiceFour
				d8\rest | e4. fs8. e16 ds8 | e4. s | s2. |
				s4. e4 s8 | e4. d | g8. d16 b,8 s4. | s4. e |
				fs4. g4 e8 | s2. | s8*5 |
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