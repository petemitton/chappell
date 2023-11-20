\version "2.24"
\language "english"

global = {
  \time 3/8
  \key bf \major
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
            bf8 f f' | d'8. c'16 bf8 | ef'8 g'4 | f'4 d'8 | c' ef'4 | d'8. c'16 bf8 | a8. bf16 c'8 | <g bf e'!>4( <f a f'>8) | \mBreak
            c'8. d'16 c' bf | a8 f bf | g bf ef | <ef ef'>4 <f d'>8 | <f c'> a f | f'8. ef'16 <f d'>8 | <g ef'> g' <f d'> | <ef\=1_( a\=2_( c'\=3(>4 <bf,\=1) bf\=2)\=3)>8 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4. | f8. ef16 d8 | g8 ef4 | d f8 | ef c4 | f8. ef16 d8 | f4 e!8 |  s4. |
            s4.*5 | \stemUp f4 s8 | s4.*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 r8 | bf4.~ | 4. | 4.~ | 4. | 4. | c' | 4 f8 |
            r4 r8 | <f c'>4 <d f bf>8 | <ef g bf>4 <d g bf>8 | <c a>4 <bf, bf>8 | <f a>4 <ef a c'>8 | <d bf>4 <bf, bf>8 | <ef bf>4 <bf, bf>8 | f4( bf8) | \fine
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