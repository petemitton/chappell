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
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 4 \tuplet 3/2 {c'8_( d' ef')} | f'2 d'4 c'8 bf | a2 f4. ef8 | d ef f4 bf f | g2. \tuplet 3/2 {d'8_( ef' f')} | \mBreak
            g'2 f'8 g' f' d' | c'2 f | bf8 a bf c' c'4. bf8 | 2. ef'4 | d'4. c'8 d'4 g' | f'4. ef'8 d'4 ef'8 d' | \mBreak
            c'4 bf c' d' | g2 bf | f4 d c bf, | ef g g a8 bf | c' d' c' a g4 f | \mBreak
            ef'2. f'4 | <bf d'> c'8 bf a4 g | c'2 f | bf8 a bf c' c'4. bf8 | \partial 2. bf2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            c'4 | d'2 f | f c | d4 bf, bf, bf, | <bf, ef>2. d'4 |
            ef'2 s2 | s1 | s4 d ef2 | d2. g4 | f2. bf4 | 2. s4 |
            s1*4 | ef2. 4 | 
            <ef bf>2. f4 | 2 ef | f c | f4 d ef2 | d2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <f a>4 | <bf, bf>2 2 | <f c'> <a, f> | <bf f>4 <d f> <bf f> <d f> | ef2. <g b!>4 |
            <c c'>2 <d f b!> | <ef g c'> <ef f a> | <d f bf>4 <g bf> \stemUp bf a | bf2. 4 | 2.  \stemNeutral <bf ef'>4 | <bf d'>2. <ef ef'>8 <d d'> |
            <c c'>4 <bf, bf> <c c'> <d d'> <g, g>2 <bf, bf> | <d bf> <d f> | <c g> <c ef> | f,2. 4 |
            g,2. a,4 | bf,2 c | a, <ef a> | <d bf>4 <g bf> \stemUp bf a | bf2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1*4 |
            s1*2 | s2 f2 | bf,2. s4 | s1*2 |
            s1*5 |
            s1*3 | s2 f2 | bf,2. |
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        \override TupletBracket.tuplet-slur = ##t
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score