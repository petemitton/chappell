\version "2.24"
\language "english"

global = {
  \time 3/4
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
            a8. bf16 c'8 a g f | e8 g4 bf8 a[ g] | a8. bf16 c'8 a g f | c8 f4 a8 g f \bar "||" | \mBreak
            a8. bf16 c'8 d' e' f' | g' g4 bf8 a[ g] | a16 bf c'8 d'16 e' f'8 e'16 f' g'8 | f' f4 a8 g[ f] | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <f, f>4 <c f a>4 4 | <c, c> <c e bf>4 4 | <f, f> <c f a>4 4 | <f, f> <c f a> r |  
            <f, f>4 <c f a>4 4 | <c, c> <c e bf>4 4 | <f a> <bf, bf> <c g> | <f a> <f, f> r |
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