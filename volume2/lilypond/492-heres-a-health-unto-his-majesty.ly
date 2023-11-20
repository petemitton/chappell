\version "2.24.0"
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
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 4 <b, g>8 <c a> | <d b>4 4 <g b> <fs b> | <e a> <c fs b> <b, g>4 8 <c a> | <d b>4 4 <g b> <fs a>8 <e g> | <fs a>2 g4 <b, g>8 <c a> | \mBreak
            <d b>4 4 <g b> <fs b> | <e a> <ds fs b> <e g> <b, e g>8 a | <b, fs b>4 4 <e b> a8 g | \partial 2. <c fs a>2 <b, g>4 \bar "||" | \partial 4 <d g b>4 | 4. <d g c'>8 <d g e'>4 <d g b> | \mBreak
            <e g e'> <fs a e'> <g d'> <d g b> | 4. <d g c'>8 <d g d'>4 <d g b> | <cs e a>4. g8 <d fs>4 <d g>8\p \textMark \markup {\italic ritard.} a | <d b>4 4 <g b> <fs b> | \mBreak
            <e a>4 <d b> d\fermata <d g>8\f <c fs a>8 | <b, g b>4 4 <d g b> <d a>8 g | <d fs a> <e g> <fs a> <g b> <e a c'>4 <e g>8 a | <ds fs b>4-> <e g b>-> <e b>\sf a8 g | \partial 2. <c fs a>2 <b, g>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | e4 s2. | s1*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Here’s8 a | health4 un -- to his | Ma -- jes -- ty, With8 a | fal4 la la la8 la8 | la2 la,4 Con- |
        -fusion2 to4 his | e -- ne -- mies, With8 a | fal4 lal la la8 la | la2 la.4 | And | he4. that8 will4 not |
        drink4 his health, I | wish4. him8 nei4 -- ther | wit4. nor8 weath,4 Nor | yet a rope to |
        hang him -- self. With8 a | fal4 lal la la8 la | la la la la la,4 With8 a | fal4 lal la la8 la | la2 la.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            g,4 | s g g g | c d s g, | s1 | s2. g,4 |
            s4 g g g | c b, s2 | ds4 s c4. s8 | d!2 s4 | s | s1 |
            s1*4 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | g fs e d | s2 g4 s | g <fs g> <e g>4. <e g>8 | <d c'>2 <g b>4 s |
            g f e d | s2 e4 e | s e s4. e8 | s2 g4 | g | 4. a8 b4 g |
            \stemNeutral c'4 4 b g | 4. a8 b4 g | a4 g, d e8 fs | g4 <fs g> <e g> <d g> |
            <c a>4 <d fs> <b, g>^\fermata b,8 a, | g,4 g, b, b, | d d a, c | b, e c4. e8 | d!2 g4 |
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