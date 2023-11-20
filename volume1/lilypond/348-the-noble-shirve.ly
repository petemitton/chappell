\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
lyricsAbove = \lyricmode { " " " " " " " " " " " " Down4 a-8  down,4 Hey8 down4 a-8 down.4 8
                           " " " " " " " " Down a -- down, a down-a,
                           " " " " " " " "
                           " " " " " " " " " " Down a-down, a -- down-a.
                         }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time, and smoothly."}
                                % arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Lyrics = "above" { s8 | s1*4 }
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\relative c'' {
            \voiceOne
            \partial 8 b16_( c) | d4 e8 d4 d8 | <e, g c>4.^( <d b'>4.) | <c fs a>4 <d b'>8 <b g'>4 <d b'>8 | <c fs a>4 <d b'>8 <b g'>4 s8 | \mBreak
            <d b' d>4 e'8 <d, a' d>4 d'8 | <e, a c>4.^( <gs b>4.) | <c, a'>4 b'8 <c, fs! a>4 g'8 | \partial 8*5 <b, g'>4.~ <b g'>4 \bar "||" | \mBreak
            \partial 8 a'16^\f_( b) | s4. s4 g8 | s4. s4 g8 | s2.*2 | \mBreak
            c4.^\p e,4 fs8 | <b, g'>4_( a'8) <g b>4 c8 | \stemDown <b d>4^( \stemUp <g b>8) <fs d'>4 <d b'>8 | \partial 8*5 <c fs a>4.^( <b g'>4) \fine |
          }	% end voice one
          \new Voice  \relative c'' {
            \voiceTwo
            s8 | <g b>4. <fs a>4. | s2.*2 | s4. s4  b16 c |
            s2.*3 | s8*5 |
            s8 | <g c>4 d'8 c4 s8 | <g c>4 d'8 c4 s8 | <g c>4 <c e>8 <g d'>4 <e c'>8 | <fs d'>4.^( <g b>) |
            c,2. | s2.*2 | s8*5 |
          } % end voice two
        >>
      } % end staff up
      %\context Lyrics = "above" \lyricsto "one" {\lyricmode { 8 | 2.*2 | Down }}
      \new Lyrics \lyricmode {	% verse one
        There8 | was4 a8 maid4 came8 | out4 of8 Kent,4. | Dain4 -- ty8 love,4. | Dain4 -- ty8 love,4 There8 |
        was4 a8 maid4 came8 | out8 of4 Kent,4. | Dan4. -- ger4 -- ous8 | be.8*5 |
        There8 | was8 a4 maid4 came8 | out8 of4 Kent,4 Fair,8 | pro4 -- per,8 small4 and8 | gent4. As4. |
        e-ver4. on4 the8 | \lalign ground4. went4 For8 | so4. should4 it8 |\override LyricText.self-alignment-X = #LEFT "be.     .     ."8*5 |
      }	% end lyrics verse one
      %\context Lyrics = "above" \lyricmode "one" { 8 | 2.*2 | Down }
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            d8\rest | g2. | g | d4.^( g4) g,8 | d4.^( g4) d8\rest |
            g4. f! | e2. | a,4. d | g,4.~ g,4 |
            d8\rest | <e c'>4.~ <e c'>4 <g b>8 | <e c'>4.~ <e c'>4 <g b>8 | <e c'>4 <c' e'>8 <g d'>4 <e c'>8 | <d a>4. <g b> | 
            a2. | e | d4. d | d g4 | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
          }	% end voice four

        >>
      } % end staff down
      \new Lyrics \with {alignAboveContext = "up" }
      \lyricsto "one" {  \lyricsAbove }
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
                                %\override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score
