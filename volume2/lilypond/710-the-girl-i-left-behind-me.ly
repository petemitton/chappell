\version "2.24"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \stemUp \partial 4 ef'8( d') | c'4 <ef af> <ef g> <d f> | <ef g> ef c4. d8 | ef4 <c ef> <bf, ef>8( f) <ef g>( af) | \mBreak
            <d bf>2^( <ef g>4) ef'8 d' | c'4 bf8 af g4 <d f> | <ef g> ef c <af, ef> | <bf, d>8_( ef) <af, f>4 bf, <bf, d> | \mBreak
            \partial 2. <bf, ef>2 4 \bar "||" | \partial 4 <ef bf>8( af) | g4 <ef bf> <ef c'> <af d'> | %
            <ef ef'>4 bf4 g <f bf>8( af) | g4 <ef bf> <ef c'> <af d'> | \mBreak
            \stemNeutral <g c' ef'>2_( <g b! d'>4) <f b ef'>8 d' | <ef c'>4 <bf, f bf>8( af) <bf, ef g>4 <bf d f> | <ef g> <g, ef> <af, c> <af, ef> | %
            <bf, d>8( ef) <af, f>4 bf, <bf, d> | \partial 2. <bf, ef>2 4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
           \voiceTwo
            ef4( | \once \stemUp 4) s2. |  s1*2 |
            s2. ef4~ | 4 f g s | s1*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        I’m | lone -- some since I | cross’d the hill, And | o’er the moor and |
        val -- ley, Such | hea -- vy _ thoughts my | heart do fill, Since | part -- ing with my |
        Sal -- ly. | I seek no more the | fine or gay, For | each does but "re -" |
        "- mind me" How _| swift the hours did | pass a -- way, With_the | girl I’ve left be -- hind me. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g4( | af) f bf bf, | ef r af2( | g4) af g ef |
            bf4 bf, ef g~ | g d ef bf, | ef, r af, c | bf,2. \once \stemDown bf,4 |
            \stemNeutral <ef, g>2 \once \stemUp g4 | d | ef g af f | g2( ef4) d | ef g af f | 
            g2 g,4 4 | c d ef bf, | ef,2 af,4 f, | \stemUp bf,2 g4 f | g2 4 |
          } % end voice three

          \new 	Voice {
            %\voiceFour
            s4 | s1*6 | s2 \stemUp g4 f |
            \stemNeutral s2 ef4 | s4 | s1*3 |
            s1*3 | s2. \stemDown bf,4 | ef,2 ef4 | \fine
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score