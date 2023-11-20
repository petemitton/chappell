\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key f \major
}

mBreak = { \break }

\header {
                                %       title = \markup {\medium \caps "Title."}
                                %       poet = ""
                                %       composer = ""

%  meter = \markup {\italic "Cheerfully."}
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
            \partial 8 f8 | f8. g16 f8 c4 s8 | a4.~ a4 f8 | f8. g16 f8 c( d) ef | \mBreak
            d4.~ d4 bf,8 | bf,8.( c16) d e! f4 d8 | g8. f16 e d c4 <c c'>8 | a8. bf16 <c c'>8 <bf, e g>4 f8 | \mBreak
            \partial 8*5 f4.~ f4 \bar "||" | \partial 8 a8 | a8. bf16 c'8 c'8.( d'16) c'8 | a8. bf16 c'8 c'8.( bf16) a8 | bf4 s2 | \mBreak
             s2. | s4. a8( bf) c' | d'4 bf8 g( a) bf | c'4 a8 f( g) a | \mBreak
            <c g>4 e8 c( d) e | <c f>4 e8 d( e) f | g4.( e8 d) c | <c f>( g) <c a> <bf, e g>4 f8 | \partial 8*5 <a, f>4.~ <a, f>4 \fine | 
          }       % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s4. s4 c'8 | s2.*2 |
            s2.*2 | c4. s | c4 s2 |
            s2.*3 | s4 c'8 d'4 e'8 |
            f'4.~ f'4 c'8 | f'4 c'8  f4. | f e | e f |
            s2.*2 | d4 s2 | s2. | s4. s4 |
          } % end voice two
        >>
      } % end staff up
      \new Lyrics \lyricmode {        % verse one
        I8 | married4 a8 wife4 of8 | late,2 8 The | more’s8. my16 un8 -- hap4 -- py,8 |
        fate;2 8 I | took4 her16 for love,4 As8 | fan8. -- cy16 did me move,4 And8 | not8. for16 her8 world4 -- ly8 | 
        state.2 8 | For8 | qual4 -- ities8 rare,4 Few8 | with8. her16 com8 -- pare,4 Let8 | me4 do8 her4 no8 |
        wrong:2 8 I | must4 con8 -- fess,4 Her8 | chief4 a8 -- miss4 is8 | on4 -- ly8 this,4 As8 |
        some4 wives’8 is,4 She8 | can4 -- not8 rule4 her8 | tongue,8*5 She8 | can4 -- not8 rule4 her8 | tongue.8*5 |
      }       % end lyrics verse one
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s8 | s2.*3 |
            s2. | s4. a | s4. s4 e,8 | f,4 a,8 c4. |
            a4.~ a4 | s8 | s2.*3 |
            s4 c8 s4. | d4\rest d8\rest f,4. | bf, c | a, d, |
            e,4.~ e,8 f, g, | a,4. bf, | bf, c | a,4 f,8 c4. | s f,4 | \fine
          } % end voice three
          \new    Voice {
            \voiceFour
            d8\rest | <f a>4. <f a> | <f c'>~ <f c'>4 d8\rest | <f a>4. <f a> |
            <bf, f>4.~ <bf, f> | g d | e~ e4 s8 | s2. |
            f4. f,4 | d8\rest | <f c'>4. <f a> | <f c'> <f a> | <f d'> <f bf> |
            <f a>4 s8 f4 d8\rest | s2.*3 |
            s2.*4 | f4. s4 |
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

}%end score
