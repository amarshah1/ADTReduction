
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
(assert (or (= l2 Nil) (is-Nil Nil) (= l1 l1) (= l3 l3)) )
(assert (is-Nil l1) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil l2) (= l0 l3)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 l3)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l1 l3) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(check-sat)
