\version "2.24"
\language "english"

global = {
  \time 4/4
  \key g \major
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
            \partial 4 e4 | e b b a | g fs e <b, d> | <c e> <b ds fs> <b e g> <e a> | \mBreak
            <ds b>2. e4 | e b b a | g fs e <b, d> | <c e> <a, c fs> <b, d g> <d fs a> | \partial 2. <d g b>2. \bar "||" | \mBreak
            \partial 4 <g b>4 | <e c'> a <fs b> c' | \stemUp d' e' b <ds a> | <e g> e fs <b, g> | \mBreak
            <c a>2 <b, g>4^( <ds a>) | <e b>2( <e c'>4) <e b> | <g b> <fs a> <e g> <ds fs> | e2 <e g>8 fs e4 | \mBreak
            <fs a>2 g4( a) | b( <g c'>) <g d'> <g e'> | <e b> <c e a> <b, e g> <b, ds fs> | \partial 2. e2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*8 |
            s4 | s1 | g2. s4 | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        God | rest you, mer -- ry | gen -- tle -- men, Let | no -- thing you "dis -" |
        "- may;" For | Je -- sus Christ, our | Sa -- vi -- our, Was | born on Christ -- mas | day, |
        To | save us all from | Sa -- tan’s pow’r, When | we were gone "a -" | 
        "- stray:" O | tidings of | com -- fort and of | joy, com -- fort and |
        joy, O | tid -- ings of | com -- fort and of | joy. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <e g b>2 <ds fs b> | <e b>2. \stemUp g4 | 4 b, s2 | 
            s1*2 | s2. g4 | g a, g, s | s2. |
            s4 | a,2 d | b,4( c g,) fs, | s4 g4 a s |
            \stemNeutral a2 e,4 fs, | g,2( a,4) g, | b,2. 4 | e2 <e b> |
            <d d'>2 <e d'>4 <fs d'> | <g d'>_( e b,) c | g,( a, b,) b, | <e g>2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1 | s2. g,4 | c s e <c a> |
            <b, fs>2. d4\rest | <e g>2 <ds fs b> | <e b>2. g,4 | c s2 d4 | g2. |
            e4 | s1*2 | e,2 e |
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