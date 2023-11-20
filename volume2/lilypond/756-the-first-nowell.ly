\version "2.24"
\language "english"

global = {
  \time 3/4
  \key ef \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            \partial 4 g8( f) | ef4.( f8) g([ af)] | bf2 c'8 d' | ef'4 d' c' | bf2 <af c'>8 d' | \mBreak
            <g ef'>4 <bf d'> <af c'> | <g bf> <af c'> <f d'> |  \stemUp ef' bf af | g2 <b,! d g>8 f | ef4.( f8) g([ af)] | \mBreak 
            \stemNeutral <d f bf>2 c'8( d') | <ef af c' ef'>4 d' c' | <ef g bf>2 <ef af c'>8 d' | %
            <g ef'>4 <bf d'> <af c'> | <g bf>( <af c'>) <f d'>4 | \mBreak
            \stemUp ef'( bf) af | \partial 2 <ef g>2 \bar "||" | \partial 4 g8( f) | ef2 g8( af) | <ef bf>2 <ef g ef'>8( d') | <ef af c'>2 4 | \mBreak
            bf2. | ef'4 d' c' | bf^( <ef c'>) d' | ef'4( bf) af | \partial 2 <ef g>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s2.*6 | g2 f4 | ef2 s4 | \once \stemUp c4 s2 |
            s2.*5 |
            g2 f4 | s2.*4 |
            \once \stemUp <ef g>2 f4 | ef2.~ | 4 s2 | g2 f4 | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The | first Now -- ell that the | an -- gels did | say, Was to |
        cert -- tain poor | shep -- herds in | fields as they | lay, In _ | fields where |
        they lay, | keep -- ing their | sheep, On a | cold win -- ter’s | night that |
        was so | deep. | Now -- ell, Now -- ell, Now -- ell, "Now -" |
        "- ell," | Born is the | King of | Is -- ra -- el. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <ef g bf>2. | <d f bf> | <c ef g> | <g, ef>2 <af, ef>4 |
            <ef, ef>2.~ | 4 af,4 bf, | ef2.~ | 2 g,4 | c2. |
            bf,2. | af, | ef2 af,4 | ef,2.~ | 4 af, bf, |
            ef2.~ | 2 | r4 | <ef g>2. | g,2 ef,4 | af,4. bf,8 c[ d] |
            ef2 d4 | c bf, af, | g, af, bf, | ef,2.~ | 2 |
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
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score