
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
(assert (is-Cons Nil) )
(assert (and (= l1 l3) (= l2 Nil) (= l2 l3)) )
(assert (= l2 Nil) )
(assert (and (= l1 Nil) (= l1 Nil) (= l0 l3)) )
(assert (is-Nil l1) )
(assert (is-Nil l1) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l1 Nil) (= l1 l2)) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)