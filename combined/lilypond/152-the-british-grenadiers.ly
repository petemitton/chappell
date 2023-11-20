\version "2.22.0"
\language "english"

global = {
  \time 2/2
  \key g \major
}

mBreak = {\break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "March."}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 4 d4 | <b, g>4 d4 <d g>4 <fs a>4 | <g b>2 <fs a>4 b8( c'8) | <d g d'>4 g4 <c fs b>8( a8) g8( fs8) | \mBreak
            <b, g>2. d4 | <b, g>4 d4 <b, g>4 <e a>4 | <ds fs b>2 <e a>4 c'8( d'8) | <d g b d'>4 g4 <c fs b>8( a8) g8( fs8) | \partial 2. <b, g>2. |
            \mBreak \repeat volta 2 {
            \partial 4 <g c' e'>4 | d'4. e'8 d'4 <d a c'>4 | b4.( c'8) d'4 <f! g d'>4 | <e c' e'>4 e'4 <e d'>8( c'8) b8( a8) | <d g>2( <d fs>4) d4 |
            \mBreak
            <d g>4 <c d>4 <b, g>4 <d a>4 | <d gs b>2 <c a>4 b8 c'8 | <d g! b d'>4 g4^\markup {\italic "Repeat the last part in Chorus." } <c fs b>8( a8) g8( f8) | \partial 2. <b, g>2. }
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Some4 talk4 of4 A4 -- lex4 an2 -- der,4 And4 some4 of4 Her4 cu4
        -les,2. Of4 Hec4 -- tor4 and4 Ly4 -- san2 -- der,4 And4 such4 great4 names4 as4 these;2.
        But4 all4. the8 world’s4 brave4 he2 roes4 There’s none4 that4 can4 com4 -- pare,2. With8 a8
        tow,4 row,4 row,4 row, row,2 row,4 To8 the8  Bri4 -- tish4 Gre4 -- na4 -- dier2.
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | g,2 <b, g>4 <d a>4 | <g b>2 <d a>2 | <b, g>4 r4 d4 r4 |
            g4 g,8 g,8 g,4 r4 | g,2 e4 c4 | b,2 c4 b,8 a,8 | d,4 r4 d4 r4 | g,4 g,8 g,8 g,4 |
            c4 | d2. fs4 | g2. b4 | c'2 <c a>2 | <d b>2_( <d a>4) <c fs a>4 |
            <b, g>4 <a, fs>4 g,4 f,!4 | e,2 a,2 | d,2 d2 | g,2. |
          } % end voice three

          \new 	Voice {
            \voiceFour
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score