
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
(assert (and (= l1 l1) (= l0 l3) (= l0 l1)) )
(assert (not (= l1 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 l3) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l3 l2)) )
(assert (is-Cons Nil) )
(check-sat)
