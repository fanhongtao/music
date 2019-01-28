\paper  {
  #(define fonts
    (make-pango-font-tree
       "楷体" ;; "Century Schoolbook L"
       "sans-serif" "monospace" (/ staff-height (* 20 pt))))
}

% "sans-serif" "monospace" 来自 font.scm
% (/ staff-height (* 20 pt)) 来自 paper.scm