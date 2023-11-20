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
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 8 c'16 b | <e c'>8 g f e d e | c e g <e c'>4 c'16 b | <e c'>8 g f e d e | \mBreak
            c8 e g <e c'>4 c'8 | <e c'> e' c' <g d'> c' b | <fs a> d' c' <g b>4 g8 | \mBreak
            g8 a b c' g f | e d c g4. | d8. e16 d8 <a, f>4. | \mBreak
            <c e>8 c e <c g>4.-> | <c a>8\staccato-> <g c'>\staccato-> <f b>\staccato-> <e c'>-> g e | \partial 8*5 a[ f g] c4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*7 | s4. \stemUp b,4.~ | 4 s8 s4. | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Who has | e’er been in Lon -- don, that | o -- ver -- grown place, Has seen | "“Lodg"-- ings to "let”" stare him |
        full in the face: Some_are | good and let dear -- ly; While some, ’tis well known, Are_so |
        dear and so bad, they are | best let a -- lone. | Down a down down, | 
        down a down down, | Down a down down der -- ry, | down a down down. |
        
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <c, c>4 r8 <c g>4 r8 | <c e>4 r8 <c g>4 r8 | <c, c>4 r8 <c g>4 r8 |
            <c e>4 r8 <c g>4 r8 | <c c'>4 r8 <g b>4 r8 | <d d'>4 r8 <g d'>4 r8 |
            <f! g d'>4 r8 <e g c'>4 r8 | <a c'>4 r8 g4.->~ | g d->( |
            a4) r8 e4. | f8 e d c4 e8 | a[ f g] c4 | \fine
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