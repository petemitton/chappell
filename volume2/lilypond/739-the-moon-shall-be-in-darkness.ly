\version "2.24"
\language "english"

global = {
  \time 3/4
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
            \partial 4 g4 | <e c'> <c g> <cs bf>8 a | <d g>( f) d4 <b,! f>8 g | <c f> e c4 c | c2 <d g>8( f) | \mBreak
            \stemUp e8[ g g( c')] c'( d') | \stemNeutral <c' e'>4 <fs a d'> \stemDown <d fs a>8( b16 c') | %
            \stemUp c'8( b) <b, g>4 <b, d g>4 | 2 <d g>8 f | \mBreak 
            \stemNeutral e8[ g <e g>( c')] <g c'> <b d'> | <c' e'>4 <fs a d'> <d fs a>8 b16 c' | %
            <d g c'>8 b <b, d g>4 <c e> | <c f a>2 <b, g>8( a16 b) | \mBreak
            <c g c'>4 g bf8( a) | g( f) d4 f8( g) | f( e) c4 c | \partial 2 c2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s2.*4 |
            \stemUp s4 e4 g | s2. | <d g>4 s2 | s2. |
            s2.*4 |
            s2 cs4 | d4 s4 b,! | c s2 | s |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The moon shall be in | dark -- ness, and the | stars shall give no | light, If |
        e -- ver I prove | false to my | own heart’s de -- light; In the |
        mid -- dle of the _ | o -- cean there shall _ | grow a myr -- tle | tree, If |
        e -- ver I_prove | false to the | girl that loves | me. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <c g> <e g>4 4 | \stemUp a f s | g e <c e> | s2. |
            \stemNeutral <c g>4 <c c'> <e c'>8 <g d'> | <c' e'> 4 d' d | g2 4 | 2 <b, g>4 |
            <c g>4 <c c'> <e c'>8 <g d'> | <c' e'>4 d' d | g g <c g> | <f, f>2 f4 |
            e2 <e g>4 | \stemUp a4 f s | g e s | s2 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s2. | d2 <g, g>4 | c2 s4 | <c e>2 <b, g>4 |
            s2.*8 |
            s2. | d2 <g, g>4 | c2 <c e g>4 | 2 | \fine
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