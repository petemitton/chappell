\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }

\header {
                                %       title = \markup {\medium \caps "Title."}
                                %       poet = ""
                                %       composer = ""

  meter = \markup {\italic "Boldly."}
                                %       arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new    Voice = "one"   \fixed c' {
            \voiceOne
            \partial 4 <b, d>4\f | <b, g> <c fs> <d g> <d a> | <d g b>2 <d fs a>4 <d fs b> | g fs e4. fs8 | <b, d>2. <b, d>4\p | \mBreak
            <b, g>4 <b, ds fs> <b, e g> <a, ds a> | b4. b8 <e a>4 <ds fs b> | <e g> <d! fs> e4. fs8 | \partial 2. d2. \bar "||" | \partial 4 d4 | \mBreak 
            a4.^\cresc g8 a4 <d b> | c'4. b8 a4 <d b> | <c c'>4 <d b> <e a> <c g> | <a, a>2 d8\ff e <d fs>4 | \mBreak
            <d g>2 <c e>8 fs <d g>4 | <c e a>2 <d fs>8 g <c d a>4 | <b, d b> <b, e g> <c e a> <c d fs> | \partial 2. <b, d g>2. \fine |
          }       % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*2 | b,2 c | s1 |
            s1 | <ds g>4 e s2 | s2 cs2 | d2. | s4 |
            d2. s4 | d2. s4 | s1*2 |
            s1*3 | s2. |
          } % end voice two
        >>
      } % end staff up
      \new Lyrics \lyricmode {        % verse one
        You4 | Gen -- tle -- men of | Eng2 -- land,4 That | live at home4. at8 | ease,2. How4 |
        lit4 -- tle do you | think4. up8 -- on4 The | dan -- gers of4. the8 | seas,2. | Give4 |
        ear4. un8 -- to4 the | mar4. -- i8 -- ners,4 And | they will plain -- ly | show,2 All4 the
        cares2 and4 the | fears2 When4 the | storm -- y winds do | blow.2.
      }       % end lyrics verse one
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s1 | s2 <d, d>4 <d, d>4 | <e, e>2 <c, c>2 | s4. g,8 g,4 s |
            s4 b, e, fs, | g,2 c4 b, | s1 | <d fs>2. | d8 e |
            fs4. e8 fs4 g | a4. g8 fs4 g | s1 | s2 <fs a>4 a |
            g2 g4 g | <a,, a,>2 s | <g, g>4 <e, e> <c, c> <d, d> | <g,, g,>2. | \fine
          } % end voice three
          \new    Voice {
            \voiceFour
            <g, g>4 | <g, g> <a, a> <b, b> <fs, fs> | <g, g>2 s2 | s1 | <g, d g>4. s4. g4 |
            e4 s2. | s1 | e2 <a, g> | s2. | d4 |
            d2. d4 | d2. g4 | <e g> <d fs> <c e> <e g> | <d fs>2 <d, d>4 <c, c> |
            <b,, b,>2 <c, c>4 <b,, b,> | s2 <d, d>4 <fs, fs> | s1 | s2. |
          }       % end voice four

        >>
      } % end staff down
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
  }
