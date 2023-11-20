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
            \stemUp \partial 8 g16\p( f) | e8. f16 g8 c'8. b16 a8 | g8. f16 e8 <b, d>4-> g16 f | \mBreak
            e8. f16 g8  c'8. b16 a8 | \partial 8*5 <g b d'> d fs g4 | \bar "||" \partial 8 <b, g>16\f f! | e8 c <c g> <c f a>4\sf <cs a>16 g | \mBreak
            fs8 d <d a d'> <d g b>4\sf <b, f! g>8 | c'8. d'16 <e c' e'>8 <c g> e <c g> | \partial 8*5 <c f a> c' <f g b> <e g c'>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | c4. c | d4 e8 s4. |
            c4. c | s2.*2 |
            s2. | \stemUp <c e>4 s8 s4. | s4. s4 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The | wo -- men all tell me I’m | false to my lass, That I |
        quit my poor Chloe _ and | stick to my glass; | But to | you men of rea -- son, my |
        rea -- sons I’ll own, And | if you don’t like them, why | let them a -- lone. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 c4.( a,->) | b,4( c8 g,4) r8 | 
            c4. a,-> | d,4 <d c'>8 <g b>4 | <g,, g,>8 <c, c>4 <e, e>8 <f, f>4 <ef, ef>8 |
            <d, d>4 <fs, fs>8 <g, g>4 8 | <a, a>4 8 <e, e>4->r 8 | <f, f>4 <g, g>8 <c, c>4-> | \fine
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