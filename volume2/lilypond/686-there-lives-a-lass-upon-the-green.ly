\version "2.24"
\language "english"

global = {
  \time 6/8
  \key g \major
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
            \partial 8 e8 | b4 c'8 b4 a8 | g4 fs8 e4 fs8 | g4 a8 g( fs) e | \mBreak
            <g b>4.~4 e8 | b4 c'8 b4 a8 | g4 fs8 e4 <ds fs>8 | <e g>4 a8 <e g>( fs) e | \mBreak
            \partial 8*5 <ds b>4.~4 \bar "||" | \partial 8 b8 | \stemUp b( c') d' d'( c') b | \stemNeutral <e a> b g <d fs>4 <b, g>8 | \mBreak
            <e a>8( b) c' <g b>4 <fs a>8 | <fs b>4 <e g>8 <c fs>( g) a | g( fs) e b,4 <a, ds>8 | \partial 8*5 e4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*8 | 
            s8 | \stemUp d!4 s8 g4 s8 | s2. |
            s2.*2 | <b, e>4 s2 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        At | night, by moon -- light | on the plain, With | rap -- ture how I’ve |
        "seen, . . ." At -- tend -- ed by her | harm -- less train, The | lit -- tle fai -- ry |
        "queen . . ." | Her | mid -- night re -- vels | sweet -- _ ly keep; While |
        mor -- tals are in -- volv’d in sleep, They | trip it o’er the | green. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | \stemUp g4 a8 g4 c'8 | b4 a8 g4 a8 | b4 c'8 a g fs | 
            b4 e'8 b4 r8 | g4 a8 g4 fs8 | e4 b,8 g,4 fs,8 | e,4. c |
            b,4 fs8 b4 | r8 | g,4. b, | c d4 e8 |
            c4. d | g, a, | b, b, | \stemUp g4.^~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | e2.~ | e | e2.~ |
            e4.~4 s8 | s2.*3 |
            s2.*6 | e,4.~4 |
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