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
          \new 	Voice = "one" 	\fixed c' {
            \global
            %\voiceOne
            \partial 8 a8 | fs e fs d4 8 | fs e fs d4. | <fs a>8 b cs' <d d'>4 d'8 | \mBreak
            \once \stemUp d'4_( cs'8) a4 8 | fs8 e fs d4 8 | fs e fs d4. | <fs a>8 b cs' <d d'>4 d'8 | \mBreak  
            \partial 8*5 \once \stemUp d'4_( cs'8) a4 \bar "||" | \partial 8 a8 | %
            <d a>8 b cs' <d d'>4 d'8 | <e cs'> b cs' e( fs) g | <d a> b a <c! a> e fs | \mBreak
            <b, g>4. fs4 g8 | <d a> b a <cs! a> e fs | g4. a | \partial 8*5 d4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*3 |
            e4 s2 | s2.*3 |
            e4 s2 | s2. | s4. \stemUp cs4 s8 | s2. |
            s4. d | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        The | mil -- ler he caught the | maid by the toe, | What d’ye call this, my |
        dear -- est? The | mil -- ler he caught the | maid by the toe, | What  d’ye call this, my |
        dear -- est? | Oh, | this is my toe, near | to my shoe sole, My | toe on my ter -- ri -- "to -"  
        "- ry;" I’m the maid of the mill, And the corn grinds | well. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            \stemUp r8 | a4. fs | a fs | <d a> fs |
            a4.~4 r8 | 4. fs | a fs | <d a> <b, gs> |
            \stemNeutral <a, a>4.~4 | r8 | fs4. b | a g | fs d |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | d2. | d | s |
            s2. | d | d | s |
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