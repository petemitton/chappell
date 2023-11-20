\version "2.24"
\language "english"

global = {
  \time 2/4
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
            \partial 8 d'8 | a[ fs fs d] |  cs[ e e g] | fs[ d fs a] | \once \stemUp d'4\sf cs'8 <e b> | \mBreak
            a8[ fs fs d] | cs[ e e g] | fs[ d a fs] \partial 4. d4 8 \bar "||" | \partial 8 fs8 | <d b>8[ cs' <d d'> b] | \mBreak
            <e cs'>8[ e' a a] | <d b>[ cs' <gs d'> b] | <e cs' e'>4 a8 <e a> | <fs b>8[ <g! cs'> <a d'> <fs b>] | <g cs'>[ <a d'> <b e'> <g cs'>] | \mBreak
            <fs d' fs'>8[ d' <d cs'> b] | <d b d'>4\sf <a cs'>8 <g b> | <fs a>8[ fs fs d] | cs[ e e g] | fs[ d fs a] | \mBreak
            \once \stemUp d'4\sf cs'8 <e b> | a8[ fs fs d] | cs[ e e g] | fs[ d a-> fs->] | \partial 4. d4-> 8 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2*3 | \stemUp d4. s8 |
            s2*15 | d4. s8
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        You | Stock -- ton lads and | lass -- es too, Come | lis -- ten to my | sto --  ry, A |
        dis -- mal tale, be -- cause ’tis true, I've | now to lay be -- fore ye: | We | must a -- way, our | 
        rout is come, We | scarce re -- frain from | tears, O; Shrill | shrieks the fife, rough | roars the drum, March |
        York -- shire vol -- un -- teers, O: Fal | lal la la, fal | lal la la, Fal | lal re ral de |
        ri -- do, Fal | lal la la, fal | lal la la, Fal | lal de ral de | ri do. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            d'8 | <d fs>4 <d a> | <g, g> <cs g>8 e | <d a>4 fs8 a | <b, fs>4. <cs g>8 |
            <d fs>4 <d a> | <a, a> <cs a>8 e | <d a>4 8 fs | d4 8 | fs | <b, fs>4 4 |
            <a, a>4 <cs a> | <b, fs> <e, e> | <a,, a,>4. <cs, cs>8 | <d, d>[ <e, e> <fs, fs> <d, d>] | <e, e>[ <fs, fs> <g, g> <e, e>] |
            <b,, b,>4 <b, fs> | \once \stemUp g4 s4 | d <d a> | <a, a> <cs a>8 e | <d a>4 <d fs>8 a | 
            <b, fs>4. <cs g>8 | <d fs>4 <d a> | <a, a> <cs a>8 e | <d a>4 8 fs | d4 8 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2*8 |
            s8 | s2*7 | g,8.[ a,16 b,8 cs] | 
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