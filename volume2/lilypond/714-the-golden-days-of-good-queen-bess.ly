\version "2.24"
\language "english"

global = {
  \time 2/4
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
            \partial 8 d'8 | b[ g g g] | g[ g g g] | <fs a>[ g fs g] | <fs a>[( b) c' d'] | \mBreak
            b[ g g g] | g[ g g g] | a[ g fs g] | \partial 4. <fs a>([ b) c'] \bar "||" | \partial 8 d'8 | \mBreak
            b[ d' d' d'] | d'[ 8 8 8] | e'[ d' c' b] | a8.[( b16) c'8 8] | a[ c'8 8 8] | \mBreak
            c'8[ 8 8 8] | d'[ c' b a] | g8.( a16) b4 | <b, e g>4\pp 4 | <b, ds fs>4 4 | \mBreak
            <g, e>8 fs <c g> e | <b, d!>4 4 | <c c'>4\cresc 4 | <d b>4 8 b | <e b>\f[ g <e c'> a] | \partial 4. <c fs>4( <b, g>8]) |   \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        A | Cap -- tain bold, in | Hal -- i -- ax, That | dwelt in coun -- try | quar -- ters, "De -" |
        "- ceiv’d" a maid, who | hang’d her -- self, One | morn -- ing, in her | gar -- ters; | His |
        wick -- ed con -- science | smit -- ed him; He | lost his sto -- mach | dai -- ly; He | took to drink -- ing |
        ra ta fia, And | thought up -- on Miss | Bai -- ley. | Oh, Miss | Bai -- "ley, un -" |
        "- for" -- tun -- ate Miss | Bai -- ley! | Oh! Miss | Bai -- ley, un -- for -- tu -- nate Miss | "Bai - ley!" | 
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <g d'>2 | <g b> | <d a> | <d d'> |
            <g d'>2 | <g b> | <e cs'> | <d d'>4. | r8 |
            <g b d'>2 | <f! a d'> | <e gs b> | <a c'> | <a c' e'> |
            <g c' ef'> | <fs! a d'> | <g b d'> | e,4 g, | b, b, |
            c4 <e g> | g g | <a, e> <a, fs> | <b, fs> <b, g> | <e g> <a, a> | <d a> <g, g>8 | \fine
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