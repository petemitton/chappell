\version "2.24"
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
            <b, e g>4\p 4 <b, ds fs> <b, ds b> | <b, e>4 4 <b, ds> b, | <b, e g>4 4 <b, e fs> <ds b> | e ds e2 \bar "||" | \mBreak
            <d g b>4\mf 4 <d fs a> <d fs d'> | <b, g> <cs e a>8 g <d fs> e d4 | e e8 fs <e g>4 <ds fs> | e ds e2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        My man Tho -- mas | Did me pro -- mise, | He would vi -- sit | me this night: |
        “I am here, love; | Tell me, _ dear _ love, | How I _ may ob -- tain thy sight.” |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            e4 e b, b, | g, g, b, b, | e,8 fs, g, a, b,4 \stemUp a | g <fs a> <g b>2 | 
            \stemNeutral g4 g d d | e a, d d | \stemUp g a b a | g <fs a> <g b>2 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s1*2 | s2. b,4 | e1 |
            s1*2 | c4 c b, b, | e1 |
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