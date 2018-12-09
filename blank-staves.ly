\version "2.18.2"

% http://lilypond.org/doc/v2.18/Documentation/snippets/staff-notation#staff-notation-creating-blank-staves

#(set-global-staff-size 20)

\score {
  {
    \repeat unfold 16 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  line-width = 7.5\in
  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
  oddFooterMarkup=##t
}
