\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \repeat volta 2 { \stemUp \partial 8 a16 a | d'8. e'16 d'8 <g cs'>4 cs'8 | b8. cs'16 b8 <d a>4 fs8 | g8. fs16 g8 <cs e>4 <e cs'>8 | \mBreak
            \partial 8*5 <fs d'>4.~4 } | \partial 8 a8 | fs g a fs g a | fs e d <fs d'>4\fermata fs8 | g8. fs16 g8 <cs e>4 <e cs'>8 | \mBreak
            <d d'>4 <e a>8 fs4 <d fs>8 | g8. fs16 g8 <cs e>4 <e cs'>8 | \partial 8*5 <fs d'>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            a8 | \stemUp fs4 s2 | cs4 s2 | b,4 s2 |
            s2.*3 | b,4 s2 |
            s2. | b,4 s2 | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Here’s a | health to the bar -- ley -- mow, _ my boys A | health to the bar -- "ley -" |
        mow.
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        We’ll _ | drink _ it out_of the | nut -- brown _ bowl, A | health to the bar -- "ley -" |
        mow. | The | nip -- per -- kin, pip -- per -- kin, | and the brown bowl, A | health to the bar -- "ley -" |
        mow, my boys A | health to the bar -- ley -- mow. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | d4. e | g fs4 d8 | e4. a4 8 |
            d4 a8 d'4 | r8 | <d a>4. 4. | 4. <b, b>4\fermata r8 | e4. a4 8 |
            fs4 cs8 d4 b,8 | e4. a4 a,8 | d4.~4 |
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