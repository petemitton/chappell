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
            \partial 8 b,8 | e fs g a( g) fs | e4.~4 <fs a>8 | \stemUp b e' d' <e c'>4 <fs a>8 | <g b>4.~4 <fs a>8 | \mBreak
            b8( e' d') <g c'>4 <fs b>8 | <e a> g <c fs> ds4. | <ds g>4.-> e8 c' <b, e b> | \partial 8*5 <c e a>[ g <a, d fs!>] e4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. ds4 s8 | s2. | g4. s4. | s2. |
            g4. s4. | s2.*2 | s4. s4 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
         A | las! I am in a | rage, And | bit -- ter -- ly weep and | cry, Be- |
         cause I’m nine -- teen years of age, | Yet can -- not be | mar -- ried, not I. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <e g>4. <b, fs>4 a8 | <e g>4 g8(\< b4)\! d8 | g c' b a4 d'8 | g4 8(\< b4)\! d8 |
            g8 c' b e'4 d'8 | c'4 a8 b4. | <b, b> <c g>4 g,8 | a,4 b,8 <e, g>4 | \fine
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