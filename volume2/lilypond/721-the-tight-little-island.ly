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
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            \partial 8 a16 g | fs8. g16 fs8 fs_( g) a | b8. cs'16 b8 b_( cs') d' | a8. b16 a8 <d a> g fs | \mBreak
            <d b>4. <cs e>4 a16( g) | fs8. g16 fs8 <d fs> g a | b8. cs'16 b8 <d b> cs' d' | \mBreak
            a8. b16 a8 <d a> fs d | \partial 8*5 <cs e>4. d4 \bar "||" | \partial 8 d8 | \grace { s16 } d4 d'8 cs' b a | \mBreak
            b8. cs'16 b8 <fs a>4 d8 | d4 <fs d'>8 <g cs'> b a | <d b>4. <cs a>4 g8 | fs8. g16 fs8 fs8_( g) a | \mBreak
            b8. cs'16 b8 b_( cs') d' | a8. b16 a8 <fs a> <e g> <d fs> | \partial 8*5 <cs e>4. d4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s8 | d4 s8 d4 s8 | d4 s8 d4 s8 | d4 s8 d4 s8 |
            s2. | d4 s2 | d4 s2 |
            d4 s2 | s2. | \once \stemDown d2 s4 |
            d4 s2 | s2.*2 | d4 s8 cs4 s8 |
            b,4 s8 d4 s8 | d4 s2 | s4. s4 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Dad -- dy | Nep -- tune one day To | Free -- dom did say, “If | ev -- er I liv’d up -- on |
        dry land, The | spot I should hit on Would | be lit -- tle Brit -- ain.” Says |
        Free -- dom, “Why that’s my own | is -- land.” | O | what a snug lit -- tle | 
        is -- _ _ land! A | right little, tight lit -- tle | is -- land! Seek | all the globe round, There’s |
        none can be found So | hap -- py as this lit -- tle | is -- land. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | d4 r8 d e fs | g4 r8 g a b | fs4 r8 fs e d |
            g,4. a,4 r8 | d4 r8 d e fs | g4 r8 g a b |
            fs4 r8 fs d b, | <a, g>4. <d fs>4 | r8 | \stemUp d4 b8 a g fs |
            g4. d4 r8 | d4 d,8 e,4 fs,8 | g,4. a, | b, a, |
            \stemNeutral g,4. g | fs d | <a, g>4. <d fs>4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*8 |
            s8 | \grace { \once \stemUp d,16( } d2.~)
            d4. 4 s8 | s2.*2 |
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