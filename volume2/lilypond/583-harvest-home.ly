\version "2.24"
\language "english"

global = {
  \time 6/8
  \key f \major
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
            \partial 8 c8 | f8. g16 a8 <bf, g> e c | <a, f>4 g8 a4 8 | bf c' d' c' a f | \mBreak
            \partial 8*5 <c c'>4 a8 f4 | \repeat volta 2 { \textMark \markup { \italic "Repeat in Chorus." } \partial 8 r8  | <f c'>4 a8 <f c'>4. | %
                                                           <f d'>4 bf8 <f d'>4 e'8 | f'8 e' d' c'( a) f | \partial 8*5 <c c'>4 a8 f4 | \mBreak
            }
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | \stemUp a,4 s8 s4. | s2.*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Our | oats they are hoed, and our | bar -- ley’s reap’d, Our | hay it is mow‘d and our |
        ho -- vels heap’d. Come, boys, come, | Come, boys, come, And | mer -- ril -- y roar out | Har -- vest Home! |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | f4. c | f,4 r8 r4. | <bf d'>4. <f a> | 
            <f a>4 r8 r4 | r8 | <f a>4. 4. | <bf, bf>4. 4. | <bf d'> <f a> | 4 r8 r4 |
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