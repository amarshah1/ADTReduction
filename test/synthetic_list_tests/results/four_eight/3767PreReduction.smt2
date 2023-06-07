
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
(assert (= l2 l3) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l3 Nil) (= l3 l1)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l1 l1) (= l1 l1) (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (is-Nil l3)) )
(check-sat)
