\version "2.24"
\language "english"

global = {
  \time 2/4
  \key f \major
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
            f4. g8 | a f d'4 | c'8[ a g f] | g( e) d( c) | f4. g8 | \mBreak
            a8 f <f f'>4 | <g e'>8[ c' <f d'> b!] <e c'>2 \bar "||" | <e c'>4. <f d'>8 | <g e'> c' <f f'>4 | bf8[ a <d g> f] | \mBreak
            \stemUp <c e>8( g) c4 | bf4. d'8 | c'8[ <bf, e> <a, f> <bf, f bf>] | <c f a>4 g8.( f16) | <a, f>2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2*4 | c2~ |
            4 s4 | s2*5 |
            s2 | f2~ | 8 s4. | s4 \stemUp <bf, e>4 | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        See the | love -- ly rose, | Nat -- ure’s own e -- lect -- ed, | Queen of |
        each par -- terre | Smil -- ing sweet and | fair. | See the | love -- ly rose, | cull’d to be neg- |
        -lect -- ed, | Such is | beau -- ty scarce -- ly | worth our | care. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            a4. bf8 | c' a bf4 | s2*3 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            f2~ | f | <f a>4 <d b!> | <c e c'>4 d\rest | a4. e8 |
            \stemNeutral f4 d | g g, | c2 | c' | <bf c'>4 <a c'> | <g d'> bf, |
            c2 | d4. bf,8 | a,[ g, f, d] | c4 4 | f2 | \fine
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