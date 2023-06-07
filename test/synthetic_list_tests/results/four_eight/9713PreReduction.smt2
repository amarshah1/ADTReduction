
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
(assert (or (= l3 Nil) (= l2 l0)) )
(assert (or (= l0 Nil) (= l3 Nil) (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (= l2 l3)) )
(assert (or (= l2 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 Nil) (= l1 l3)) )
(check-sat)
