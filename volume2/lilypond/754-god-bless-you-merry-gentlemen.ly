\version "2.24"
\language "english"

global = {
  \time 2/4
  \key ef \major
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
            \partial 8 \stemUp <ef ef'>8 | ef'[ c' bf af] |  <ef g>4 <d f> | ef2 | c'4 bf8 ef' | d'4 d' | \stemNeutral <g ef'>2 | \mBreak
            <ef ef'>4\p <f bf>8 af | <ef g> f g af | <d f bf>2 | <ef bf ef'>4 <c ef f>8 af | <ef g>8( af) <bf, d bf>4 | ef2 | \mBreak
            <ef g ef'>4\f <f bf>8 af | <ef g>[ f <ef g> af] | <d f bf>2 | <ef bf ef'>4 <c ef f>8 af | <bf, ef g>( af) <bf, d bf>4 | ef2 \bar "||" | \mBreak
            ef8\pp^([ f) g( af)] | <d f bf>2 | <ef bf ef'>8( d') <ef af c'>4 | <ef g bf>4. g8 | <ef af>[ bf <ef af c'> d'] | <g ef'>2\< | \mBreak
            <ef g ef'>4\f <f bf>8 af | <ef g>[ f <ef g> af] | <d f bf>2 | %
            <ef bf ef'>4\ff \textMark \markup { \italic "Slower." } <c ef f>8 af | <bf, ef g>( af) <bf, d f bf>4 | ef2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | ef2 | s2*2 | ef2 | f8( g) af4 | s2 |
            s2 | s4 ef4 | s2*2 | \once \stemUp bf,4 s4 | s2 |
            s2*6 |
            ef2 | s2*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        God | bless you, mer -- ry | gen -- tle -- men, | Let no -- thing | you dis -- may; |
        Re -- mem -- ber | Christ, our Sa -- vi -- our, | Was born on | Christ -- mas | day, |
        To save poor | souls from Sa -- tan’s | pow’r, | Who long had | gone a -- stray. |
        O tid -- ings, | O tid -- ings of | com -- fort and of | joy. |
        For Je -- sus | Christ, our Sa -- vi -- our, | Was born on | Christ -- mas | day. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <ef g>8 | <c af>2 | <bf, bf>4 <bf, af> | <ef g>2 | <af, af>4 <ef g> | <bf, bf>4 4 | <ef bf>2 |
            <ef g>4 <d bf> | <ef bf> c | bf, af, | g, af, | bf, bf, | \once \stemUp g2 |
            <c, c>4 <d, d> | <ef, ef> <c, c>\< | <bf,, bf,>8[\! <c, c> <bf,, bf,> <af,, af,>] | <g,, g,>4 <af,, af,> | <bf,, bf,>4 4 | \once \stemUp g2 | 
            c'2 | bf4 af | g af | ef d | c af, | ef, d, | 
            <c, c>4 <d, d> | <ef, ef> <c, c> | <bf,, bf,>8[ <c, c> <bf,, bf,> <af,, af,>] | <g,, g,>4 <af,, af,> | <bf,, bf,>4 4 | <ef, ef g>2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2*11 | <ef, ef>4\< <d, d>\! |
            s2*5 | <ef, ef>2 |
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