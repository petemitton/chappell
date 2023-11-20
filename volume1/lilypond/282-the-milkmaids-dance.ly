\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Lively."}
%                                	arranger = \markup {\caps "The Milkmaids’ Dance."}
}
\score {

  \new ChoirStaff {
	<<
      \new Staff = "up"  {
		<<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            ef4 g g f8 ef | s1 | bf4 g s ef | d2 bf,2 | c4 af, c8 d ef4 | \mBreak
	    d4 f bf s4 | c'8 bf af g af g f ef | ef4. f8 <bf, g>2 \bar "||" | bf4 g8 af bf4 g8 af | bf af g f ef2 | f4 d8 ef f4 d8 ef | \mBreak
	    f8 ef d c bf,2 | s1*2 | s2 af8 g f ef | ef4. f8 <bf, g>2 \bar "||" | \mBreak
	    af8 g f ef ef4 bf | g2 ef | f4 c c f | d2 bf, | c4 af, c f | d8 ef f4 bf s4 | \mBreak
	    c'8 bf af g f4. ef8 | ef4. f8 <bf, g>2 \bar "||" | s1*2 | bf4 af8 g f g f ef | \mBreak
	    d8 ef f4 d bf, | c bf,8 af, c4 ef | d8 ef f4 s2 | s2 f4. ef8 | ef4. f8 <bf, g>2 \fine | 
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1 | bf2 ef' | s2 c'4 s | s1*2 |
	    s2. ef'8 d' | s1*5 |
	    s1 | bf4 c'8 d' c'4 d'8 ef' | d'4 c'8 bf ef'4. bf8 | c' bf af g s2 | s1 |
	    s1*5 | s2. ef'8 d' |
	    s1*2 | <ef bf ef'>4 <ef bf> <ef bf ef'>2 | <ef af c'>4 <ef bf> <ef af c'>2 | ef2 c2 |
	    bf,1 | s | s2 bf4 ef'8 d' | c' bf af g s2 | s1 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
	  \voiceThree
            s1*5 |
	    s1*2 | s2 c, | s1*3 |
	    <bf, d f>1 | ef2 f | s1*2 | s2 ef, |
	    s1*6 |
	    s1 | s2 ef, | g,4 g, g,2 | af,4 g, af,2 | g, af, |
	    s1*4 | s2 ef, | \fine
          } % end voice three
          \new Voice { % voice four
	  \voiceFour 
            <ef g>2 <ef bf> | <ef g> <ef c'> | <ef g> <af, af> | <bf, f> <bf, d> | <af, ef> <af, af> |
	    <bf, f>2 <g, ef> | <af, ef> <bf, af> <ef g> s | <ef g bf> <ef g bf> | <ef g bf>1 | <bf, d bf>2 <bf, d bf> |
	    s1 | g,4 af,2 bf,4 | <af, bf, f>2 <g, bf, ef> | <af, ef> <bf, af> | <ef g> s |
	    <ef bf>2 <ef g> | <ef bf> <ef g> | <af, f> <af, f> | <bf, f> <bf, d> <af, ef> <af, f> | <af, bf, f> <g, bf, ef> |
	    <af, ef> <bf, d af> | <ef g> s | s1*3|
	    bf,1 | <af, ef>2 <af, ef> | <af, bf, f> <g, bf, ef> | <af, ef> <bf, d af> | <ef g> s |
          } % end voice four
		>>
      } % end staff down
	>>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
                                %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score
