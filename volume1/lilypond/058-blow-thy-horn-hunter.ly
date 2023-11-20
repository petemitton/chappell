\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key c \major
}

mBreak = { }

\header {
  %title = \markup {\medium \caps "\"Blow thy horn, Hunter.\""}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Boldly and well marked."}
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
                              c'4 c'4 c'2 | e'2 c'4 c'4 | e'4 e'4 d'4 d'4 | c'2. c'4 |c'4. c'8 c'4 b4 | 
                              a4. a8 <b, g>4  g4 |\mBreak
                              c'4 b a4 a4 | <b,g>2 <b,d g>2 | c'4.c'8 c'2 | <f b>2 c'4 c'4 | c'4. c'8 <g b d'>4 g8 a8 |
                              b8 c'8 d'8 b8 <e c'>2 |\bar "||"
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
		                <e g>2 g2 |c'2 g2 |c'2 g2 | <e g>1 |<c fs>2 <d g>2| <d f>2 s2|
		                <c e>2 <c fs>2 | s1 | <c g>1 | s2 <e g>2 | <e a>2 s2 | f2 s2 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  Blow4 thy4 horne2 | hun-2ter,4 Cum,4 | blow4 thy4 horne4 on4 | 
		  hye!2. In4 | yonder2 wode4 there4 | lyeth4. a8 doo,4 In4 | 
		  fayth4 she4 woll4 not4 | dye.2 Cum,2 | blow4. thy8 horne,2 | hun-2ter,4 Cum,4 | blow4. thy8 horne,4 joly4 | hun-2ter!2 |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice \fixed c' {
				\voiceThree
				c,2 <e,c>2 |<c e>2 <e,c>2 |<c e>2 <g,d>2 |<c,,c,>2 <b,,,b,,>2 | 
				<a,,,a,,>2 <g,,,g,,>2 |<d,,d,>2 <c,,c,>2 |
				<a,,,a,,>2<d,,d,>2|<g,,g,>2<f,,!f,!>2|<e,,e,>1|<d,,d,>2<c,,c,>2|<a,,a,>2<g,,g,>2|<g,,g,>2<c,g,>2||
				
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
			\override LyricText.self-alignment-X = #LEFT
			}%end score
		}%end context
	}%end layout

}%end score