\version "2.24"
\language "english"

global = {
  \time 6/8
  \key bf \major
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
            \repeat volta 2 { \partial 8 d8 | <bf g>4 g8 <a, fs>4 d8 | <bf, bf>4 bf8 <ef a>4 c'8 | <d bf>4 g8 <c a>4 fs8 | \partial 8*5 <bf, g>4.~4 | } \mBreak
            \partial 8 bf16( c') | <f d'>4 <f bf d'>8 4 bf8 | <a c'>4 <f a c'>8 4 a8 | <d bf>4 g8 <ef c'>4 bf8 | <d g bf>4.^( <fs a>4) d8 | \mBreak 
            <d g>4 g8 <c fs>8. e!16 d8 | <bf, bf>4 bf8 <ef a>4 c'8 | bf8. a16 g8 <c a>4 fs8 | \partial 8*5 <bf, g>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*4 |
            s8 | s2.*6 | \stemUp d4 s2 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        There | was a jol -- ly | mil -- ler once, Liv’d | on the riv -- er | Dee, |
        And | this the bur -- then | of his song For | ev -- er us’d to | be, I |
        care for no -- bo -- dy, | no, not I, If | no -- bo -- dy cares for | me. |
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        He | work’d and sung from | morn till night, No | lark more blithe than | he. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | g,4. d | g c  | d d | g,4 d8 g4 |
            r8 | bf,4 bf8 4 r8 | f,4 <f c'>8 4 r8 | g4. c | d4._~4 \stemUp fs8 |
            g4 s2 | g,4. c | d d | g,4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*4 |
            s8 | s2.*3 | s8*5 c8 |
            bf,4. a, | s2.*2 | s8*5 |
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