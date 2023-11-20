\version "2.24"
\language "english"

global = {
  \time 3/4
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
            \textMark \markup {\caps "Solo." } <b, g> <d g> <e a> | fs4. g8 a4 | <d b> <g b> <e c'> | <g b>4. <fs a>8 g4 | <e a> <b, g> <d fs> | \mBreak
            <b, g>4 \textMark \markup {\caps "Sym." } d8\< c b, a, | \textMark \markup {\caps "Chorus." } <b, d g>4\ff <g, d g> <c e a> | <a, d fs>4. <a, d g>8 <a, d a>4 | %
            <b, d g b> <b, e g b> <c e g c'> | <b, d g b>4. <a, d fs a>8 <g, b, g>4 | <a, e a>4 <b, d g>4 <a d fs> | \mBreak
            <b, d g>4 \textMark \markup {\caps "Sym." } <b, g>8\p <d a> <g b> <a c'> | \textMark \markup {\caps "Solo." } <b d'>4 <g d'> <b d'>4 | %
            4. <a c'>8 <g b>4 | <fs c'> <d c'> <fs c'> | <a c'>4. <g b>8 <fs a>4 | \once \stemUp b4 c'8 b a g | \mBreak
            b4. c'8 <g d'>4 | <g e'> <fs a>4.-> g8 | 4 \textMark \markup {\caps "Sym." } <d g>8( <fs a> <g b> <a c'>) | <d g b d'>4\ff 4 4 | %
            4. <d a c'>8 <d g b>4 | <d fs a c'>4 4 4 | \mBreak
            <d fs a c'>4. <d g b>8 <d fs a>4 | <d g b> <d fs c'>8 <d g b> <d a> <b, g> | \stemUp b4. c'8  <d g d'>4 | %
            <e g c' e'>4 <d fs a>4.-> g8 | <b, d g>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2. | d | s2.*3 |
            s2.*6 |
            s2.*5 | g8 fs e d c b, |
            s2.*6 |
            s2.*2 | <b, fs>8 g fs <e g> s4 | s2.*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        God save our | no -- ble Queen! | Long live our | grac -- ious Queen! | God save the |
        Queen! _ _ _ _ | God save our | no -- ble Queen! | Long live our | no -- ble Queen! | God save the |
        Queen! _ _ _ _ | Send her vic -- to -- ri -- ous, | hap -- py and | glo -- ri -- ous, | Long to _ reign _ |
        o -- ver us, | God save the | Queen! _ | Send her vic -- to -- ri -- ous, | Hap -- py and |
        glo -- ri -- ous, | Long to _ reign _ | o --  ver us, | God save the | Queen. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g,4^\p b, c | d4. e8 fs4 | g e c | d2 e4 | c d d, |
            g,4 <d, d>8 <c, c> <b,, b,> <a,, a,> | <g,, g,>4 <b,, b,> <c, c> | <d, d>4. <e, e>8 <fs, fs>4 | %
            <g, g> <e, e> <c, c> | <d, d>4. 8 <e, e>4 | <c, c> <d, d>4 4 |
            <g,, g>2 r4 | g,4 b, d | g g,2 | d4 fs a | d' d2 | g2. |
            e2 b,4 | c d d, | g, <b, g>8( <d a> <g b> <a c'>) | <g,, g,>4 <b,, b,> <d, d> | <g, g> <g,, g,>2 | <d, d>4 <fs, fs> <a, a> |
            <d d'>4 <d, d>2 | <g, g>8 <b, b> <a, a> <g, g> <fs, fs> <d, d> | <d, d> <e, e> <d, d> <c, c> <b,, b,>4 | %
            <c, c> <d, d> \ottava #-1 d,, \ottava #0 | <g,, g,>2. | \fine
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