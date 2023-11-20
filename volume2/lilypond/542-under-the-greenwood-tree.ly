\version "2.24"
\language "english"

global = {
  \time 6/8
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
            \partial 8 <g b>16( <a c'>) | <b d'>4 8 4 <a c'>8 | <g b>4 <d a>8 <b, g>( <d a>) <g b> | <fs a>4 d8 <c e>4 <a, fs>8 | \mBreak
            <b, g>4.~4 <g b>16( <a c'>) | <b d'>4 8 4 <a c'>8 | <g b>4 <d a>8 <b, g>( <d a>) <g b> | <fs a>4 d8 <c e>4 <a, fs>8 | \mBreak
            <b, g>4.~4 <cs g>8 | <d fs>4 <a, e>8 <d fs>4 <e g>8 | <fs a> <e g> <fs a> d4 <g b>8 | <fs a>4 <e g>8 <fs a>4 <d b>8 | \mBreak
            <e c'>4. <d a d'>4^( c'8) | <d g b> a g <fs a>4 d8 | <f! b> a b <e c'>4 <g b>8 | <fs! a> <e g> <d fs> <cs e>4 d8 | \mBreak
            d4.~4 <g b>16^( <a c'!>) | <b d'>4 8 4 <a c'>8 | <g b>4 <d a>8 <b, g>( <d a>) <g b> | <fs a>4 d8 <c e>4 <a, fs>8 | \mBreak
            <b, g>4.~4 <g b>16^( <a c'>) | <b d'>4 d'8 <fs a d'>4 c'8 | <g b>4 a8 <d g>( a) b | <fs a>4 d8 <c e>4 <a, fs>8 | \partial 8*5 <b, g>4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        In | Sum -- mer -- time, when | flow’rs do spring, And | birds sit on each |
        tree, Let | Lords and Knights say | what they will, There’s | none so merry as | 
        we. There’s | Will and Moll, with | Har -- ry and Doll, And | Tom and bonny Bet- |
        -tee, Oh! | how they do jerk it, | Ca -- per and firk it, | Un -- der the green -- wood | 
        tree. In | Sum -- mer -- time when | flow’rs do spring, And | birds sit on each | 
        tree, Let | Lords and Knights say | what they will, There’s | none so merry as | we. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            \partial 8 r8 | <g, d>2. | 2. | 2. |
            \stemUp d4 e8 d4. | <g, d>2. | 2. | 2. | 
            \stemNeutral <g, d>4 g8 fs4 e8 | d2. | d | d | 
            a,4. fs, | g, d | g c4 g,8 | a,4 r8 <a, g>4 r8 |
            <d fs>4 r8 <g, d g>4.~ | 4. 4.~ | 4. 4.~ | 4. 4.~ |
            4 e8 d4.~ | 4. 4. | e b, | d <d, d> | <g, d>4.~4 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | s2.*3 | g,2. |
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