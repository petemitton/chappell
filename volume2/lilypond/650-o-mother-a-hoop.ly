\version "2.24"
\language "english"

global = {
  \time 6/8
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
            e8 fs g <ds fs> g fs | e( g) <c fs> ds4. | <b, d! g>4.\f a8. g16 <a, c fs>8 |  <b, g>2. | \mBreak
            e8 fs g <ds fs>( g) fs | e g <c fs> <b, ds>4. | <b, d! g>4.\f a8. g16 <c d e>8 | \partial 8*5 <b, d g>4.~4 \bar "||" | \mBreak
            \partial 8 d8\p | g8. a16 b8 <d b> c' d' | fs8. g16 a8 <fs a>( g) fs | g8. a16 b8 <d b> c' d' | \mBreak
            fs8. g16 a8 a( g) fs | <b, e g>4. fs8. g16 e8 | ds4 e8 b,4. | <e g e'>4.\ff fs8. e16 ds8 | \partial 2. e2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s2.*2 | s4. <c e>4 s8 | s2. |
            s2.*2 | s4. <c e>4 s8 | s4. s4 |
            s8 | b,4 s2 | d4 s2 | b,4 s2 |
            d4 s2 | s4. ds4 s8 | s2. | s4. c4 s8 | 
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        What a fine thing have I | seen to -- day: | O Moth -- er, a | hoop! |
        I must have one, you | can -- not say nay; | O Moth -- er, a | hoop! |
        For | hus -- bands are got -- ten this | way to be sure, Men’s | eyes and men’s hearts they so |
        neat -- ly al -- "lure;  .  ." _ | O Mo -- ther, a hoop, a hoop! | O Mo -- ther, a | hoop! |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            g4 d8\rest a4 d8\rest | g4 a8 <fs b>4. | g,4. c4 d8 | g,4. <ds, ds>\p |
            g4 d8\rest a4 d8\rest | g4 a8 fs4. | g,4. c4 d8 | g,4.~4 |
            d8\rest | s4. g,4. | d d, | s4. g, | 
            d4. ds | s4. a4 g8 | a4 b8 fs4. | <c, c>4. s4 a8 | g2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            e4 s8 b,4 s8 | c4 a,8 b,4. | s2.*2 |
            <e, e>4 s8 b,4 s8 | c4 a,8 b,4. | s2. | s4. s4 |
            s8 | g4. s | s2. | g4. s4. |
            s2. | e4. b,4 c8 | fs,4 g,8 ds,4. | s4. a,4 b,8 | e,2. |
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