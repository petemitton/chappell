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
            g g g | f4. g8 a4 | b b c' | a4. 8 b4 | a f4. g8 | d2. \bar "||" | \mBreak
            d'4 d' d' | d'4. c'8 b4 | c' c' c' | c'4. b8 a4 | b c'8([ b)] a([ g)] | b4 c'4. d'8 | e'4 a4. g8 | g2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        God save our | Lord the King, | Long live our | no -- ble King, | God save the | King. |
        Send him vic -- to -- ri -- ous, | Hap -- py and | glo -- ri -- ours, | Long to reign | o -- ver us, | God save the | King. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g4 g, g | d4. e8 f4 | g g a | f4. 8 g4 | c d4. 8 | g,2. |
            b4 b b | b4. a8 g4 | a4 a a | a4. g8 f4 | g4 a8([ g)] f([ e)] | d4. c8 b,4 | c4 d4. 8 | g,2. | \fine
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