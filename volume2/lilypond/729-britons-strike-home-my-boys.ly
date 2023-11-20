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
            \partial 4 a8.( fs16) | d4 fs a | d fs <cs e a> | <d a d'>( <e g cs'>) <fs d'> | <d g b>2 a8.( fs16) | \mBreak
            <d g>4 <d b> <d d'> | <d fs> a <d d'> | <d fs>8( <b, e>) <cs g>4 <a, cs fs> | \partial 2 d2 \bar "||" | \partial 4 a8. fs16 | \mBreak
            e4. fs8 g[ a] | <d fs>2 a8. 16 | <d b>4 g \stemUp d'8.( b16) | \stemNeutral a2 b8. cs'16 | <fs d'>4 d' <d a> | \mBreak
            b8.( cs'16) <fs d'>4 <d fs> | <d g> <d b> <d d'> | fs8. g16 a4 <d fs>4 | 8 <b, e> <cs g>4 <a, cs fs>4 | \partial 2 d2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 | s2.*3 | s2 d4 |
            s2.*3 | s2 | d4 |
            \stemDown cs4 s cs | \stemUp s2 d4 | s2 g4 | \stemDown fs d g | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Our | ship car -- ried | o -- ver nine | hun -- dred | men, And |
        out of nine | hun -- dred, five | hun -- dred were | slain; | For we |
        range the wild _ | seas, where the | wind blows so | strong, While our | rak -- ish young |
        he -- roes cry, | “Bri -- tons, strike | home, my boys,” Cry, | “Bri -- _ tons, strike | home.” |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <d fs a>2 <cs e a>4 | <b, fs b>2 a,8. g,16 | fs,4 e, d, | g,2 fs,8. d,16 |
            b,4 g, b,8. cs16 | d2 fs,4 | b,8 g, a,4 a,, | <d, fs>2 | fs,4 |
            a,4 <cs a> a, | d d, fs | g8. a16 b4 b, | d fs e | b,2 fs,4 |
            g,4 d, d | b,  g, b,8. c16 | d2. | b,8 g, a,4 a,, | <d, fs>2 | \fine
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