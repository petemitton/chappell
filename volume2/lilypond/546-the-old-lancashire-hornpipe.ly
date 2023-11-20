\version "2.24"
\language "english"

global = {
  \time 3/4
  \key d \major
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
            \repeat volta 2 { \partial 4. b8 <e a> g | fs8. e16 \autoBeamOff \override Beam.auto-knee-gap = #3 d8[ fs'] <a e'>[ d'] | <cs' e'>8 e4 b8 <e a>[ g] | %
            fs8. e16 d8[ fs'] \autoBeamOn <g e'>8 d'16 cs' | \partial 4. <fs d'>8 d4 | } \mBreak
            \repeat volta 2 { \partial 4. \autoBeamOff b8 <e a>[ g] | <d fs>[ a <b, g> b <d a> d'] | <cs' e'> e4 b8 <e a>8[ g] | 
            <d fs>[ a <d g> b <cs a> <e cs'>] | \partial 4. <fs d'> d4 | } \mBreak
            \repeat volta 2 { 
              \partial 4. fs'8 <cs' g'>[ a'] | fs'8.[ e'16 d'8 fs' e' d'] | <a cs'> e'4 fs'8 <cs' g'>[ a'] | fs'8.[ e'16 <a d'>8 fs'] <g e'>[ d'16 cs'] | \partial 4. <fs d'>8 d4 |
            }
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4. | d4 s2 | s2. | d4 s2 | s4. |
            s2.*4 |
            \stemDown s4. | d'4 s2 | s2. | d'4 s2 | s4. |
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
            r8 cs4 | d b, fs, | a, a,, cs | d fs, a, | d d,8 |
            r8 cs4 | d g fs | a a, cs | d e a | d d,8 |
            r8 a,4 | d b, g, | a, a,, a, | d d, a, | d d,8 |
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