\version "2.24"
\language "english"

global = {
  \time 2/4
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
            <a, c f>4 <d f>8 f | f([ a) c' c'] | <f d'>[ bf <d g> f] | e( g) c8. \once \noBeam f16 | <c f>4 <d f>8 f | \mBreak
            \stemUp f([ a) c' c'] | d'([ bf) <bf, g> e] | <a, f>2 \bar "||" | g4 a8 bf | c'( a) f4 | g a8 bf | \mBreak
            <f c'>8 a f4 | f8([ a) <f a c'> \textMark \markup {\italic "rall." } <d' f'>^(] | <c' e'>[) <g bf! d'> <a c'> <d g bf>] | <bf, e a>[ g f e] | f2 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s2 | c4 s4 | s2*3 | 
            a,4 s | f s | s2 | \stemDown e2 | s | e | 
            s | f4 s8 g( | g4) s | s2*2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Ear -- ly one | morn -- ing, just | as the sun was | ris -- ing, I | heard a maid |
        sing in the | val -- ley be -- low: | “Oh! don’t de -- ceive me, Oh! ne -- ver |
        leave _ me, | How could you  use _ a  | poor _ maid -- en | so?”
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            f,4 bf, | a,2 | bf,4 b,! | c4. bf,!8 | a,4 bf, |
            f,2 | bf,4 c | f2 | <bf c'>( | <a c'>) | <bf c'> | 
            <a c'>2 | d'4( c'8) b! | c'[ e( f) bf,] | c4 <c g bf> | <f a>2 | \fine
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