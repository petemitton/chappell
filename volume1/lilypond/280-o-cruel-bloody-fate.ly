\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Smoothly and in moderate time."}
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
            \partial 4 bf,4 | c8( d) ef4 g8( f) g4 | bf2 s2 | s4 bf8( g) af( g) f( ef) | \mBreak
            <d f>2. bf,4 | c8( d) ef4 g8( f) g4 | s1 | ef'8( d') c'( bf) bf4. a!8 | \partial 2. bf2. \bar "||" | \mBreak
            \partial 4 ef'4 | d'4. c'8 d'8 ef' f'4 | bf4. bf8 <g bf>4 af8( g) | c'4. bf8 af( g) f( ef) | d2. af8 g | \mBreak
            af4 d' c' bf8 af | g( af) bf4 bf4.\fermata bf,8 | c4 af8 g f4. ef8 | \partial 2. ef2. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1 | s2 ef' | c'4 s2. |
            s1*2 | bf2. c'8( d') | ef2 ef | d2. |
            g4 | f2 bf | s1 | c2 c | s1 |
            s1 | s2 ef | c d | ef2. |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Ah,4 | cru4 -- el blood4 -- y4 | fate,2 What | canst4 thou now do |
        more?2. Ah4 | me,4 ’tis now too | late,2. Phi4 -- lan -- der to4. res8 -- tore,2. |
        Why4 | should4. the8 heav4 -- enly | pow’rs4. pers8 -- uade4 Poor4 | mor4. -- tals8 to4 be -- lieve2. That8 they |
        guard4 us here and8 re8 -- ward4 us there,4. Yet8 | all4 our joys4. de8 -- ceive.2. |
      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s4 | s1 | s2 c'4. d'8 | s1 |
            s2 bf,4 bf, | s1 | g4. af8 bf2 | c2 s2 | bf,2( \sdown bf4) \sup |
            s4 | s1*3 | bf1 |
            c'4 bf af g8 f | ef2 g,\fermata | s bf, | \sdown ef( \sup ef,4) |
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            <ef g>4 | <ef af>2 <ef bf> | <ef g> ef | <ef ef'> <ef bf> |
            bf2 s2 | <ef af> <ef bf> | ef d | s f | s2. |
            bf4 | bf2 af! | g ef | af f | bf bf, |
            ef1 | ef2 s | af, s | s2. | \fine
          } % end voice four
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
