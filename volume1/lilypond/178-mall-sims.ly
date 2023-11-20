\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key d \minor
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Pompously."}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            <c e g>2. <a d' f'>4 | <a cs' e>4 s2 <cs' a'>4 | g'4 f'4 e'4 d'4 | <a cs'>2 a2 | f'4( e'8 d'8 e'4) a4 | \mBreak
            g4 f4 e4 <cs a>4 | b!8 cs'8 d'4 d'4 cs'4 | <f d'>2 <d d'>2 \bar "||" |
            f'8.\p g'16 a'4 e'8. f'16 g'4 | d'8 f'8 e'8 d'8 cs'4 a4 | \mBreak
            f8.\f g16 a4 e8. f16 g4 | d8 e16 f16 e8 d8 cs8 a,8 a,4 | d'8\p e'8 f'8 g'8 a'8 f'8 d'4 |
            d8\f e8 f8 g8 a8 f8 d4 | f'8\p g'8 a'8 bf'8 c''8 a'8  f'4 | \mBreak
            f8\f g8 a8 bf8 c'8 a8 f4 | f'2 <a e'>4 <a e'>4 | <d f d'>4 <d f d'>4 <e a cs'>4 a4 | b!8 cs'8  d'4 d'4 cs'4 | <f d'>2 <d d'>2 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1 | s4 a2 s4 | d'2 <g bf>2 | e2 s2 | a2 a4 s4 |
            s1 | e4 <d a>4 <e a>2 | s1 | <f a c'>2 <c g c'>2 | a4 <g bf>4 <e a>4 s4 |
            s1*2 | bf2 <a d' f'>4 s4 | s1 | d'2 <c' f' a'>4 s4 |
            s1 | <f a>2 s2 | s1 | e4 <d a>4 <e a>2 | s1 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one

      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            \sup <d, d>2 <f, f>2 | \sdown <a, a>2 <f, f>2 | <bf, bf>2 <g, g>2 | <a, a>2 <a, a>2 | d'2^( cs'4) <a, a>4 |
            <g, g>4 <f, f>4 <e, e>4 <a, a>4 | <g, g>4 <f, f>4 <a, a>2 | <d, d>2 <d, d>2 | s1 | f4 g4 a2 |
            f8. g16 a4 e8. f16 g4 | d8 e16 f16 e8 d8 cs8 a,8 a,4 | <g d'>2 <d a d'>4 r4 | d8 e8 f8 g8 a8 f8 d4 | <bf f'>2 <f c' f'>4 s4 |
            f8 g8 a8 bf8 c'8 a8 f4 | <d d'>2 <c c'>4 <c c'>4 | <bf, bf>4 <bf, bf>4 <a, a>4 <a, a>4 | <g, g>4 <f, f>4 <a, a>2 | <d, d>2 <d, d>2 \fine |
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