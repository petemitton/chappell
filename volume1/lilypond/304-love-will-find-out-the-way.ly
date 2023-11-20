\version "2.22.0"
\language "english"

global = {
	\time 3/4
	\key a \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Title."}
%	poet = ""
%	composer = ""

%	meter = \markup {\italic "Smoothly and not too fast."}
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
				s4 a s | s2. | s4 s4. a8 | a2. | s4 a s | \mBreak
				s4 b s | s4 s4. a8 | \partial 2 a2 \bar "||" | \partial 4 gs8 a | b4.( cs'8) b a | gs4 e a8_( b) | cs'4 a b8_( cs') | \mBreak
                                 <d! a d'!>2 s4 | s2 a8 b | <b, gs>8 fs e4 e'8 d' | cs'4 b4. a8 | <cs a>2. \fine |
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				cs'4 s cs'8^( d') | e'4 b e'8^( d') | cs'4 b4. s8 | s2. | <e cs'>4 s cs'8^( d') |
				e'4 s e'8^( d') | cs'4 b4. s8 | s2 | s4 | fs2. | s2. | e2 e4 |
				s2 cs'8 d' | <a e'>4 a fs | s2 <e b>4 | <e a> <fs a> <d gs> | s2. |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		  O4 -- ver the | moun -- tains, And | o -- ver4. the8 | waves;2. | Un4 -- der the |
		  fount4 -- ains, And | un -- der the | graves;2 | Under4 | floods2 that8 are | deep4 -- est, Which | Nep -- tune o- |
		  -bey:2 O8 -- ver | rocks4 that are | steep -- est Love8 will | find4 out4. the8 way.2. |
		}	% end lyrics verse one
		
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice {
				%\voiceThree
				<a e'>2 <a e'>4 | <gs e'>2 <e gs>4 | <fs a> <d a b> <e gs d'> | <a cs'> cs e | a,2 <a e'>4 |
				<gs e'>2 <e gs>4 | <fs a>4 <d a b> <e gs d'> | <a cs'> a, | r | <ds b>2.^( | <e b>2) fs8 gs | a2 gs4 |
				fs2. | cs2 d4 | e2 gs,4 | a, d, e, | a,2. | \fine
			} % end voice three
			
			\new 	Voice {
				%\voiceFour
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