
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l3 l0) (= l2 l2) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 l0) (is-Cons Nil) (is-Cons l2)) )
(assert (not (is-Nil l1)) )
(assert (is-Cons Nil) )
(check-sat)
