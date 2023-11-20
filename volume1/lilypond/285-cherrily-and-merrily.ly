\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key ef \major
}

mBreak = { \break }

\header {
                                %       title = \markup {\medium \caps "Title."}
                                %       poet = ""
                                %       composer = ""

%  meter = \markup {\italic ""}
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
            \partial 4 bf8 af | <bf, g>4( ef) f8( g) | <c f>4( c) d | ef2 ef4 | g'2 f'4 | \mBreak
            s2. | <g c'>8( d' c'4) g | bf4.( d'8) \noBeam <ef a! c'>8( d') | <d bf>2 <d f bf>4 | bf4.( c'8) \noBeam d'( ef') | c'4( bf) g | \mBreak
            f4.( g8) \noBeam <ef af>8( bf) | <d af c'>2 <d af bf>4 | <ef bf>4( g) ef | <c f>8( g f4) c | ef4.( g8) \noBeam <d f>8( g) | \partial 2 ef2 \fine |
          }       % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            <bf, f>4 | s2.*4 |
            f'4( d') bf | s2. | d4 s2 | s2. | ef2. | ef2. |
            c4 s2 | s2.*4 | s2 |
          } % end voice two
        >>
      } % end staff up
      \new Lyrics \lyricmode {        % verse one
        Sweet4 | day,2 so4 | cool,2 so4 | calm,2 so4 | bright,2 The4 |
        bri2 -- dal4 | of2 the4 | earth2 and4 | sky,2 The4 | dews2 shall4 | weep2 thy4 |
        fall2 to4 -- night,2 For4 | thou2 with4 | all2 thy4 | sweets,2 must4 | die.2 |
      }       % end lyrics verse one
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d4 | s2. | af,2 af4 | g2 s4 | s2. |
            s2.*6 |
            s2. | f,2 f,4 | g,2 c4 | af,2. | g2 af4 | g2 | \fine
          } % end voice three
          \new    Voice {
            \voiceFour
            s4 | ef2. | s2 bf,4 | c2 <c g>4 | <c ef a!>2 <c ef a>4 |
            <d f bf>2 g4 | ef2. | f2 f4 | bf2 bf8 af! | g2. | af4 g ef |
            af2 af4 | s2.*3 | bf,2 bf,4 | ef2 |
          }       % end voice four
        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        \override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout
  \midi{}

}%end score
