
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
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Nil l1) (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l3 l3) (is-Cons Nil)) )
(assert (and (= l0 l2) (= l2 Nil) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(check-sat)
