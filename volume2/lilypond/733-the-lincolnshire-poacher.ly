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
            \partial 8 d8 | <b, g>4 g8 8( fs) e | d4( c8) b,4 d8 | <b, g>4 g8 <c a>4 fs8 | \mBreak
            <b, g>4.~4 d8 | <b, g>4 <d a>8 <g b>4 <a c'>8 | <b d'>4( b8) g4 a8 | b4 8 8( a) g | \mBreak
            <fs a>4.~4 d8\p | <d g>4 <d a>8 <d b>4 <g c'>8 | <a d'>4_( <fs b>8) g4 <e a>8 | <ds b>4 b8 <g b> a g | \mBreak
            <e a>4. <ds b>4\f\fermata a8 | <e g>4 g8 g fs e | d4 c8 b,4 d8 | <b, g>4 g8 <c a>4 fs8 | \partial 8*5 <b, g>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. \stemUp e4 s8 | s2.*2 |
            s2.*3 | s4. g4 s8 |
            s2.*4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        When I was born ap -- pren -- tice, In | fa -- mous Lin -- "coln -" |
        shire, Full well I serv’d my | mas -- ter for | more than se -- ven |
        year, Till I took up to poach -- ing, As you shall quick -- i -- ly |
        hear, Oh! ’tis | my de -- light on a | shin -- ing night, In_the | sea -- son of the year. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | g4. c | \stemUp fs g | d d, |
            \stemNeutral g,4 d8 g4.~-> | 4 <d a>8 <g b>4 <a c'>8 | <b d'>4.~4 <fs d'>8 | <g d'>4. <e cs'>4. |
            <d d'>4 a8 d'4 c'!8 | b4 fs8 g4 e8 | fs4 d8 e4 c8 | b,4. e |
            c4. b,\fermata | e \stemUp g | a s | \stemNeutral d d, | g,4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2. | d4. g,4 b,8 | s2. |
            s2.*9 | s4. e, | fs, g,4 b,8 | s2. | s8*5 |
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