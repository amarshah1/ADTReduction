
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
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l3 l2) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l2 l0) (= l0 Nil) (= l1 Nil) (is-Nil l2)) )
(assert (= l3 l2) )
(assert (not (= l3 l1)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(check-sat)