\version "2.24"
\language "english"

global = {
  \time 9/8
  \key c \major
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
            \repeat volta 2 { \partial 8 d8 | g8. a16 g8 <e g> f e <a, f>[ d]\fermata d | g8. f16 g8 <d a> g a <d b>4 b16( c') | \mBreak
            d'8. e'16 d'8 d' b g a[ f]\fermata d | \partial 8*8 e[ f <d g>] <c a>[ f d] <b, g>4 | } \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | b,4 s8 s2. | g,4 s8 s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Give | ear to a fro -- lic -- some dit -- ty, Of | one who a wa -- ger would lay, He’d |
        pass ev -- ry watch in the ci -- ty, And | ne -- ver a word would he say, | 
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        But | dal de -- ra, ra -- ra, dal da -- ra, &c. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            s8 | g,4. c d | e f g4 r8 |
            <g b>4. <b, g> <d f> | <c g>4 b,8 a,4 d8 g,4 | 
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