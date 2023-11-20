\version "2.24"
\language "english"

global = {
  \time 2/2
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
            \partial 4 d4 | <b, d g>2 2 | <b, g>8 a <fs b> <e c'> <d d'>4 <b, g> | a2. b8 c' | <d g b>2. <b, d>4 | <b, g>8 a g a <d g b> c' b c' | \mBreak
            <d d'>4 <d fs a> <d g b> <d a> | <d g>^( a8 b <cs e a>4) g | <d fs>2. d4 | %
            fs d <e a> <a, d fs> | <d fs d'> cs'8 b <d a>4 <b, e g> | <a, d fs>2 <cs e>4. d8  | \mBreak
            d1 | <b, d g>2\p 4. <b, d>8 | <c e>4 c r <d g> | <c e c'>4. b8 a4 <c e g> | <a, d fs>2. d4 | <d g d'>2 <d fs c'> | \mBreak
            <d b>8^( g <fs c'> a <g d'>4) <e g> | <b, d>2 <c fs a>4. g8 | <b, g>1 | %
            <b, f! g b>2.\ff 4 | <c e g c'>4 4 r <b, e gs b> | <c e a c'> <d gs b> <e a> <a, fs g!> | \mBreak
            <a, d fs>1 | <d g d'>2 <d fs c'> | <d b>8 g <fs c'> a <g d'>4 <e g> | <b, d>2^( <c fs a>4.) g8 | <b, g>1 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*2 | <e g>2 <d fs> | s1*2 |
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        When4 | Bri2 -- tain2 | first4 "."8 "." "."4 at4 | Heav’n’s2. com4 -- mand2. A4 -- rose4 "."8. "." "." "." |
        ". ."4 from out the | a2. -- zure4 | main,2. A4 -- rose, a -- rose, a -- rose from out the | a8*7 -- zure8 |
        main;1 | This2 was4. the8 | char4 -- ter,4 4 the | char4. -- ter8 of4 the | land,2. And4 | guard2 -- ian |
        an2. -- gels4 | sung8*7 this8 | strain:1 Rule,2. Bri4 -- tan4 -- nia,4 4 Bri -- tan -- nia, rule the |
        waves:1 | Bri2 tons | ne8 -- ver, ne -- ver, ne4 -- ver | will8*7 be8 | slaves.1
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | <g,, g,> <d, d> <g, g> <fs, fs> | <e, e>4 <d, d>8 <c, c> <b,, b,>4 <e, e> | <c, c> b,8 a, d4 d, | g,2. <g, d g>4 | 2 <g b> |
            <fs a>4 <d a> g fs | e2 a | <d a>2. d4 | fs <d fs> <cs a> d | b, a,8 g, fs,4 g, | a,2 \once \stemUp g |
            <d fs>1 | <g, g>2 4. 8 | <c g>4 c r b, | a,2. c4 | d2. <c d fs>4 | <b, d g>2 <a, d fs> |
            <g, d g>4 <a, d fs> <b, d g> <c g> | <d g>2 d, | g,1 | <g, d g>2. 4 | <c, c>4 4 s <e, e> | <a,, a,> <b,, b,> <c, c> <cs, cs> |
            <d, d>4 <e, e> <d, d> <c,! c!> | <b, b> a,8 g, a,4 d, | g, <a,, a,> <b,, b,> <c, c> | \stemUp g2 s | <g, d g>1 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1*10 | s2 a, |
            s1*15 | <d, d>2 2 | s1 |
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