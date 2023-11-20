\version "2.22.0"
\language "english"

global = {
	\time 2/4
	\key g \major
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
				\partial 4 d8 d16 d | <d g>8 g16 g <fs a>8 <e g>16 <fs a> | b8. b16 s4 | s4 c'16_( b) a_( g) | \mBreak
				<fs a>4 d8 d16 d16 | <d g>8 g16 g16 <fs a>8 <e g>16  <fs a> | <g b>4 s4 | s c'16_( b) a_( g) | \partial 4 g4 \bar "||" | \mBreak
				\partial 4 s4 | s2 | s4 d8 d16 d | g8 g16 a b8 a16 g | fs8 e s4 | \mBreak 
				s2 | s4 d!8 d16 d | g8 g16 a b8 a16 g | \partial 4 fs8 e \bar "||" | \partial 4 d8 d16 d | \mBreak
				<d g>8 g16 g <fs a>8 <e g>16 <fs a> | b8. b16 s4 | s4 c'16_( b) a_( g) | <fs a>4 d8 d16 d | \mBreak
                                 <b, g>8 g16 g <e a>8 g16 a | <ds fs b>4 <d! b d'>8 <g b d'> | s4 <e c'>16 b a g | \partial 4 <b, g>4 \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				s4 | s2 | \stemUp g4 \stemDown d'8. d'16| <g e'>^( d') c'^( b) s4 |
				s2*2 | s4 d'8. d'16 | <g e'>^( d') c'^( b) s4 | s |
				d'16 cs'8. | d'16 \stemUp d8. \stemDown d'16 cs'8. | d'16 \stemUp d8. \stemDown s4 | s2 | s4 e'16 ds'8. |
				e'16 \stemUp e8. \stemDown <fs e'>16 ds'8. | e'16 \stemUp e8. \stemDown s4 | s2 | s4*2 |
				s2 | \stemUp g4 \stemDown c'8. c'16 | <g e'>^( d') c'^( b) s4 | s2 |
				s2*2 | <g c' e'>16^( d') c'^( b) s4 | s |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Joan,8 to16 the | May8 -- pole16 a -- way8 let16 us | on,8. The16 time8. is16 | swift,8 and will be |
		  gone,4 There8 go16 the | lass8 -- es16 a -- way8 to16 the | green,4 Where8. their16 | beau8 -- ties may be | seen;4 |
		  Bess,4 | Moll, Kate, | Doll, All8 the16 brave | lass8 -- es16 have lads8 to16 at -- tend8 ’em, Hodge,4 |
		  Nick,4 Tom, | Dick, Jol8 -- ly16 brave | dan8 -- cers,16 and who8 can16 a -- mend8 ’em. | Joan8 to16 the |
		  May8 -- pole16 a -- way8 let16 us | on,8. The16 time8. is16 | swift8 and must be | gone,4 There8 go16 the |
		  Lass8 -- es16 a -- way8 to16 the | Green,4 Where8 their | beau -- ties may be | seen.4 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				\voiceThree
				d8 c | b,[ g, d d,] | g,4 s4 | s2 |
				s4 d8 c | b,[ g, d d,] | g,4 s | s2 | s4 |
				s4 | s2 | s4 <d, d>8 <d, d>8 | <g, g>8 <g, g>16 <a, a> s4 | <fs, fs>8 <fs, fs> s4 |
				s2 | s4 <d,! d!>8 <d, d> | s2 | <fs, fs>8 <e, e> | <d, d> <c, c> |
			        <b,, b,>8 <g,, g,> <d, d> d, | a4\rest b8. b16 | c' b a g e' d' c' b | d'4 s |
			        s4 c | b, g,8 \stemDown g \stemUp | c4 c | g, | \fine
			} % end voice three
			
			\new 	Voice {
				\voiceFour
				s4 | s2 | s4 b8. b16 | <g c'>16 b a g e' d' c' b |
				<d d'>4 s | s2 | s4 b8. b16 | <g c'>16 b a g e' d' c' b | <g b>4 |
				<a,\=1( e\=2( g\=3^(>4 <d\=1)\=2) fs\=3)>8 d\rest <a,\=1( e\=2( g\=3^(>4 <d\=1)\=2) fs\=3)>8 d\rest s4 | s <b, b>8 <a, a>16 <g, g> | %
				s4 <b,\=1( fs\=2^( a\=3^(> |
				<e\=1) g\=2)\=3)>8 d\rest <b,\=1( fs\=2^( a\=3^(>4 | <e\=1) g\=2)\=3)>8 d\rest s4 | <g, g>8 <g, g>16 <a, a>  <b, b>8 <a, a>16 <g, g> | s4 | s |
				s2 | \stemUp \appoggiatura{g,,16} \stemDown g,2~ | g, | d8 c b,4 |
				e4 s | s2*2 | s4 |
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