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
            \voiceOne
            \partial 4 f4 | <d f> bf <f bf> <d d'> | bf2 a4 g | f bf g f | ef2( d4) bf | \mBreak
            f4. d8 bf,4 bf | c'4.( a8)  f4 g8_( a) | bf4. g8 f4 <bf, e!> | \partial 2. f2. \bar "||" | %
            \stemNeutral \partial 4 bf8( c') | <ef d'>4 d' bf c'8( d') | \mBreak
            ef'4. d'8 <a c'>4 bf8( c') | <bf d'>4 bf g f | ef2( d4) bf | f4. d8 bf,4 bf | c'4. a8 f4 bf8( c') | \mBreak
            <f d'>4 <bf f'> <g ef'> <g d'>8( c') | <fs d'>2.\f\fermata <g bf>4\pp | <ef g> <d f>8( <c ef>) <d f>4 <ef g>8_( <c a>) | \partial 2. <d bf>2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | ef1 | s1*2 |
            \stemUp d4 s2. | a4 s2. | d4 s2. | s1*2 |
            \stemDown g4 s2. | s1*2 | \once \stemUp d4 s2. | a4 s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        ’Twas | down in Cu -- pid’s | gar -- den, for | plea -- sure I did | "go,  .  ." To |
        see the fair -- est | flow -- ers that | in that gar -- den | grow: | The | first it was the |
        jes -- sa -- mine, the | li -- ly, pink, and | rose, And | sure -- ly they’re the | fair -- est flow’rs that |
        in that gar -- den | grows, that | in that gar -- den | grows. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | bf,2 d4 bf, | g2 f4 ef | <d bf>2 <ef bf>4 <d bf> | <c a>2( <bf, bf>4) r |
            bf,2. r4 | f,2. r4 | g,2. c4 | \once \stemUp a2. | r4 | bf2 g |
            c2 f | bf,4 r <ef bf> <d bf> | \stemUp a2^( bf4) r | bf,2. r4 | f,2. g,8( a,) | 
            bf,4 d c ef | d a d'\fermata g, | c2 f, | bf,2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1*7 | f,2. | s4 | s1 |
            s1*2 | c2( bf,4) s4 | s1*2 |
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