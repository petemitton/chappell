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

%  meter = \markup {\italic "Rather slow."}
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
            \partial 8 f8 | f4 f8 g4 a8 | f8( e) f e4. | d c4( f8) | \mBreak
            f4 e8 f4 f8 | f4 f8 g4 <f a>8 | <d f>8( e) f <cs e>4. | d4. c!4( <c f>8) | <c f>4 e8 <c f>4. \bar "||" | \mBreak
            a4\f b!8 c'( d') c' | d'( e') f' < c' e'> ( d') c' | <d a d'>4. a8 b! c' | <d g c'>4 b!8 <e c'>4 g8\p | \mBreak
            e4 f8 g8.( a16) g8 | c'8.( bf!16) a8 bf4. | <c a>4. g4 f8 | \partial 8*5 f4 e8 <c f>4 \fine |
          }       % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*2 | s4. s4 c8 |
            s2.*5 |
            <d f>4. <e a> | <f a> a | s2.*2 |
            c2. | c4 c8 bf,4 c8 | s4. d | c s4 |
          } % end voice two
        >>
      } % end staff up
      \new Lyrics \lyricmode {        % verse one
        Sweet8 | Nan4 -- cy,8 I4 do8 | love4 thee8 dear,4 Be8 -- lieve4. me |
        if4 thou8 can,4 And8 | shall,4 I8 firm4 -- ly8 | do4 de8 -- clare,4. | While4. thy4. | name4 is8 Nan.4 I8 |
        can4 -- not8 court4 with8 | el4 -- o8 -- quence4 As8 | ma4. -- ny | cour4 -- tiers8 do,4 But8 |
        I4 do8 love4 en8 -- tire4 -- ly8 thee4. | Then4. love4 me8 | dear4 -- ly,8 too.4 |
      }       % end lyrics verse one
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            r8 | a4. bf4 c'8 | a4 c'8 g4. | bf a4 s8 |
            g4. a4 r8 | a4. bf4 a8 | a4. a | f4. f4 s8 | g4. a |
            s2. | <d, d>4. <a, c e> | s2.*2 |
            c4 d8 e8. f16 e8 | ef8. g16 fs8 g4. | a bf | g a4 | \fine
          } % end voice three
          \new    Voice {
            \voiceFour
            s8 | f,2.( | f,4) a,8 c4. | e f4 a,8 |
            c4. f,4 r8 | d2. | d,4. a, | bf, f,4 a,8 | c4. f |
            <d f a>4. <a, e a> | s2. | <f, a, d f>2. | <g, d g>4. <c e g> |
            c2.~ | c4 d8 g,4 e!8 | f4. bf, | c f,4 |
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
