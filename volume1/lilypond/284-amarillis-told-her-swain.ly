\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

mBreak = { \break }

\header {
				%	title = \markup {\medium \caps "Title."}
				%	poet = ""
				%	composer = ""

%  meter = \markup {\italic "Smoothly, and in moderate time."}
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
	    <g bf>4. <f af>8 <ef g>4 <bf, f>8( <g, ef>8) | <af, f>4 <af, bf,> <g, ef>2 | <g bf>8( <af c'>) <g bf>( <f af>) <ef g>( <d f>) <ef g>( <g, ef>) | <af, d f>4 bf, <g, ef>2 \bar "||" | \mBreak
	    <d f>4. <ef g>8 <f af>4 <ef g> | <f af> <g bf> c'4. d'8 | s1*2 | \mBreak
	    ef'4. d'8 s2 | s4 <d af>4 g4. af8 | <bf, bf>4 <ef c'>8(bf) <ef af>8( g) <d f>4 | <af, d f>2 <g, ef> \fine | 
	  }	% end voice one
	  \new Voice  \fixed c' {
	    \voiceTwo
	    s1*4 |
	    s1 |  s2 af | <g ef'>4 <g d'> <f c' ef'>8( f') <f bf d'>4 | <ef a! c'>2 <d bf> |
	    <ef bf>4 s4 <ef af! c'> <ef bf> | <ef af c'>8( bf) s4 ef d8 c | s1*2 |
	  } % end voice two
	>>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
	Phil4. -- lis8 on4 the | new4 -- made hay,2 | On4 a plea -- sant sum4 -- mers day,2
	In4. ‘re8 -- clin4 -- ing’ | pos -- ture lay,4. And8 | thought4 no shep4 -- herd | nigh2 her; |
	Till4. A8 -- min4 -- tas | came that way,4 And4 | threw4 him -- self down | by2 her. |
      }	% end lyrics verse one
      
      \new   Staff = "down" {
	<<
	  \clef bass
	  \global
	  \new Voice {
	    %\voiceThree
	    <ef, bf,>1~ | <ef, bf,>2. bf,4 | ef2. ef,4 | bf,2 ef, |
	    bf,1~ | bf,2. bf,4 | c bf, a,! bf, | f f, bf,2 |
	    g2 af!4 g | f bf, c bf,8 af, | g,4 af,8 g, f,4 bf, | ef,4 bf, ef2 | \fine
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
  
  \midi{}

}%end score