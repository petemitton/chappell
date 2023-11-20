\version "2.22.0"
\language "english"

global = {
	\time 3/4
	\key c \major
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

%	meter = \markup {\italic "Gracefully."}
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
				\partial 8 g8 | g c' <d b>4. <e c'>8 | d'8 e'16_( d') c'4. b8 | a g f4. e8 | e c'4. b8\rest g | \mBreak
				g8 c' <d b>4. <e c'>8 | d' e'16_( d') c'4. b8 | a g f4. e8 | \partial 8*5 e c'4. b8\rest \mark \markup{\caps "Fine."} \bar "||" | \partial 8 g8 | \mBreak
				g8 e g4. a8 | a f a4. e'8 | f' e' d'4. c'8 | b d'4. b8\rest g8 |  \mBreak
				f8 e d4 c | f'8 e' <b d'>4. c'8 | d' c' b4. a8 | \partial 8*5 g c'4.\mark \markup{\caps "Da Capo." } b8\rest  \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s8 | e4 s2 | f4 \once \stemUp e s | c4 c b, | c2. |
				e4 s2 | f4 \once \stemUp e s | c c b, | c2 s8 | s8 |
				c2 cs4 | d2 e4 | a2 4 | g2 s4 |
				c4 s2 | <f a>4 f g | <d a> <d g> <b, f> | <c e>4~4 s8 |
			} % end voice two
		>>
		} % end staff up

		\new Lyrics \lyricmode {	% verse one
		  Al8 -- though, I am4. a8 | count8 -- ry lass,4. A8 | lof -- ty mind4. I8 | \hyphen bear8 -- a,4. 8 I |
		  think8 my -- self4. as8 | good as those4. That8 | gay ap -- pa4. -- rel8 | \hyphen wear -- a;4. 8 | My8 |
		  coat8 is made4. of8 | come8 -- ly gray,4. Yet8 | is my skin4. as8 | \hyphen soft8 -- a,4. 8 As |
		  those8 that with4 the | choicest4 wines4. Do8 | bathe8 their bo4. -- dies8 | \hyphen oft8 -- a.4. 8 |
		}	% end lyrics verse one
		\new Lyrics \lyricmode { % verse two
		  8 | Down,4 down,4. derry,8 | der8 -- ry down,4. Hey8 | down -- a down,4. a8 | \hyphen down8 -- a,4. 8 a |
		  der8 -- ry, der4. -- ry8 | derry, derry down,4. Hey8 | \hyphen down -- a, \hyphen down4. -- a8 | der8 -- ry.4. 8 | 8 |
		} % end lyrics verse two

		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				d8\rest | c4 s g, | b, c c, | s2 g,4 | c c, d\rest | 
				c4 s g, | b, c c, | s2 g,4 | c c, d8\rest | d8\rest | 
				s2.*2 | a2 d'4 | s g, d\rest |
				s4 g e | s2. | s2 g,4 | c c, d8\rest | \fine
			} % end voice three

			\new 	Voice {
				\voiceFour
				s8 | s4 g s | s2. | f8 e d4 s | s2. |
				s4 g s | s2. | f8 e d4 s | s2 s8 | s8 |
				<c e>2 <a, e>4 | <d f>2 <cs a>4 | d4. e8 f4 | <g d'>4 s2 |
				a,4 b, c | d d e | f g s | s2 s8 | 
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