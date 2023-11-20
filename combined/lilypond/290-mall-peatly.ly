\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key a \minor
}

mBreak = { \break }

\header {
                                %       title = \markup {\medium \caps "Title."}
                                %       poet = ""
                                %       composer = ""

%  meter = \markup {\italic "Gaily."}
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
            <c a>4._> <c e c'>_> | <c e>4 f8 g f e | <c a>4 b8 <f c'> d' c' | <f b>8( a) <e gs> <e a>4. | \mBreak
            <c a>4. <c e c'> | <c e>4 f8 g f e | <c a>4 b8 <f c'>( d') c' | \partial 8*5 <f b>( a) <e gs> <e a>4 \bar ".." | \mBreak
            \partial 8 <f a>16  b | c'8. d'16 c'8 g e c | s2. | d'8.( e'16) d'8 d'( b) g | <g d'>4.~ <g d'>4 s8 | \mBreak
            <f a>4 s8 s4. | s4 e8 gs4 e8 | d' e' c' <gs b>4 a8 | a2. \fine |
          }       % end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*4 |
            s2.*3 | s8*5 |
            s8 | e4 s8 s4. | c'4.~ c'4 b16 c' | g4 s8 g4 s8 | s4. s4 <e c'>16 b | 
            s4 b8 <a c'>4 d'8 | <gs e'>4 s8 s4. | e4. s | s2. |
          } % end voice to
        >>
      } % end staff up
      \new Lyrics \lyricmode {        % verse one
        One4. ho4 -- li8 -- day,4 last8 sum -- mer, From | four4 to8 sev8 -- en, by | Croy4 -- don8 chimes,4. |
        Three4. lass4 -- es8 | to4 -- ping8 rum8 -- mers Were | set4 a8 pra4 -- ting8 | of4 the8 times.4 |
        A8 | wife4 call’d8 Joan of the | Mill,8*5 And16 a16 | maid4 they8 call’d4 brown8 | Nell:8*5 Take8 |
        off4 your8 glass,4 said8 | Gillian4 of8 Croydon,4 A8 | health8 to our Mas4 -- ter8 Will.2. |
      }       % end lyrics verse one
      \new   Staff = "down" {
        <<
          \clef bass
         \global
          \new Voice {
            <a, e a>4. <a, e a> | <c g>2. | f4. <f a> | <d d'>4 <e b>8 <a c'>4. | 
            <a, e a>4. <a, e a> | <c g>2. | f4. <f a> | <d d'>4 <e b>8 <a c'>4 |
            <f a>8 | <c g>4. <c e g> | <c e g>4.~ <c e g>4 <c e g>8 | <b, d g>4. <b, g> | <b, g>4.~ <b, g>4 <c g>8 |
            <f a>4. <f a> | <e b> <e, e>4 e8 | \stemUp b c' a \stemDown <e d'>4. | <a c'>2. | \fine
          } % end voice three
          \new    Voice {
            \voiceFour
            s2.*7 | s8*5 |
            s8 | s2.*6 | e4. s4. | s2. |
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
