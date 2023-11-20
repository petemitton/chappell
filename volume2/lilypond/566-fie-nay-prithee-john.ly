\version "2.24"
\language "english"

global = {
  \time 4/4
  \key bf \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff \with {instrumentName = "1" shortInstrumentName = ""}  {
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            bf4. d'8 c' a f4 | g4. bf8 a f d4 | \mBreak
            ef4. g8 f d bf,4 | ef f bf,2 |
          }	% end voice one
      } % end staff a

      \new Lyrics \lyricsto "one" {	% verse one
        Fie! nay prith -- ee, John | Do not quar -- rel, man, |
        Let’s be mer -- ry, and | drink a -- bout. |
      }	% end lyrics verse one

      \new   Staff \with {instrumentName = "2" shortInstrumentName = ""}  {
          \clef treble
          \global
          \new Voice = "two" \fixed c' {
            \voiceTwo
            \stemNeutral bf8 f' f' bf a f' f' a |g ef' ef' g a d' d' a |
            \stemDown ef8 c' c' ef d bf bf d | \stemUp c4 a bf2 |
          }
      } % end staff b

      \new Lyrics \lyricsto "two" {	% voice two
        You’re a rogue, you’ve cheat -- ed me I’ll | prove be -- fore this com -- pa -- ny; I |
        caren’t a far -- thing, Sir, for all you | are so stout. |
      }	% end lyrics voice one
      
      \new   Staff \with {instrumentName = "3" shortInstrumentName = ""}  {
          \clef treble
          \global
          \new Voice = "three" \fixed c' {
            \voiceTwo
            f'8 d' bf g' f' c' a f' | d' bf g f' c' a f d' |
            bf8 g ef c' a f d d' | g'4 f'8. ef'16 d'2 |
          } % end voice three
      } % end staff c
      
      \new Lyrics \lyricsto "three" {	% voice three
        Sir, the charge is quite ab -- surd, And | here I’ll make you eat your word, Or |
        you shall an -- swer with your sword, For | who cares for you? |
      }	% end lyrics voice three
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