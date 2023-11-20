\version "2.24"
\language "english"

global = {
  \time 4/4
  \key a \major
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
            \partial 4 e4-. | <cs a>4-. <e cs'>-. <cs a>-. <e cs'>-. | <cs a>-. <e cs'>-. <d b>-. e-. | %
            <cs a>4. <e b>8 <a cs>4. <e b>8 | <cs a>8 <e b> <a cs'> <b d'> <cs' e'>4 4 | \mBreak
            <b e'>4 e <cs e> <e a>8 gs | <d fs>4 d <d fs>\fermata \textMark \markup {\caps "Chorus." } <a, cs>8\p <b, d> | %
            <cs e>4 <a, cs>8 <b, d> <cs e>4 <a, cs>8 <b, d> | \partial 2. <cs e>4 <d fs>8 <b, gs> <cs a>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        There | was a maid went | to the mill, Sing | trol -- ly, lol -- ly, | lol -- ly, lol -- ly lo, The | 
        mill turn’d round, but the | maid stood still, Oh, Oh, | ho! Oh, Oh, ho! Oh, Oh, | ho! did she so? |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            e4-. | <a, a>-. e-.<a, a>-. e-. | <a, a>-. e-. <a, gs>-. e-. | <a, a>-. e-. <a, a>-. e-. | <a, a>-. e-. <a, a>-. e-. |
            <a, gs>4-. e-. <a, a>-. <cs a> | <d a> <fs a> <b, b>\fermata fs | e^\cresc fs e fs | e <e, e>\f <a,, a,> | \fine
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