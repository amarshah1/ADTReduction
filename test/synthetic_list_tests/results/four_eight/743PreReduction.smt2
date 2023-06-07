
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
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil l3) (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l1 l2)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l1)) )
(assert (or (is-Nil l0) (= l0 Nil)) )
(check-sat)
