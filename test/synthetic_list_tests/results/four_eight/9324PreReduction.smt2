
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
(assert (or (= l0 l3) (= l1 Nil) (is-Cons Nil) (= l3 l2)) )
(assert (= l0 Nil) )
(assert (= l1 l3) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(check-sat)
