\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key f \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = {}

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Slow."}
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
            \partial 4. g8\noBeam a8 c'8 | f'4 c'4 d'8 bf8 | c'4.  f8\noBeam a8 c'8 | f'4 a4 bf8 g8 | f4. f8\noBeam a8 c'8 | \mBreak
            f'4 c'4 d'8 bf8 | c'4. f8\noBeam a8 c'8 | f'4 a4 bf8 g8 | \partial 4. f4. \bar "||" | \partial 4. <c g>8\noBeam <c a>8 <c f>8 | \mBreak
            <c g>4 a8( bf16 c'16) bf8 a8 | g4. g8 a8 f8 | g4 c'4 d'8 b!8 | c'4. c'8 bf!8 a8 | \mBreak
            bf4 a8_( bf16 c'16) <d f bf>8 <c f a>8 | <c e g>4. c8 <c f>8 <c e g>8 | <c f a>4 <c f c'>4 a8 g8 | \partial 4. <a, f>4. \fine | \mBreak
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 f4 | f2 f4 | f4 s4 f4 | f2 d8 e8 | f4. s8 f4 |
            f2 f4 | f4 s4 f4 | f2 d8 e8 | f4. | s4. |
            s4 c4 d4 | e4. c8 c8 c8 | c4 g4 f4 | e4 s8 c8 e8 f8 |
            g4 f4 s4 | s2. | s2 <bf, e>4 | s4.
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Was8 ever4 | knight4 for4 la8 -- dy’s8 | sake4. So8 toss’d8 in8 | love4 as4 I,8 Sir8 | Guy!4. For8 16 Phillis8 16 |
        fair,4 that4 la8 -- dy8 | bright4. As8 e8 -- ver8 | man4 be4 -- held8 with8 | eye.4. | She8 gave8 me8 |
        leave4 my4 -- self8 to8 | try4. The8 va8 -- liant8 knight4 with4 shield8 and8 | spear,4. Ere8 that8 her8 |
        love4 she4 would8 grant8 | me,4. Which8 made8 me8 | ven4 -- ture4 far8 and8 | near.4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
          } % end voice three

          \new 	Voice {
            \voiceFour
            r8 f4 | a4. f8 bf8 g8 | a4( f8) r8 f4 | d4. d8\noBeam \sup g,8 c8 | f,4^( \sdown f8)  r8 f4 |
            a4. f8\noBeam bf8 g8 | a4( f8) r8 f4 | \sup d4. d8\noBeam g,8 c8 | f,4^( \sdown f8) | e8 f8 d8 |
            e4 f4 \sup bf,4 | c4 c,8\noBeam \sdown e8 f8 d8 | e4. e8 g8 \sup g,8 | c4 c,8\noBeam \sdown a8 <g bf!>8 <f c'>8 |
            <e c'>4 <f c'>4 bf,8 f8 | \sup c4 c,8\noBeam \sdown bf8 a8 g8 | f4 \sup a,4 c4 | \sdown f4 \sup f,8 | \fine
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