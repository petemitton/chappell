\version "2.22.0"
\language "english"

global = {
	\time 4/4
	\key bf \major
}

mBreak = { \break }

\header {
%	title = \markup {\medium \caps "Song by Henry VIII."}
%	poet = "In moderate time."
%        composer = "In moderate time."

%	meter = \markup {\italic "In moderate time."}
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
                                g4. g8 <d g bf>4 <ef g bf>4 |  a8.( bf16 a8<ef g>8) <d f>4 <c f>4 | bf4.bf8 a4 g4 |  fs8 g8 fs4 <bf,d g>2 | \mBreak
                                bf4. bf8 <d g bf>4 <ef g bf>4 |  a8.( bf16) a8(<ef g>8) <d f>4 <c f>4 |  bf4. bf8 a4 g4 |  
                                f8 g8 f4 <bf,d g>4 r8 <bf,d f!>8 |  <bf,ef g>4 <c ef a>4 <bf,f bf>4 r8 <bf,d f>8|\mBreak
                                <bf,ef g>4 <c ef a>4 <d f bf>4 <ef g bf>4 | a8.( bf16 a8) <ef g>8 <d f>4 r8 <bf,d f>8 |  
                                <bf,ef g>4 <c ef a>4 <d f bf>4 r8 <bf d f>8 | 
                                <bf,ef g>4 <d f a>4 <d g bf>4 <d g bf>4 | a4 g4 fs2^\mordent |  <bf,d g>1| \mBreak
			}	% end voice one
			\new Voice  \fixed c' {
				\voiceTwo
				 <bf,d>2s2 | <c f>4s2.| <bf,d>4 s4 <c ef>2| <c d>2 s2 |
				<bf,d>2 s2 | <c f>4 s2. | <bf,d>4s4 <c ef>2 | <c d>2 s2 | s1 |
				 s1*4 | <c ef>2 <c d>2 |
			} % end voice two
		>>
		} % end staff up
		
		\new Lyrics \lyricmode {	% verse one
		        Pas-4.time8 with4 good4| com8-8pa8-8ny4 I4 | love,4 and8 shall4 un4-8 |til4 I4 die;2|
		        Grudge4. who8 will,4 but4 | none4 de8-8ny,4 So4 | God4. be8 pleas'd4 this4 | life4 will4 I:4 For4 | my4 pastance,2 Hunt,4 |
		        sing4 and4 dance;4 My4 | heart4. is8 set.4 8 All8 | good-4ly4 sport4  To4 | my4 comfort,2 Who4 | shall2 me2 | let?1
		}	% end lyrics verse one
		\new   Staff = "down" {
		<<
			\clef bass
			\global
			\new Voice \fixed c' {
				\voiceThree 
				g,,2 g,4 ef,4 | f,2 bf,4 a,4 | g,2 c,2 | d,2 g,2 | 
				g,,2 g,4 ef,4 | f,2 bf,4 a,4 | g,2 c,2 | d, g,,4 r8 bf,,8| ef,4 c,4 d,4 r 8bf,,8| 
				ef,4 c,4 bf,,4 ef,4 | f,2 bf,4 r8 bf,,8| ef,4 c,4 bf,,4 r8bf,,8|ef,4 d,4 g,4 g,,4| c,2 d,2|g,,1|
				%
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
			\override Staff.Rest.voiced-position=0
			}%end score
		}%end context
	}%end layout

}%end score