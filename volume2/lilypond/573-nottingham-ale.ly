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
            \voiceOne
            \partial 8 c8 | f8. g16 f8 a8. bf16 a8 | g8. a16 g8 bf4 8 | a c' f bf4 a8 | \mBreak
            g8 f e f4 c8 | f8. g16 f8 a8. bf16 a8 | g8. a16 g8 bf4 8 | a c' f bf4 a8 | \mBreak
            \partial 8*5 g8[ f e] f4 \bar "||" | \partial 8 c'8 | c'8. d'16 e'8 f'4 c'8 | d'8. e'16 d'8  4 c'8 | \mBreak
            c'8 d' e' f'4 e'16 d' | c'8 bf a g4 c'8 | d'8. c'16 bf8 a bf c' | \mBreak
            d'8. c'16 bf8 a bf c' | c' a f d bf <c a> | <bf, g> <a, f> <g, e> <a, f>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | s4 f8 e4 f8 |
            d4 s2 | a,4. f | d d4 e8 | f4 8 4. |
            d4 bf,8 a,4 | s8 | a4. f | 4 8 4. |
            a4. a | f4 8 e4 8 | f4.~4 e8 |
            f4.~4 e8 | f4 c8 d4 s8 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        When | Ve -- nus, the god -- dess of | beau -- ty and love, A -- rose from the froth that |
        swam on the sea, Mi -- nerva _ sprang out of the | cra -- nium of Jove, A | coy sul -- len dame as_most | 
        au -- thors a -- gree: | But Bacc -- hus, they tell_us (that | prince of good fellows,) Was |
        Ju -- pi -- ter’s son, Pray at -- tend to my tale, For | they who thus chat -- ter, mis- |
        -take quite the mat -- ter, He | sprang from a bar -- rel of | Not -- ting -- ham ale. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 | a4. c' | a d' | c'4 s2 |
            s4 bf8 a4 d8\rest | s2.*3 | 
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 f2.~ | f~ | f4 a8 g4 f8 | 
            bf,4 c8 f,4 s8 | \stemNeutral f4. d | bf g,4 8 | f,4 a,8 d4 c8 |
            bf,4 c8 f,4 | d8\rest | f4. a | bf4 8 4 a8 | 
            f4. d | a,4 bf,8 c4 8 | bf a g f4 c8 | 
            bf8 a g f4 c8 | a,4. bf, | c f, | 
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