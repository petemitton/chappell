\version "2.24"
\language "english"

global = {
  \time 4/4
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
            \partial 4 g8\ff g | <c ef g c'>4 8 <d g b!> <ef g c'>4-> <c g c'>8 <c ef g> | %
            <c f af>4 <c f> <ef g>4.-> <c ef g>8 | <c f af>4 <g, c g>8 <a,! c g> <b,! d f>4 <c ef> | \mBreak
            <ef f bf>4 bf, ef2-> | <c ef c'>4. <d g b!>8 <ef g c'>4 <c g> | <c f af>  <c ef g>8 <c f> <b,! d g>4-> <b, g>4\p | af g f ef | \mBreak
            \partial 2. <ef bf>4 bf, ef \bar "||" | \partial 4<b,! f g>\ff | %
            <c ef g c'>4. <d g b!>8 <ef g c'>4-> <f bf d'> | <g bf ef'>4. <f bf d'>8 <ef g bf ef'>2\sf-> | \mBreak
            ef8\pp f <ef g> af <d f bf>4 <df f bf> | <c f>8 g <f af> bf <e! g c'>4 <ef g c'> | <ef af c'>2 <ef g bf>2\cresc | \mBreak
            <c f af>2 <c ef g> | <ef g c' ef'>8 <g b! d'> <g c'> <f b> <ef g c'>4\ff <c f>4 | \partial 2. <c d g> <b,! d g> c-> | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*3 |
            s1*3 | c8 d ef4 c8 d ef4 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Here’s a | health to the Queen, and a | last -- ing peace, To | fac -- tion an end, to |
        wealth inc -- rease. | Come let’s drink it | while we have breath, For | there’s no drink -- ing |
        af -- ter death. | And | he that will this | health de -- ny, |
        Down a -- mong the dead men, | Down a -- mong the dead men, | Down, down, | 
        down, down, | Down a -- mong the dead men | let him lie. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g,8 g, | <c, c>4 8 <g,, g,>8 <c, c>4 <ef, ef>8 <c, c> | <f, f>4 <af, af> <c c'>4. <c, c>8 | <f, f>4 <ef, ef>8 8 <d, d>4 <c, c> |
            <bf,, bf,>4 <bf, d f>4 \once \stemUp g2 | <af,, af,>4. <g,, g,>8 <c, c>4 <ef, ef> | <f, f> <g, g>8 <af, af> <g, g>4 g | f ef af g | 
            <bf, f>4 <bf d f> \once \stemUp g | <d, d> | <c, c>4. <g,, g,>8 <c, c>4 <bf,, bf,> | <ef, ef>4. <bf,, bf,>8 <c, ef>4  <d, d> |
            <c, c>2 bf, | af,4 f, c,2 | af,8-. bf,-. c-. d-. ef4 ef, | 
            f,8-. g,-. af,-. bf,-.  c-. d-. ef-. f-. | <g, g> <f, f> <ef, ef> <d, d> <c, c>4 <af, af> | <g, g> <g,, g,> <c, c> | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1*3 |
            s2 <ef, ef>2 | s1*3 |
            s2 <ef, ef>4 | s4 | s1*2 | 
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