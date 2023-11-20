\version "2.24"
\language "english"

global = {
  \time 3/4
  \key ef \major
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
            \stemUp \partial 4 bf4 | ef' d' c' | bf8^( g) ef4 f | g8( ef) c4 d | ef2 bf4 | c' d' ef' | \mBreak
            f'8( d') bf4 c'8( d') | ef'4 g a! | <d bf>2 4 | c'8( d') <c' ef'>4 <f c' f'> | <f bf d'> bf8( af g)( f) | ef4. f8 <ef g>4 | \mBreak
            <ef c'>2 <g d'>4 | ef' d' c' | <g bf>8 g ef4 <c f> | <bf, g>8 ef c4 d | \partial 2 ef2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | ef2.~ | 4 s2 | s2.*2 | f2.~ | 
            4 s2 | ef2. | s2. | \stemUp ef4 s2 | s4 d s | s2. |
            \stemDown s2. | ef2 f4 | s2.*2 | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Fair | He -- be I | left with a | cau -- tious de -- sign, To escape from her |
        charms, and to | drown love in wine: I | tried it, but found, when_I | came to "de - " |
        "- part," The | wine in my | head, _ but still | love _ in my | heart. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            \stemUp r4 | g4 bf af | g2 s4 | s2.*2 | a!4 bf c' |
            s2. | c'2. | s2.*4 |
            s2. | c'4 bf! af | g2 s4 | s af f | g2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | ef2.~ | 4 c <d bf>^( | <ef bf>) <af, af>4 <bf, f> | <ef g>2 4 | ef2. |
            <d bf>4 <g d'>2 | c4 f2 | <bf, bf>2 bf4 | af!2 4 | af2. | g2 <ef bf>4 | 
            <af c'>2 <g b!>4 | c2 d4 | ef c af, | bf,4 2 |  <ef, ef> |
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