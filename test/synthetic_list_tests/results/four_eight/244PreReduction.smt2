
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
(assert (or (is-Cons Nil) (= l3 l2)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (= l3 l3) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 l1) (is-Cons Nil) (is-Cons Nil) (is-Nil l3)) )
(check-sat)
