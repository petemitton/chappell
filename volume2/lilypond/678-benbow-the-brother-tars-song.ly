\version "2.24"
\language "english"

global = {
  \time 4/4
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
            \partial 4 e4 | <c e a>\f a gs8( a) b( gs) | <c e>2 c4 <c e> | <b, d g!>2^\< <b, d>4 <d b>\! | <f d'>2. <e c'>8 b | \mBreak
            <e c'>4 b8( a) <e gs>( a) b( gs) | <e a>2 c4\p e | \partial 2. a2. \bar "||" | %
            \partial 4 a8\f( b) | <e c'>4 4 <g e'>4 4 | <g d'>2 <g c'>4( <g b>) | \mBreak
            \stemUp <e c'>4 b8( a) d'( c') b( a) | <e gs>2 r4 d-> | e-> <c a>-> <f b>-> <d d'>-> c'( b8 a) c'( b) a( gs) | <c a>2 e4\p gs | \mBreak
            a2. \textMark \markup { \caps "Chorus." } d4\f | e <c a> <f a b> <d a d'> | <e a c'> b8 a <e gs c'> b a gs | <c a>2 e4 gs | \partial 2. a2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 | s2 <b, e>4 s4 | s1*3 |
            s1*5 | s2 d4 s | s1*2 | e4-> s e s | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Come, | all you sai -- lors | bold, Lend an | ear, lend an | ear, Come, _ |
        all you sai -- lors | bold, lend an | ear; | It’s | of our Admir -- al’s | fame, Brave |
        Ben -- bow call’d by | name, How he fought on the | main You shall | hear, you shall |
        hear, How | he fought on the | main ". . ." _ you _ shall _ | hear, you shall hear. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | a,2 e | a2 4 4 | g!2 4 4 | <d a>2. <e gs>4 | 
            <a, a>2 <e b> | <a c'> c4 e | a2. | r4 | <c g>4 4 <c c'> <e c'> | <g b>2 <c' e'>4 <g d'> |
            <a c'>2 <f a> | <e b> r4 <b, gs> | <c a> <f a> <d a> <b, a> | <e a> r <e gs> r | a2 e4 gs |
            a2. gs4 | a4 <f, f> <d, d> <b,, b,> | <e, e> r <e, e> r | <a, a>2 e4 gs | a2. | \fine
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