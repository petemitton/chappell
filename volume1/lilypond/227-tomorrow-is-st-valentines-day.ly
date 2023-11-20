\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key a \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Cheerfully."}
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
            \partial 8 a8 | cs'( e') d' cs'( b) a | e4 cs8 e4 a8 | s2. | \mBreak
            s2.*2 | e4 cs8 e4 e8 | a( b) cs' cs' b4 | \partial 8*5 <e a>4.~<e a>4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | cs'8( e') d' cs' b a |
            b4.( b4) b8 | cs'( e') d' cs'( b) a | s2. | s4. <e gs> | s4. s4 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Good8 | mor4 -- row,8 ’tis4 St.8 | Valent4 -- ine’s8 day,4 All8 | in4 the8 morn -- ing be |
        -8 time,2 And8 | I4 a8 maid4 at8 | your4 win8 -- dow,4 To8 | be4 your8 Valen4. -- tine.2 8 |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            r8 | <a, e>2. | <cs a> | <a, e>4. <cs a>
            <e a>4.( <e gs>4) r8 | <a, e>2. | <cs a> | <e cs'>4. <e d'> | <a cs'>4.~<a cs'>4 | \fine 
          } % end voice three
          \new Voice { % voice four

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
