\version "2.24"
\language "english"

global = {
  \time 6/8
  \key c \major
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
            \grace s8 <c a>4\fp e8 4 <ds fs>8 | <e g>( fs) g e4 8 | <c a>4 a8 <f b>( a) b | \once \stemUp <a c'>4.^( <gs b>8) c'( b) | \mBreak
            \grace s8 <c a>4\fp e8 4 <ds fs>8 | <e g>( fs) g e4 8 | 8( a) a <f b>( a) <e gs> | %
            \partial 8*5 <c a>4.~4 \bar "||" \partial 8 c'16(\f d') | \mBreak
            <g e'>4 c'8 <g c'>( d') e' | <b d'>4 c'8 <g b>( c') d' | <g e'>4 c'8 <g c'>( d') e' | %
            <b d'>4.( <g b>8) c' d'\p | \stemUp e'4 c'8 c' d' e' | \mBreak
            <f d'>4 <a c'>8 <gs b>4\fermata <d gs c'>16(\pp b) | <c a>4 e8 4 <ds fs>8 | <e g>( fs) g e4 8 | <c a>4 a8 <f b>( a) <e gs> | <c a>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \grace s8 \stemUp s2.*3 | e4 s2 |
            \grace s8 s2.*4 |
            s2.*4 | \stemDown e2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Near the town of | Taun -- ton Dean, Up -- on a plea -- sant | green, There |
        lives the mil -- ler’s | daugh -- ter fair, Her | age is sweet eigh -- teen. | Her |
        skin’s like a -- la -- bas -- ter white, Like | dia -- monds are her eyes, There’s _ | not a mine _ of |
        jew -- els fine, That | half so much I | prize, I prize, That | half so much I prize. |
      }	% end lyrics verse one

      \new   Staff {
        \clef bass
        <<
          %\global
          \new Voice { 
            %\voiceThree
            \grace a,,8( a,4.)( c4) b,8 | e4 r8 r4 r8 | f!4 r8 d4 r8 | e4._( e,4) r8 |
            \grace a,,8( a,4.)( c4) b,8 | e4 r8 r4 <d gs>8 | <c a>4 r8 d4 e8 | a,4.~4 | r8 |
            <c, c>4 r8 <e, e>4 r8 | <g, g>4 r8 <g,, g,>4 r8 | <c, c>4 r8 <e, e>4 r8 | <g, g>4.~4 r8 | \stemUp gs4.~4 s8 |
            \stemNeutral <d a>4.( e4)\fermata e,8 | a,4.( c4) b,8 | e4 r8 r4 r8 | f!4 r8 d4 e8 | a,2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*12 | c2. |
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