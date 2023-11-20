\version "2.24"
\language "english"

global = {
  \time 4/4
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
            %\voiceOne
            \repeat volta 2 { \partial 4 <g bf d'>4 | <g c' ef'> <fs a d'> <g bf d'> <e! g c'> | %
            <f a c'> f r <bf, f bf> | <c f a> <d f bf> <ef g c'> <c f a> | \partial 2. <d f bf>2. } | \partial 4 <c f>4 | \mBreak
            <bf d>4 <c f> \once \stemUp bf4. a8 | <ef g>4 ef <g c'>4. <ef b! d'>8 | <ef c' ef'>4. <f b! d'>8 <g c'>4 <d bf> | %
            <f a c'>4 f r bf8( c') | <f d'>4 <f bf> \once \stemUp c'4. d'8 | \mBreak
            <ef ef'>4 <g c'> <fs d'>4. <c fs>8 | g4. a8 <c fs a>4. g8 | <bf, g>4 <bf, d g> r <bf, bf>4 | <c f> d <c f> <bf, bf> | \mBreak
            <c f>4 d <a, c f>4. <bf, d f>8 | <bf ef g>4 <bf, f bf> <ef g ef'>4. c'8 | <c f a>2 r4 bf8( c') | <f d'>4 <f bf> <f c'>4. <f d'>8 | \mBreak
            <ef ef'>4 <g c'> <fs d'>4. <d fs>8 | g4. a8 <d bf>8( <c a>) <bf, g>( <a, fs>) | \partial 2. <bf, g>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1*4 | s4 |
            s2 d | s1*3 | s2 f | 
            s1 | \once \stemUp bf,4 ef s2 | s1 | 
            s1*4 |
            s1*2 | d4 ef 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        When Ha -- rold was in -- vad -- ed, And fall -- ing, lost his | crown, | _ |
      }	% end lyrics verse one
      
      \new Lyrics \lyricsto "one" {	% verse two
        And Nor -- man Will -- iam wad -- ed Through | gore to pull him down: | While
        count -- ies round, With | fear pro -- found, To | mend their sad con -- di -- tion, And | lands to save, Base |
        hom -- age gave, Bold | Kent made no sub -- mis -- sion. Then sing in praise of_the |
        Men of Kent, So | loy -- al, brave, and free; Of | Bri -- ton’s race, If |
        one sur -- pass, A | Man of Kent "is . . " | he. |
      }	% end lyrics verse two

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g4 | c d g, c | f, f r d | ef d c f | bf,2. | a,4 | 
            bf, a, g,4. f,8 | ef,4 r ef4. d8 | c4 d ef g | f f r g8 a | bf4 g a4. bf8 | 
            c'4 ef' d'4. d8 | ef4 c d d, | g, g, r g, | a, bf, a, g, |
            a,4 bf, f, bf, | ef, d, c,2 | f, r4 g,8( a,) | bf,4 g, a,4. bf,8 |
            c4 ef d4. c8 | bf,4 c d d, | g,2. | \fine
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