\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \partial 8 g8 | <b, g>4 g8 4 b8 | <g d'>4( b8) g4 b8 | <e a>4 b8 <e a>4 b8 | \mBreak
            <fs a>4 g8 fs( e) d | <b, g>4 g8 4 b8 | <g d'>4 b8 g4 b8 | <fs a>4 <e g>8 <d fs>4 <cs e>8 | \mBreak
            \partial 8*5 d4. 4 \bar "||" | a4 8 4 b8 | a4 g8 fs( e) d | d'4 8 4 e'8 | d'4 c'8 b( a) g | \mBreak
            <g c'>4 <g b>8 <g c'>4 <g d'>8 | <g e'>4 <c' fs'>8 <b g'>4 <c' e'>8 | <b d'>4 <a c'>8 <g b>4 <fs a>8 | g4. 4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Of | all the girls in | our town, The | black, the fair, the |
        red, the brown, That | dance and prance it | up and down, There’s | none like Nan -- cy | 
        Dawson, Her | ea -- sy mien, her | shape so neat, She | foots, she trips, she | looks so sweet, Her |
        ev’ -- ry mo -- tion’s | so com -- plete, I | die for Nan -- cy | Daw -- son. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <g,, g,>4 r8 r4 g8 | b4 g8 b4 g8 | c'4. c | 
            d4. d,4. | <g,, g,>4 r8 r4 g8 | b4 g8 e4. | a4. a, |
            d4. d,4 | <c d fs>2.~ | 4. <c d a> | <b, d g>2.~ | 4. <g, d g> |
            <e g>4 <d g>8 <e g>4 <b, g>8 | <c g>4 <a, a>8 <e g>4 c8 | d4. d, | g, g, | \fine
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