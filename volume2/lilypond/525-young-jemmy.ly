\version "2.24"
\language "english"

global = {
  \time 4/4
  \key d \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 <as, fs>4 | <b, d> b, d <cs fs> | <d b>2 <g d'> | a4. b8 a( b) a( fs) | e2 fs4 4 | \mBreak
            <b, d>4 b, d <cs fs> | <d b>2 d'4. e'8 | \stemNeutral <b d' fs'>4 e'8 d' <e as cs'> d' cs' b | \partial 2. <d b>2 4 \bar "||" | \mBreak
            \partial 4 fs4 | b4. cs'8 <a d'> cs' d' a | fs4( a2) fs4 | <fs b>4. <g cs'>8 <a d'> cs' b a | <fs d'>2. fs'4 | \mBreak
            fs4. e8 <d fs>_( g) <cs a>4 | <fs a>4. <e g>8 <d fs>4 <e as> | \stemUp <d b>4 cs'8_( d') \stemDown <fs as e'>( d') <e as cs'>( b) | \stemUp \partial 2. <d b>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*2 | \stemUp fs4 s d s | \stemDown cs4 s2. |
            s1 | s2 b | s1 | s2. |
            s4 | fs4 s2. | s1*3 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Young Jem -- my is a lad That’s roy -- al -- ly des -- cend -- ed, With |
        ev’ -- ry vir -- tue clad, By _ ev’ -- ry _ tongue _ _ com -- mend -- ed.
        A true and faith -- ful Eng -- lish heart, Great Brit -- ain’s joy _ and _ hope, And
        brave -- ly will main -- tain their part, In spite of Turk and Pope.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            fs,4 | b,2. a,4 | g,2 b,2 | d fs | s4 \stemUp b as2 |
            \stemNeutral b,2. a,4 | g,2. g4 | fs2 2 | b4 fs b, | 
            <b d'>4 | 2 <fs d'> | <a d'> <a cs' e'>4 <b d'> | \stemUp d'4. e'8 fs' e' d' cs' | <d d'>4 a d' r |
            a1 | s1*2 | s2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1*3 | a4 g fs2 | 
            s1*3 | s2. | 
            s4 | s1*2 | b2 a | s1 |
            d2 a, | \once \stemUp d,2. cs'4 | b2 fs | b2. |
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