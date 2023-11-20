\version "2.24"
\language "english"

global = {
  \time 6/8
  \key ef \major
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
              \partial8 g8 | <ef g c'>4 c'8 <d g b!>4 b8 | <c ef c'>4 c'8 <c g>4 g8 | af g f g4 8 | \mBreak
              c4 r8 r4 g8 | <ef g c'>4 c'8 <d g b!>4 b8 | <c ef c'>4 c'8 <c g>4 g8 | af g f g4 g8 | \partial 8*5 c4.~4 | \mBreak
              \partial 8 d8 | ef4 8 4 8 | bf4 <d bf>8 <ef bf>4 <f b!>8 | <ef c'>4 d'8 <ef c' ef'>4 c'8 | <g b!>4.~4 c'16( d') | \mBreak
              <ef ef'>4 ef'8 <f d'>4 <d d'>8 | <ef c'>4 <c c'>8 <d b!>4 g8 | af g f g4 8 | \partial 8*5 c'4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Jack | met his mo -- ther | all a -- lone. To whom he did smil -- ing |
        say, “I’ll | go and vi -- sit | bux -- om Joan, Be -- cause it is ho -- li -- day;
        And, | be -- ing in my | Sun -- day clothes, I | hope she’ll like me | well: If |
        Joan be kind, My | heart my mind To | her I will free -- ly | tell.” |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <c c'>4. <g, g> | <af, af> <ef, ef>4 g8 | af g f g4 8 |
            c4 g8 c'4 r8 | <c c'>4. <g, g> | <af, af> <ef, ef>4 g8 | af g f g4 8 | c4.~4 |
            <bf, f bf>8 | <ef g bf>4. <af c'> | <g bf>4 <f af>8 <ef g>4 <d f>8 | <c g>4 r8 af,4 r8 | g,8 b,! d g4 a!16 b! |
            c'4. bf!4 8 | af4 8 g4 <g, g>8 | <af, af> <g, g> <f, f> <g, g>4 8 | <c c'>4.~4 | \fine
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