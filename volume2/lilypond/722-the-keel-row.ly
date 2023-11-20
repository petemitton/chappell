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
            \voiceOne
            \partial 8 bf 8 | a8. f16 8 a | bf4 g8 bf | a8. f16 8 a | g8._( e16) c8. bf16 | \mBreak
            a8. f16 8 a | bf4 g8 bf | a8. f16 g8. e16 | \partial 4. <a, f>4. \bar "||" | %
            \partial 8 <e bf>8 | \stemDown <f a>16( c'8.) <f c'>8 f' | <f d'>4 c'8. bf16 | \mBreak 
            \stemUp <f a>4 <b,! f>8 a | g_([ e) c8. bf16] | \stemDown <f a>16( c'8.) <f c'>8 f' | \stemUp d'4 c'8 bf | a16( f8.) g e16 | \partial 4. f4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            c8~ | 2 | 2 | 2 | \once \stemUp 4 s |
            c2 | d | \stemUp c4 bf,4 | s2*2 | s4 \stemDown e4 |
            s2 | \once \stemUp c4 s4 | s2 | f2~ | 8 s g4 | f4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        As | I _ came thro’ | Sand -- gate, thro’ | Sand -- _ gate thro’ | Sand -- gate, As |
        I _ came thro’ | Sand -- gate, I | heard a las -- sie sing: | “O weel may the keel row, the |
        keel row, the | keel row, O | weel may the | keel row, that | my lad -- die’s | in.” |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            e8 | f2 | g | f| e |
            f2 | bf, | c4 c | f4. | c8 | f,4 a, bf, c | 
            d4 d | e2 | f4 a | bf a8 g | c'4 <c bf> | <f a>4. | \fine
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