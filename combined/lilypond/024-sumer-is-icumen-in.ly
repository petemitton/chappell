\version "2.22.0"
\language english
%
global = {
	\time 6/8 
	\key f \major 
}

\header {
%	title = \markup {\medium "SUMER IS ICUMEN IN."}
%	poet = 
%	composer = "About 1250."
	
%	meter = \markup {\italic "Rather slow and smoothly."}
%	arranger =
}
\score {

\new ChoirStaff 
<<
	\new Staff = "up"  {
	<<
		\global
		\new 	Voice = "one" \relative{
			\voiceOne
			f''4 e8 d4 e8 | f4 f8 e_( d c) | a4 a8 bf4 g8 | a2. | f4 a8 g4 bf8 |
			<f a>4 a8 g4 f8 | a4 c8 d4 d8 | c2. | f4. d | f2. \bar "||" | c4( a8) bf4 g8 | a4 c8 bf4 a8 |
			f4 a8 g4 e8 | f2. | a4 a8 bf4 g8 | c4 c8 d4 e8 | f4 e8 d4 e8 |
			f2. | c4. d | c bf4( a8) | f4 a8 bf4 g8 | a4.( bf4) c8 | <f, a>4 <c c'>8 <d g>4 <bf e>8 | <c f>2. \bar "||"|
								}	
		\new Voice \relative{
			\voiceTwo
			a'4. bf4. | a2. | f4 e8 d4 e8 | f4 f8 e d c | a4. <c e> |
			c2. | f4. <f bf> | <f a> <e g> | f  bf | a2. | f4. e | f4 e8 d4 c8 |
			d4 c8 bf4. | c4 c8 d4 bf8 | c4. e | f bf | a bf |
			bf a | a bf | a g4 f8 | s4 e8 d4 e8 | f2. | s | s  |
			}
	>>
	}
	\new Lyrics \lyricmode{
		Summer4. is4 a8  coming4. in,4.  Loud-4ly8 sing4 Cuc-8  koo;2. Groweth4. seed,4 and8 |
		bloweth4. mead4 and8  springeth4. wood4 a16-16new.2.  Sing4. Cuc4-8koo!2. Ewe4. bleat-eth4. af-8ter4 lamb,4  Low’th8 
		af8-ter4 calf4 the8 cow;2. Bullock4. start-eth,4. Buck4 to8 fern4 go’th,8 Mer-4ry8 sing4 Cuc8-4
		koo!2 Cuckoo!2. Cuc-koo!2. Well4 singst8 thou,4 Cuc-4 koo!4. Nor4 cease4 thou8 e-4ver8 now.4.
	} 
	\new   Staff = "down" {
	<<
		\clef bass
		\global
		
		\new 	Voice \relative{
			\voiceFour
			f,2._\markup{\italic "Drone Bass."}_~ | f | f _~| f  | f_~ |
			f | f_~  | f | f' | f | f,_~ | f |
			 f_~ | f | f_~ | f | f'_~|
			 f | f_~ | f | f_~ | f | f 4. f |f,2.|
		}	
		\new Voice \relative{
			\voiceThree
			s2. | s | s | s | s |
			s | s | s | d'4. bf | c2. | a4. g | f~ f |
			d8 e f g4. | a4 a8 bf4 g8 | f4. g | a g | c bf4 c8 |
			d4. c | f f4 s8 | f4 c c8 s8 | d4 c8 bf4 c8 | c2. | c4 a8 bf4 g8 | a2. |
		}
	>>
	}
>>

	\layout{ 
		\context{
			\Score {
			\omit  BarNumber 
			\override LyricText.self-alignment-X = #LEFT
			}%end score
		}%end context
	}%end layout
}%end score